# firehose track 7, step 12 - file created 26 jul 17 for solo GenET project genealogy gem and database setup

class Person < ApplicationRecord
  
# next line added 2 aug 17 for solo GenET project connecting users to people (step 17)
  belongs_to :user
  
end

