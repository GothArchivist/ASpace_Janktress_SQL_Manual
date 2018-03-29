SELECT resource.title, resource.ead_id, nce.primary_name, lar.agent_corporate_entity_id, lar.role_id, enumeration_value.value AS role
FROM linked_agents_rlshp lar
LEFT JOIN resource ON lar.resource_id=resource.id
LEFT JOIN name_corporate_entity nce ON lar.agent_corporate_entity_id=nce.agent_corporate_entity_id
LEFT JOIN enumeration_value ON lar.role_id=enumeration_value.id
WHERE nce.primary_name IN ('agent 1','agent 2') #Don't forget to swap in your actual agent names! Put in as many as you need.
GROUP BY lar.resource_id
HAVING COUNT(lar.resource_id)=2 #Increase count by the amount of agents you have listed above.
