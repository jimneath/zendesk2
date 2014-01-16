class Zendesk2::Client::Views < Zendesk2::Collection
  model Zendesk2::Client::View

  self.collection_method = :get_views
  self.collection_root   = "views"
  self.model_method      = :get_view
  self.model_root        = "view"
end