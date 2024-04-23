Rails.application.routes.draw do
   #rails esta uscando un archivo dentro de controladores que tiene
   # el nombre de application_controller,
  root 'pages#home'

  #definir otra ruta
  #utiliaremos el controladr de pages para  pages esto se hace de la siguiente manera
  get 'about', to: 'pages#about'

  #la siguiente linea me da todas las turas que quiero para los articulos
  # con la linea de only[show solo me va a exponer esa rute para la tabla y no las demas
  # , la ruta show es para traer ung et de los articulos
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]
end
