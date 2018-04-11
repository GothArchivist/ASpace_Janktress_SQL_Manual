SELECT note.notes, resource.title, resource.repo_id, archival_object.title, archival_object.repo_id, npi.persistent_id
#, CONCAT('/repositories/', resource.repo_id, '/resources/', resource.id) AS Resource_URL
#, CONCAT('/repositories/', archival_object.repo_id, '/archival_objects/', archival_object.id) AS AO_URL
# Use the above if you need to form the URI for an API update.
#, CAST(note.notes as CHAR (10000) CHARACTER SET UTF8) AS note_text
# Use the CAST if you are working with a version of ASpace that isn't human readable (i.e. stores text as blobs).
FROM note
LEFT JOIN resource ON note.resource_id=resource.id
LEFT JOIN archival_object ON note.archival_object_id=archival_object.id
LEFT JOIN note_persistent_id npi ON note.id=npi.note_id
#WHERE npi.persistent_id IN ()
#AND (archival_object.id IN () OR resource.id IN ())
#Select whichever clause(s) you need. Just don't forget to have a WHERE if you're only using one!
