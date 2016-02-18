class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column "first_name", :string, :limit => 30
      t.string "last_name", :limit => 60
      t.string "email", :default => "", :null => false
      # t.string "has_secure_password", :within => 6..20
      t.string "password_digest"
      t.timestamps null: false
    end
  end
end
