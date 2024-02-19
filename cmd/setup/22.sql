CREATE INDEX CONCURRENTLY IF NOT EXISTS active_instances_events ON eventstore.events2 (aggregate_type, event_type) WHERE aggregate_type = 'instance' AND event_type IN ('instance.added', 'instance.removed');