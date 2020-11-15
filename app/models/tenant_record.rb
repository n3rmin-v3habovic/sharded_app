class TenantRecord < ActiveRecord::Base
  self.abstract_class = true

  DEFAULT_SHARD = :default
  SHARD_ONE = :shard_one

  connects_to shards: {
      DEFAULT_SHARD => { writing: :primary, reading: :primary },
      SHARD_ONE => { writing: :primary_shard_one, reading: :primary_shard_one }
  }

  LIST_OF_SHARDS = [
      DEFAULT_SHARD,
      SHARD_ONE
  ].freeze
end
