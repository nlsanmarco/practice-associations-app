class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.references :leader, foreign_key: { to_table: :followers }

      t.timestamps
    end
  end
end
