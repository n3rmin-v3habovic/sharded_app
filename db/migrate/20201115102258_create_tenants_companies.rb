class CreateTenantsCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants_companies do |t|
      t.string :title
      t.integer :db_shard_name, default: 0

      t.timestamps
    end
  end
end
