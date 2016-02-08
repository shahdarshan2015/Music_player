class Fav < ActiveRecord::Base
  belongs_to :list
  belongs_to :song
  belongs_to :member
end
