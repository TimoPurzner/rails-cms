class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :prename, :string
    add_column :users, :surname, :string
  end
end
