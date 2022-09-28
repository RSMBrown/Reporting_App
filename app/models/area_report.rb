class AreaReport < ApplicationRecord
    belongs_to :area, class_name: "Area", foriegn_key: "area_id"
    belongs_to :report, class_name: "Report", foriegn_key: "report_id"
end
