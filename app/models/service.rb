class Service < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :group
end
