# frozen_string_literal: true

Rails.application.routes.draw do
  root 'articles#index'

  get 'result', to: 'forms#result'
  get 'form', to: 'forms#form'
  get 'forms/result'
end
