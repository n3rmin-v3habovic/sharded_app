class Tenants::Company < TenantRecord
  enum db_shard_name: TenantRecord::LIST_OF_SHARDS
end
