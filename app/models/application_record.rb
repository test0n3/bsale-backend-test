class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  ActiveRecord::Base.pluralize_table_names = false
end
