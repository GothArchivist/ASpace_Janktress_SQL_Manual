SELECT rr.archival_object_id, 
rr.restriction_note_type, 
rr.begin, 
rr.end, 
note.notes, 
# archival_object.title,
# npi.persistent_id, 
rrt.restriction_type_id, 
enumeration_value.value
# , CONCAT('/repositories/', archival_object.repo_id, '/archival_objects/', archival_object.id) AS AO_URL
# , CAST(note.notes as CHAR (10000) CHARACTER SET UTF8) AS restriction_text
FROM rights_restriction rr
LEFT JOIN note on rr.archival_object_id=note.archival_object_id
# LEFT JOIN note_persistent_id npi on note.id=npi.note_id
LEFT JOIN rights_restriction_type rrt on rr.id=rrt.rights_restriction_id
LEFT JOIN enumeration_value on rrt.restriction_type_id=enumeration_value.id
#LEFT JOIN archival_object ON rr.archival_object_id=archival_object.id
WHERE rr.archival_object_id IN () #insert IDs here
