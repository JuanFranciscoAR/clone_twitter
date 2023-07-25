class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  include PgSearch::Model
  pg_search_scope :search_full_text,
  against: {
  username: 'A',
  description: 'B',
  id: 'C',

  }
  
end

