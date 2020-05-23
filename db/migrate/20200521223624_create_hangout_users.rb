class CreateHangoutUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :hangout_users do |t|
      t.belongs_to :hangout, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
