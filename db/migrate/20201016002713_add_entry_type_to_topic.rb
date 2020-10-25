class AddEntryTypeToTopic < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :entry_type, :string, null: false, default: 'text'
  end
end
