class CreateJoinTableBoardImage < ActiveRecord::Migration[5.2]
  def change
    create_join_table :boards, :images do |t|
      t.index [:board_id, :image_id]
      t.index [:image_id, :board_id]
    end
  end
end
