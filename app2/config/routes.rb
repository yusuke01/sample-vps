Rails.application.routes.draw do
  scope ENV.fetch("RAILS_RELATIVE_URL_ROOT", "") do
    root "home#index"
  end
end
