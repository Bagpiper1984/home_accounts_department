class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.float :amount
      t.string :goods_service
      t.string :note

      t.timestamps
    end
  end
end
