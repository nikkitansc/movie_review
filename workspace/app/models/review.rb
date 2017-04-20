class Review < ActiveRecord::Base
    belongs_to :movie
    belongs_to :usr
end
