class AddNotesToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :notes, :text
  end
end
