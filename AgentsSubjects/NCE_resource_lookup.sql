SELECT nce.primary_name, lar.resource_id, resource.title, resource.identifier, resource.language_id, enumeration_value.value AS language
FROM linked_agents_rlshp lar
LEFT JOIN name_corporate_entity nce ON lar.agent_corporate_entity_id=nce.agent_corporate_entity_id
LEFT JOIN resource ON lar.resource_id=resource.id
LEFT JOIN enumeration_value ON resource.language_id=enumeration_value.id
WHERE nce.primary_name = 'Video Archive for Holocaust Testimonies at Yale'
AND enumeration_value.value = 'eng'
ORDER BY resource.identifier