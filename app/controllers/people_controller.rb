# firehose track 7, step 14 - file created 28 jul 17 for solo GenET project creating person form
class PeopleController < ApplicationController
  
  def new
    @person = Person.new
  end
  
# create method added 28 jul 17 for making submit form create new person (step 15)
  def create
    Person.create(person_params)
    redirect_to new_person_path
  end

  private

# person_params method added 28 jul 17 for making submit form create new person (step 15)
  def person_params
    params.require(:person).permit(:first_name, :middle_name, :last_name, :sex, :birth_date, :death_date, :father_id, :mother_id, :current_spouse, :notes)
  end
  
end
