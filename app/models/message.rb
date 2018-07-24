class Message < ApplicationRecord
    validates :author, presence: { author: 'を書いてください。'}
    belongs_to :card
end
