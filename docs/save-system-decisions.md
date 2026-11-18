# Save System: Decisions

This lists the decisions made while building saving, Continue, Retry Last Choice and the Story Map, why each was
made, and what it means for the rest of the team. The "Rules for writers" section at the end is the
short version for anyone editing the scene files (`scene1.gd`, `scene2.gd`, ...).

Story flags (story entries that read earlier choices) are being worked on separately and aren't included here.

## Saving

### One save file
`user://savegame.cfg` holds where you are in this playthrough. New Game replaces it.
**Impact:** to reset while testing, delete the file (Godot: Project → Open User Data Folder).

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
- **`SaveManager`** (new autoload, `Scripts/saveManager.gd`) handles the file: writing, reading, deleting.
- **`StoryManager`** decides *what* to save and *when*.
- **`main.gd`** decides, when the story scene loads, whether to resume or start new.

**Why:** switching the file format later only means changing SaveManager.

### Handing a saved state to the story scene: `SaveManager.pending_load`
Continue and Retry Last Choice put the state to resume from in `SaveManager.pending_load`, then
change to `Main.tscn`. `main.gd` reads it in `_ready()`, then clears it. If it's empty, a new story starts.
**Why:** after a scene change, the new scene isn't loaded yet, so the button can't restore anything directly.

### Protection against out-of-date and damaged saves
- A save pointing at a story entry that no longer exists is ignored, and a new game starts.
- Characters and backgrounds whose art file no longer exists are skipped when restoring.
- **A damaged save never crashes the game** (Test Plan R6). `SaveManager.load_game()` returns `{}` for a file it
  can't read or one without a story position, and the start screen then hides Continue. Fields with the wrong
  type are dropped (`clean_state`), so a bad character entry or last choice is skipped and the rest still loads.

**Why:** the team renames story entries (for example, `zach0` became `zach_act1_scene1_0`).
**Impact:** renaming entries won't crash anyone's game, but a save sitting on a renamed line starts over.

## Retry Last Choice

### The last choice is remembered and saved
Whenever a choice appears, StoryManager stores a snapshot: the choice entry, the background and
the characters (`last_choice`). The snapshot is included in every autosave, so it survives quitting and Continue.

### Endings leave a checkpoint instead of deleting the save
When an ending is reached, the save is **replaced with the last-choice snapshot** and marked
`checkpoint = true`. The start screen then labels its top button **"Retry Last Choice"** instead of "Continue".
**Why:** players can close the game on the Game Over screen and still come back to try a different option.
**Impact:** after finishing, the start screen always offers to go back to the last choice. If that
should change, it's in `end_game` in `storyManager.gd`.

### Game Over screen
It offers **Retry Last Choice**, **Restart from Beginning** and **Main Menu**. Retry is hidden if no choice was ever made.

## Story Map

The start screen's **Story Map** button opens a branching tree of the story (Test Plan R11). Choices are
cards listing their options, lines run from each option to where it leads, and endings are the rounded
cards at the tips. Anything not found yet shows as "???", and the header counts choices explored and
endings found.

### Built from the story data
`Scripts/storyMap.gd` (`StoryMap.build`) reads the story and works out which choices and endings exist and
what each option leads to, following `"next"` through dialogue and art. New choices and endings appear on
the map automatically. Only story reachable from the start counts, so cut or unfinished content doesn't
inflate the totals.

### Copies of the same choice are one entry: the `"map"` tag
The story repeats some choices on different paths (for example "Ex or Friends" after either wig option).
Giving those copies the same `"map"` name makes the map show them as **one** choice, and an option found on
either path counts for both. The name is also the choice's title on the map; without one, the title comes
from the id (`sneak_out` → "Sneak Out").
**Why a tag instead of story flags:** it needs one optional line per copy and no change to how the story
is structured. If the team adopts story flags later, the copies merge into single entries and the tags
can be removed.

### Endings are named with an `"ending"` field
An ending is the last line before `end_game`. Its `"ending"` field is its title on the map
("Caught by Dad"). Without one, the title comes from the id.

### Progress is kept separately from the save
`user://progress.cfg` records the choices reached, options picked (by their button text, so copies match)
and endings found. **New Game never clears it**, so the map fills up across playthroughs. Like the save, a
damaged progress file is skipped instead of crashing. `SaveManager.delete_progress()` resets it (there's
no button for that yet).
**Impact:** renaming a `"map"` name, an option's text or an ending's id makes that part of the map show
as not found again for players who already found it.

### Moving around the map
The story runs left to right, so the map scrolls sideways: drag, use the mouse wheel, or the scrollbar.
Options that loop back to the same choice (the prophecy questions) show ↺ instead of a line. **Escape**
or **Back** returns to the start screen. Colors and fonts are in `mainTheme.tres` as `MapCard`,
`MapEnding`, `MapTitle` and `MapOption`.

## Escape returns to the main menu
Pressing **Escape** during the story goes back to the start screen (`_unhandled_input` in `main.gd`).
Nothing extra is saved, because the story already autosaved at the current line, so **Continue** picks up right there.
- **Why a key and not an on-screen button:** `inputManager.gd` advances the story on every left click, including
  clicks on buttons, so an in-story button would also skip a line (see "Still open"). A key press doesn't count as a click.
- **Story clicks are blocked when leaving.** InputManager is an autoload, so it still hears clicks on the start screen.
  Without blocking them, clicking Continue would first advance the story (and overwrite the save) behind the menu.
  Continue and New Game unblock clicks again when the story resumes.

## Earlier decisions this depends on
- **One project-wide theme** (`Themes/mainTheme.tres`, set in Project Settings). Every screen gets the same look automatically.
- **The game opens on `StartScreen.tscn`.** "New Game" goes to `Main.tscn`. **"Quit"** closes the game (Test Plan
  R10); nothing is lost because the story autosaves. It's hidden in web builds, where a game can't close its tab.
- **`StoryManager.play_next_node` checks that the current entry exists**, and **`play_node` reports missing entries** with
  `push_error("Story node not found: ...")`. A broken `"next"` shows an error instead of freezing silently.
- **Naming:** scripts in camelCase (`saveManager.gd`); autoloads in PascalCase (`SaveManager`); the menu button theme
  style is `MainMenuButton`, not `MenuButton`, because Godot already has a node type called `MenuButton`.

## Still open
- **On-screen menu button in the story:** Escape covers getting back to the menu for now. A clickable button needs `inputManager.gd` to use `_unhandled_input` instead of `_input`, otherwise clicking any
  in-story button also advances the dialog. It also needs the dialog box's Panel, RichTextLabel and NamePlate
  set to Mouse Filter: Ignore. It changes how input works for the whole game, so it needs team agreement.
- **A confirmation before New Game replaces an existing save.**
- **Pause entries** (`"type": "pause"`) hide the dialog box until the next click, and they're kept as designed.
  Players get no hint that the game is waiting.

## Rules for writers (scene files)
1. **Renaming an entry** sends any save sitting on it back to a new game, so avoid renaming lines once people are playing.
2. **Any `"next"` must point to an entry that exists**, or the game shows "Story node not found" and stops at that line.
3. **Ids must be unique across all scene files.** If two files use the same id, the later one is silently dropped.
4. **Copying a choice onto another path?** Give every copy the same `"map": "Name"` so the Story Map shows it once.
   The copies' options need the same button text to count as the same option.
5. **Writing a new ending?** Add `"ending": "Title"` to the last line before `end_game` to name it on the Story Map.
