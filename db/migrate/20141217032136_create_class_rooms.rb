class CreateClassRooms < ActiveRecord::Migration
  def change
    create_table :class_rooms do |t|
      t.integer :boys
      t.integer :girls
      t.integer :teachers
      t.integer :total
      t.integer :students

      t.timestamps
    end
  end
end
