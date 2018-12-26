# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :tariffs
  root 'static_pages#index'
  get 'services' => 'static_pages#services', as: 'services'
  get 'price' => 'static_pages#price', as: 'price'
  get 'payment' => 'static_pages#payment', as: 'payment'
  get 'delivery' => 'static_pages#delivery', as: 'delivery'
  get 'conditions' => 'static_pages#conditions', as: 'conditions'
  get 'faq' => 'static_pages#faq', as: 'faq'
  get 'contacts' => 'static_pages#contacts', as: 'contacts'
end
