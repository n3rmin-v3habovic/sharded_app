# frozen_string_literal: true

class Project < TenantRecord
  belongs_to :tenants_company, class_name: 'Tenants::Company'
end
