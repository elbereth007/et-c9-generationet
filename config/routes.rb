# firehose track 7, step 3 - file created 20 jul 17 for solo GenET project landing page

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
# next line added 20 jul 17 for solo GenET project landing page
  root 'landing_pages#index'    # hooks up landing page to index action - app/views/index.html.erb
  
end
