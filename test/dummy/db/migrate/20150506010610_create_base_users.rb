class CreateBaseUsers < ActiveRecord::Migration
  def change
    create_table :blorgh_base_users do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
