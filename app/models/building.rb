class Building < ActiveRecord::Base
  validates :location, :height, presence: true
end
