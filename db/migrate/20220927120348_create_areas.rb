class CreateAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :areas do |t|
      t.belongs_to :user, index: true, foriegn_key: true 
      t.string :name
      t.string :location 

      t.timestamps
    end
  end
end
