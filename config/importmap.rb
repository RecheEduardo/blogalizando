# Pin npm packages by running ./bin/importmap

pin "application"
pin "@rails/ujs", to: "https://cdn.jsdelivr.net/npm/@rails/ujs@7.1.3-4/app/assets/javascripts/rails-ujs.min.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
# Bootstrap 5
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
