# omniauthCas/frontend/routes.rb

ArchivesSpace::Application.routes.draw do
  get  "/auth/:provider/callback",   to: "oac_session#first"
  get  "/auth/:provider/second",     to: "oac_session#second"
  get  "/auth/:provider/logout",     to: "oac_session#logout"
  get  "/auth/:provider/cas_signup", to: "oac_session#cas_signup"
  post "/auth/:provider/update",     to: "oac_session#update"
end
