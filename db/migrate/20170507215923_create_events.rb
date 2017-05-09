class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :event_datetime
      t.datetime :rsvp_datetime

      t.timestamps
    end
  end
end
