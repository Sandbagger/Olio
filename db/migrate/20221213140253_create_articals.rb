class CreateArticals < ActiveRecord::Migration[7.0]
  def change
    create_table :articals do |t|
      t.string :external_id
      t.integer :likes_count

      t.timestamps
    end
  end
end
