# frozen_string_literal: true

# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#          new_user_session GET    /users/sign_in(.:format)                                                                 users/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 users/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                users/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#                   tariffs GET    /tariffs(.:format)                                                                       tariffs#index
#                           POST   /tariffs(.:format)                                                                       tariffs#create
#                new_tariff GET    /tariffs/new(.:format)                                                                   tariffs#new
#               edit_tariff GET    /tariffs/:id/edit(.:format)                                                              tariffs#edit
#                    tariff GET    /tariffs/:id(.:format)                                                                   tariffs#show
#                           PATCH  /tariffs/:id(.:format)                                                                   tariffs#update
#                           PUT    /tariffs/:id(.:format)                                                                   tariffs#update
#                           DELETE /tariffs/:id(.:format)                                                                   tariffs#destroy
#             tariff_groups GET    /tariff_groups(.:format)                                                                 tariff_groups#index
#                           POST   /tariff_groups(.:format)                                                                 tariff_groups#create
#          new_tariff_group GET    /tariff_groups/new(.:format)                                                             tariff_groups#new
#         edit_tariff_group GET    /tariff_groups/:id/edit(.:format)                                                        tariff_groups#edit
#              tariff_group GET    /tariff_groups/:id(.:format)                                                             tariff_groups#show
#                           PATCH  /tariff_groups/:id(.:format)                                                             tariff_groups#update
#                           PUT    /tariff_groups/:id(.:format)                                                             tariff_groups#update
#                           DELETE /tariff_groups/:id(.:format)                                                             tariff_groups#destroy
#             format_photos GET    /format_photos(.:format)                                                                 format_photos#index
#                           POST   /format_photos(.:format)                                                                 format_photos#create
#          new_format_photo GET    /format_photos/new(.:format)                                                             format_photos#new
#         edit_format_photo GET    /format_photos/:id/edit(.:format)                                                        format_photos#edit
#              format_photo GET    /format_photos/:id(.:format)                                                             format_photos#show
#                           PATCH  /format_photos/:id(.:format)                                                             format_photos#update
#                           PUT    /format_photos/:id(.:format)                                                             format_photos#update
#                           DELETE /format_photos/:id(.:format)                                                             format_photos#destroy
#                      root GET    /                                                                                        static_pages#index
#                  services GET    /services(.:format)                                                                      static_pages#services
#                     price GET    /price(.:format)                                                                         static_pages#price
#                   payment GET    /payment(.:format)                                                                       static_pages#payment
#                  delivery GET    /delivery(.:format)                                                                      static_pages#delivery
#                conditions GET    /conditions(.:format)                                                                    static_pages#conditions
#                       faq GET    /faq(.:format)                                                                           static_pages#faq
#                  contacts GET    /contacts(.:format)                                                                      static_pages#contacts
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users, only: [:index]
  resources :tariffs
  resources :tariff_groups
  resources :format_photos
  root 'static_pages#index'
  get 'services' => 'static_pages#services', as: 'services'
  get 'price' => 'static_pages#price', as: 'price'
  get 'payment' => 'static_pages#payment', as: 'payment'
  get 'delivery' => 'static_pages#delivery', as: 'delivery'
  get 'conditions' => 'static_pages#conditions', as: 'conditions'
  get 'faq' => 'static_pages#faq', as: 'faq'
  get 'contacts' => 'static_pages#contacts', as: 'contacts'
end
