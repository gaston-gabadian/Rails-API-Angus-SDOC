class Blog < ApplicationRecord
    validates :title, :content, presence: true
    validates :title, length: { minimum: 2 }
end
