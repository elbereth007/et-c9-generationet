# firehose track 7, step 14 - file created 28 jul 17 for solo GenET project creating person form
class PeopleController < ApplicationController
  
  def new
    @person = Person.new
  end
  
end
