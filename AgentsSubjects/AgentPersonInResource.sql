SELECT resource.title, resource.ead_id, name_person.primary_name, lar.role_id
#lar.relator_id, enumeration_value.value 
FROM linked_agents_rlshp lar
LEFT JOIN resource ON lar.resource_id=resource.id
LEFT JOIN name_person ON lar.agent_person_id=name_person.agent_person_id
#LEFT JOIN enumeration_value ON lar.role_id=enumeration_value.id
WHERE resource.ead_id IN () #put ead_id in parentheses
#AND name_person.primary_name LIKE ''
#AND NOT name_person.primary_name LIKE ''
#AND enumeration_value.value='' #put in role that you need
#AND NOT enumeration_value.value='' #put in role that you need
#ORDER BY resource.ead_id
