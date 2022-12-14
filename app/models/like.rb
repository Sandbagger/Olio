class Like < ApplicationRecord
  # use of counter_cache reduces the number of database queries
  belongs_to :artical, counter_cache: true
end
