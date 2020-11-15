class Company < SharedRecord
  enum db_shard_name: TenantRecord::LIST_OF_SHARDS
end
