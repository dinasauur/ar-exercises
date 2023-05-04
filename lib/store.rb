class Store < ActiveRecord::Base
  has_many :employees
  # after_create "log_new_store"
  # after_update "log_update"

  # private
  # def log_new_store
  #   puts "A new store was created"
  # end

  # def log_update
  #   puts "Store has been updated"
  # end

end
