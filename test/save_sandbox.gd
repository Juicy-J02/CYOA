# Keeps the tests away from YOUR save and Story Map progress.
#
# StoryManager autosaves to user://savegame.cfg and user://progress.cfg on every line, so
# any test that plays the story would overwrite whoever runs it. Every test file that
# touches saving calls:
#   func before_all(): SaveSandbox.protect()
#   func after_all():  SaveSandbox.restore()
# protect() moves your real files aside; restore() deletes whatever the tests wrote and
# puts yours back. If a run ever crashes halfway, the next run's protect() restores your
# files first, so nothing is lost.
extends RefCounted

const FILES := [
	"user://savegame.cfg",
	"user://progress.cfg",
]
const BACKUP_SUFFIX := ".before_tests"


static func protect() -> void:
	for path in FILES:
		var backup: String = path + BACKUP_SUFFIX
		if FileAccess.file_exists(backup):
			# Left over from a crashed run: the backup is the real file.
			_remove(path)
			DirAccess.rename_absolute(backup, path)
		if FileAccess.file_exists(path):
			DirAccess.rename_absolute(path, backup)
	reset_memory()


static func restore() -> void:
	for path in FILES:
		var backup: String = path + BACKUP_SUFFIX
		_remove(path)
		if FileAccess.file_exists(backup):
			DirAccess.rename_absolute(backup, path)
	reset_memory()
	SaveManager.load_progress()


# Wipes the test files between tests so each test starts from "never played".
static func clear() -> void:
	for path in FILES:
		_remove(path)
	reset_memory()


static func reset_memory() -> void:
	SaveManager.pending_load = {}
	SaveManager.groups_seen = {}
	SaveManager.options_picked = {}
	SaveManager.endings_found = {}
	InputManager.input_blocked = false


static func _remove(path: String) -> void:
	if FileAccess.file_exists(path):
		DirAccess.remove_absolute(path)
