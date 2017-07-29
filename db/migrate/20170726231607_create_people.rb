# firehose track 7, step 12 - file created 26 jul 17 for solo GenET project genealogy gem and database setup
class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      
      t.string :sex
      t.integer :father_id
      t.integer :mother_id
      t.integer :current_spouse_id
      t.integer :birth_date
      t.integer :death_date
      
      t.timestamps
    end
  end
end
