# Save System and Progress: Decisions

This lists the decisions made while building saving, Continue, Retry Last Choice, and the Progress
screen, why each was made, and what it means for the rest of the team. The "Rules for writers"
section at the end is the short version for anyone editing `storyData.gd`.

## Saving

### Two files: the save and the progress
| File | What it holds | When it resets |
|---|---|---|
| `user://savegame.cfg` | Where you are in this playthrough | New Game replaces it |
| `user://progress.cfg` | Lines you've seen, options you've picked, endings you've found, across every playthrough | Never (delete the file by hand to reset while testing) |

**Why:** if both were in one file, starting a new game would wipe completion progress.
**Impact:** to reset everything while testing, delete both files (Godot: Project → Open User Data Folder).

### Stored with Godot's `ConfigFile`, in `user://`
- **Why ConfigFile:** readable in a text editor, supports Godot types like `Vector2` (character
  positions) directly, and every read has a default value, so older saves don't break when a field is added.
- **Why not `res://`:** the project folder becomes read-only once the game is exported.
- **Why not a `.tres` resource:** loading a `.tres` can run code embedded in it, so a save file shared online could be malicious.
- **Impact:** any new field added to the save should be read with a sensible default (`config.get_value(section, key, default)`).

### Autosave at every step where the story waits
`StoryManager.play_node` saves on `dialogue`, `choice` and `pause` entries. It doesn't save on
`background` and `character` entries, because those move on immediately. There's one save slot
and no manual saving.
**Why:** players never lose progress, and no save menu has to be built.
**Impact:** every story entry goes through `play_node`, so new entry types that wait for the
player should be added to `SAVE_TYPES` in `storyManager.gd`.

### Saving what's on screen, not just the current line
A save holds the current entry id, **the background, and the characters on screen**.
**Why:** backgrounds and characters are set by earlier entries. Restoring only the line would
show it on an empty screen.
**Impact:** StoryManager keeps track of `current_background` and `current_characters`. It
clears the character list when the background changes, **matching what `world.gd` does**. If
`world.gd` changes when characters are removed, update `change_background` in StoryManager to match.

### Who does what
- **`SaveManager`** (new autoload, `Scripts/saveManager.gd`) handles the files: writing, reading, deleting.
- **`StoryManager`** decides *what* to save and *when*.
- **`main.gd`** decides, when the story scene loads, whether to resume or start new.

**Why:** switching the file format later only means changing SaveManager.

### Handing a saved state to the story scene: `SaveManager.pending_load`
Continue and Retry Last Choice put the state to resume from in `SaveManager.pending_load`, then
change to `Main.tscn`. `main.gd` reads it in `_ready()`, then clears it. If it's empty, a new story starts.
**Why:** after a scene change, the new scene isn't loaded yet, so the button can't restore anything directly.

### Protection against out-of-date saves
- A save pointing at a story entry that no longer exists is ignored, and a new game starts.
- Characters whose art file no longer exists are skipped when restoring.

**Why:** the team renames story entries (for example, `zach0` became `zach_act1_scene1_0`).
**Impact:** renaming entries won't crash anyone's game, but a save sitting on a renamed line starts over.

## Retry Last Choice

### The last choice is remembered and saved
Whenever a choice appears, StoryManager stores a snapshot: the choice entry, the background and
the characters (`last_choice`). The snapshot is included in every autosave, so it survives quitting and Continue.

### Endings leave a checkpoint instead of deleting the save
When an ending is reached, the save is **replaced with the last-choice snapshot** and marked
`checkpoint = true`. The start screen then labels its top button **"Retry Last Choice"** instead of "Continue".
**Why:** players can close the game on the Game Over screen and still come back to try a different
option, which matters for finding every ending.
**Impact:** after finishing, the start screen always offers to go back to the last choice. If Act 2
should continue from Act 1 instead, that's the place to change it (`end_game` in `storyManager.gd`).

