class User < ActiveRecord::Base
  belongs_to :company
  belongs_to :state
end
