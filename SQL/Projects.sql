select
  projects.id,
  projects.name,
  projects.description,
  projects.created_at  AT TIME ZONE 'UTC' AT TIME ZONE 'US/Pacific' as "created_at",
  projects.updated_at  AT TIME ZONE 'UTC' AT TIME ZONE 'US/Pacific' as "updated_at",
  'TABLEAUURL/#/projects/' || projects.id as "Url",
  projects.owner_id
from
  projects