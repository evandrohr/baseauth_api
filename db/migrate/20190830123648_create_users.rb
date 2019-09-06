class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'uuid-ossp'
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
