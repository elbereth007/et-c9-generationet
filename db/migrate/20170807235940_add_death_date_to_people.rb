class AddDeathDateToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :death_date, :date
  end
end
