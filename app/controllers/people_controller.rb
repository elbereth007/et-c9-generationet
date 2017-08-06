# firehose track 7, step 14 - file created 28 jul 17 for solo GenET project creating person form
class PeopleController < ApplicationController
  
# next line added 2 aug 17 so only authenticated/logged-in users can see trees (step 17)
  before_action :authenticate_user!, only: [:new, :create]          # need a way to prevent user from seeing other users' trees; add :show later
  
# index method added 3 aug 17 to list all people on landing page (for now) (step 18)
  def index
    @people = Person.all
  end
  
  def new
    @person = Person.new
  end
  
# create method added 28 jul 17 for making submit form create new person (step 15)
  def create
    
# next line commented out and following line added 2 aug 17 for connecting users to people (step 17)
#    Person.create(person_params)
    current_user.people.create(person_params)
    
    redirect_to new_person_path       # change to redirect to page showing person created, maybe entire tree
  end
  
# show method added 3 aug 17 for person detail page (step 18)
  def show
    @person = Person.find(params[:id])
  end
  
# edit method added 5 aug 17 for editing person details (step 19)
  def edit
    @person = Person.find(params[:id])
  end

  private

# person_params method added 28 jul 17 for making submit form create new person (step 15)
  def person_params
    params.require(:person).permit(:first_name, :middle_name, :last_name, :sex, :birth_date, :death_date, :father_id, :mother_id, :current_spouse, :notes)
  end
  
end
