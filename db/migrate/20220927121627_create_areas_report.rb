class CreateAreasReport < ActiveRecord::Migration[6.1]
  def change
    create_table :areas_report do |t|
      t.belongs_to :report, index: true, foriegn_key: true 
      t.belongs_to :area, index: true, foriegn_key: true 

      t.timestamps
    end
  end
end
