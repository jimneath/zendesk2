class Zendesk2::Client::ViewTickets < Zendesk2::Collection
  model Zendesk2::Client::Ticket

  self.collection_method = :get_view_tickets
  self.collection_root   = "tickets"
  self.model_method      = :get_ticket
  self.model_root        = "ticket"
end
