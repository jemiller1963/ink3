class CreateHangoutUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :hangout_users do |t|
      t.references :hangout, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
