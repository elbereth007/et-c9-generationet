# firehose track 7, step 17 - file created 2 aug 17 for solo GenET project connecting users to people
class AlterPeopleAddUserIdColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :user_id, :integer
    add_index :people, :user_id               # index to speed up look-ups
  end
end
