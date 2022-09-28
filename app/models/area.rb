class Area < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    has_many :areas_report
    has_many :reports, through: :areas_report
end

$location = ["DY234", "DY235", "AT100", "ZF212"]