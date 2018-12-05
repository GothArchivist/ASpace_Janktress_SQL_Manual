SELECT COUNT(lar.agent_corporate_entity_id), nce.primary_name, nce.agent_corporate_entity_id
FROM linked_agents_rlshp lar
LEFT JOIN name_corporate_entity nce ON lar.agent_corporate_entity_id=nce.agent_corporate_entity_id
#WHERE lar.agent_corporate_entity_id =
#WHERE lar.agent_corporate_entity_id IN ()
#AND nce.is_display_name=1
GROUP BY nce.primary_name
