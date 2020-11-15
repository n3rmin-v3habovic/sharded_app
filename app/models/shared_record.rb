class SharedRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :shared, reading: :shared }
end
