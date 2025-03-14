class CreateLikes < ActiveRecord::Migration[7.2]
  def change
    create_table :likes do |t|
      t.references :book, null: false, foreign_key: true, type: :uuid
      t.integer :total, default: 0

      t.timestamps
    end
  end
end
