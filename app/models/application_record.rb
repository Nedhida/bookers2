class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  validates :title, presence: true
  validates :opinion, presence: true

end
