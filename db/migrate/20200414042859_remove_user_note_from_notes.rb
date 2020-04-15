class RemoveUserNoteFromNotes < ActiveRecord::Migration[6.0]
  def change
    remove_column :notes, :user_note, :string
  end
end
