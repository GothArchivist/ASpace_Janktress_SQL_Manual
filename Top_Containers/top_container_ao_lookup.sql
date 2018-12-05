SELECT tc.indicator, tc.barcode, tclr.sub_container_id, sub_container.instance_id, archival_object.title, instance.archival_object_id, resource.title AS resource
,CONCAT('/repositories/',tc.repo_id,'/top_containers/',tc.id) as tc_uri
FROM top_container_link_rlshp tclr
LEFT JOIN top_container tc ON tclr.top_container_id=tc.id
LEFT JOIN sub_container ON tclr.sub_container_id=sub_container.id
LEFT JOIN instance ON sub_container.instance_id=instance.id
LEFT JOIN archival_object ON instance.archival_object_id=archival_object.id
LEFT JOIN resource ON archival_object.root_record_id=resource.id
#WHERE tclr.sub_container_id IS NULL
#WHERE tc.repo_id=14
#AND tc.barcode IN()
#AND tc.barcode=''
#AND archival_object.position=500
#AND resource.title IS NOT NULL

