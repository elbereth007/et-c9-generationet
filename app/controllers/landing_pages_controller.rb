# firehose track 7, step 3 - file created 20 jul 17 for solo GenET project landing page

class LandingPagesController < ApplicationController
    
  def index
    @people = Person.all      # *** need to change so only authenticated users can see only people they've created on a
  end                         #     separate page, and unauthenticated/other authenticated users can't see them ***
  
end
