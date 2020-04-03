class AddConfirmableToDevise < ActiveRecord::Migration[6.0]
  def up
    # Confirmable
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime

    # Trackable
    add_column :users, :sign_in_count, :integer, default: 0, null: false
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip, :inet
    add_column :users, :last_sign_in_ip, :inet

    add_index :users, :confirmation_token, unique: true

    User.update_all confirmed_at: DateTime.now
  end

  def down
    remove_columns :users, :confirmation_token,
                   :confirmed_at, :confirmation_sent_at, :sign_in_count,
                   :current_sign_in_at, :last_sign_in_at,
                   :current_sign_in_ip, :last_sign_in_ip
  end
end
