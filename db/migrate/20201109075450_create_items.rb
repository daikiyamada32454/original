class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,        null:false
      t.string :feature,     null:false
      t.string :Remarks,     null:false
      t.references :user,             foreign_key: true
      t.timestamps
    end
  end
end
