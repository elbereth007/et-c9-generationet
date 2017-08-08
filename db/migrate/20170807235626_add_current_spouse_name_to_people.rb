class AddCurrentSpouseNameToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :current_spouse_name, :string
  end
end
