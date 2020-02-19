# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: true, limit: 256
      t.string :last_name, null: true, limit: 256
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
