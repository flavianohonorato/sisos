class Ordem < ActiveRecord::Base
  belongs_to :os
  belongs_to :category
end
