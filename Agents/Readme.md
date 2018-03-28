Here are queries for things involving agents. Explanations below.

**MultipleAgentsToResource**
This query will allow you to check for a resource that has specific multiple agents you need. The origin of this query were records with incorrectly linked agents/roles for the resource.

_What is going on?_
+For ease, you are probably going to want to have the resource record title and other identifiers. I include the title, id, and EAD id. These are all pulled from the resource table. Our EAD IDs are the most sensible for us to use for human readability, but if that is not true for you, or if you don't actually use EAD IDs, remove resource.ead_id and swap in resource.identifier as that will most likely be your call number/shelf mark
+The original query was written for two specific corporate entities. This requires using the name_corporate_entity table. I called on the name (primary_name) and the agent corporate entity id. The latter is for joining purposes later on. You also may prefer using the id for retrieval. 
+The relationship between the corporate agent and the resource is stored in another table, linked_agent_rlshp. You won't actually need anything displayed from this table that isn't elsewhere, but you do need to call it. For clarifying purposes for this specific issue, I added the role_id.
