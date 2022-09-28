class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.belongs_to :user, index: true, foriegn_key: true 
      t.string :title
      t.string :area
      t.text :description 

      t.timestamps
    end
  end
end
