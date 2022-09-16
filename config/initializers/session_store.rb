if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "radiant-atoll-92288.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end
