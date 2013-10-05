Cmpe235project::Application.routes.draw do
   root to: "welcome#index"
   resources :advertisements
   resources :events, only: [:index]
   post '/events/impression', to: 'events#impression'
   post '/events/click', to: 'events#click'
   post '/events/clickthru', to: 'events#clickthru'
   post '/events/sms', to: 'events#sms'
   post '/events/map', to: 'events#map'
   post '/events/call', to: 'events#call'

end
