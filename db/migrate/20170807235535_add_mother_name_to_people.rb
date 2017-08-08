class AddMotherNameToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :mother_name, :string
  end
end
