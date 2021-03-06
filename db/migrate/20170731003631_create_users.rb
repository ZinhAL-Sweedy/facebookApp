class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :age
      t.string :email
      t.boolean :is_admin
      t.string :image

      t.timestamps
    end
  end
end
