class Route < ActiveRecord::Base
  attr_accessible :finished

  belongs_to :user
  has_many :route_details, dependent: :destroy
end