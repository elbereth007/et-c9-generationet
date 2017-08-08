class AddBirthDateToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :birth_date, :date
  end
end
