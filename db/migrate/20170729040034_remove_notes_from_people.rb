class RemoveNotesFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :notes, :string
  end
end
