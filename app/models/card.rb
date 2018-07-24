class Card < ApplicationRecord
    has_many :message

    validates :title, presence:{ message: 'は必須項目です。'}
    validates :author, presence:{ message: 'は数字で入力してください。'}
    
end
