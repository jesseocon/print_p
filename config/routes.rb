PrintParlor::Application.routes.draw do
  resources :invitations do 
    collection { get 'search' }
  end
  resources :menus do
    collection { get 'search'}
  end
  resources :programs do
    collection { get 'search'}
  end
  resources :save_the_dates do
    collection { get 'search'}
  end
  resources :rsvps do
    collection { get 'search'}
  end
  resources :thank_you_cards do
    collection { get 'search'}
  end
  resources :seasons do 
    collection { get 'search' }
  end
  resources :styles do 
    collection { get 'search' }
  end
  resources :colors do 
    collection { get 'search' }
  end
  resources :assets do 
    collection { get 'search' }
  end
  resources :invitation_pricings
  resources :pricing_cats
end
