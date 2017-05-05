class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end
