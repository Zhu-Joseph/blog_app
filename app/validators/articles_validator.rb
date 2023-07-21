class ArticlesValidator < ApplicationRecord
  validates :name, presence: true
end