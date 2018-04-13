SELECT archival_object.repo_id, archival_object.id, archival_object.publish, note.id, npi.persistent_id
, CONCAT('/repositories/', archival_object.repo_id, '/archival_objects/', archival_object.id) AS uri
FROM archival_object
LEFT JOIN note ON archival_object.id=note.archival_object_id
LEFT JOIN note_persistent_id npi ON note.id=npi.note_id
WHERE npi.persistent_id IN ()
