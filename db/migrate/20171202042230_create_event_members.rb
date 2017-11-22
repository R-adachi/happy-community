class CreateEventMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_members do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
