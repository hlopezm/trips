class CreateBoardCards < ActiveRecord::Migration
  def change
    create_table :board_cards do |t|
      t.string :transport_type
      t.integer :transport_number
      t.integer :seat_number
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
