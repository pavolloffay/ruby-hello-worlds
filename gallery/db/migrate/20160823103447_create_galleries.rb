class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :name
      t.integer :user_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
