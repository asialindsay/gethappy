class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string "memory_text", :limit => 500
      t.integer "user_id"
      t.timestamps null: false
    end
  end
end
