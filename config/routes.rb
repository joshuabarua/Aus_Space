Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, skip: :registrations
  root 'static_pages#home'
  get  '/home',      to: 'static_pages#home'
  get  '/help',      to: 'static_pages#help'
  get  '/about',     to: 'static_pages#about'
  get  '/contact',   to: 'static_pages#contact'
  get  '/admin',     to: 'devise#sessions/new'

end
