# Save System: Decisions

This lists the decisions made while building saving, Continue and Retry Last Choice, why each was
made, and what it means for the rest of the team. The "Rules for writers" section at the end is the
short version for anyone editing the scene files (`scene1.gd`, `scene2.gd`, ...).

This is the demo version of the save system. Progress tracking (a Progress screen of choices and
endings found) and story flags are being worked on separately and aren't included here.

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
**Why:** players can close the game on the Game Over screen and still come back to try a different option.
**Impact:** after finishing, the start screen always offers to go back to the last choice. If that
should change, it's in `end_game` in `storyManager.gd`.

### Game Over screen
It offers **Retry Last Choice**, **Restart from Beginning** and **Main Menu**. Retry is hidden if no choice was ever made.

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
- **The game opens on `StartScreen.tscn`.** "New Game" goes to `Main.tscn`.
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
