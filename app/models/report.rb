class Report < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    has_many :areas_report
    has_many :areas, through: :areas_report
end
