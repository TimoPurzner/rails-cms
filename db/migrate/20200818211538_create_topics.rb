class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :title, null: false
      t.references :owner, index: true, null: false, foreign_key: { to_table: :users }
      

      t.timestamps
    end
  end
end
