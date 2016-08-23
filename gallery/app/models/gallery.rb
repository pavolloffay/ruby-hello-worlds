class Gallery < ApplicationRecord
    has_many :pictures, dependent: :destroy
    belongs_to :user
    belongs_to :creator, class_name: 'User', foreign_key: :creator_id
end
