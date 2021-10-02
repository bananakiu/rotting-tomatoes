class Article < ApplicationRecord
    validates :movie, presence: true
    validates :review, presence: true
end
