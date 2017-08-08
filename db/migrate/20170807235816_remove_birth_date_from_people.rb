class RemoveBirthDateFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :birth_date, :integer
  end
end
