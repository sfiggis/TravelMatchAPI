Rails.application.routes.draw do
  if Rails.env.development?
    mount(
      GraphiQL::Rails::Engine,
      at: '/graphiql',
      graphql_path: '/api/v2/queries'
    )
  end
  post '/graphql', to: 'graphql#execute', as: 'graphql_path'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
