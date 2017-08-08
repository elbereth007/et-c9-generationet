class RemoveDeathDateFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :death_date, :integer
  end
end