### Game Over screen
It offers **Retry Last Choice**, **Restart from Beginning** and **Main Menu**. Retry is hidden if no choice was ever made.

## Endings and progress

### What counts as an ending
**An ending is any story line whose `"next"` leads into an `end_game` entry.** There are three right now:

| Ending id (the line before the end) | Name |
|---|---|
| `zach_act1_scene1_7` | Sneak out the back door |
| `portal_walk_away` | Walk away |
| `end_act1` | Step through the portal |

- **Total:** the Progress screen counts the lines that lead into an `end_game` entry.
- **Name:** the text of the **last option the player picked** before reaching it, saved when the ending is found.
- **Why:** all three endings share a single `end_game` entry, so the end entry itself couldn't tell them apart.

**Impact and things to know:**
- **Renaming one of those lines** makes players' record of that ending show as not found.
- **Rewording an option** doesn't rename endings already found. The old name stays.
- **If two routes lead to the same final line,** the ending is named after whichever option the player picked first.
- **A choice option that goes straight to `end_game`** (with no line in between) isn't counted as an ending. Put a line before the end.
- **"End Act 1" currently counts as an ending.** That's undecided. Once Act 2 exists, `end_act1` should probably continue into it instead.

### Choices are recorded by choice entry plus destination
A picked option is stored as `"choice_entry>where_it_leads"`, for example `"sneak_out>window_background"`.
**Why:** option text can change, so the id has to come from the story structure.
**Impact:** renaming a choice entry, or the entry an option leads to, makes that option show as not explored.

### Lines seen are recorded too
Every story entry the player reaches is recorded. The Progress screen uses this to hide a choice's
name until the player has reached it. The same data could later be used for a full branch map.

### The Progress screen is built from the story data
- Choices and endings appear in the order they're written in `storyData.gd`.
- **Choice headings come from the choice entry's id:** `sneak_out` shows as "Choice: Sneak Out".
- Anything not found yet shows as numbered dashes.

**Impact:** new choices and endings appear on their own, with no code changes. Choice entry ids are now visible to players.

## Earlier decisions this depends on
- **One project-wide theme** (`Themes/mainTheme.tres`, set in Project Settings). Every screen gets the same look automatically.
- **The game opens on `StartScreen.tscn`.** "New Game" goes to `Main.tscn`.
- **`StoryManager.play_next_node` checks that the current entry exists**, and **`play_node` reports missing entries** with
  `push_error("Story node not found: ...")`. A broken `"next"` shows an error instead of freezing silently.
- **Naming:** scripts in camelCase (`saveManager.gd`); autoloads in PascalCase (`SaveManager`); the menu button theme
  style is `MainMenuButton`, not `MenuButton`, because Godot already has a node type called `MenuButton`.

## Still open
- **In-story menu:** needs `inputManager.gd` to use `_unhandled_input` instead of `_input`, otherwise clicking any
  in-story button also advances the dialog. It also needs the dialog box's Panel, RichTextLabel and NamePlate
  set to Mouse Filter: Ignore. It changes how input works for the whole game, so it needs team agreement.
- **Whether "End Act 1" counts as an ending.**
- **A confirmation before New Game replaces an existing save.**
- **Pause entries** (`"type": "pause"`) hide the dialog box until the next click, and they're kept as designed.
  Players get no hint that the game is waiting.

## Rules for writers (`storyData.gd`)
1. **Every ending needs a line before the end entry**, and that line's id is the ending's permanent id. Don't rename it after release.
2. **The option picked last on the way to an ending becomes the ending's name**, so word those options so they make sense as titles.
3. **Choice entry ids are shown to players** as "Choice: …", so name them as readable words joined by underscores (`go_through_portal`).
4. **Renaming choice entries or option destinations** resets players' progress for those options.
5. **Any `"next"` must point to an entry that exists**, or the game shows "Story node not found" and stops at that line.
