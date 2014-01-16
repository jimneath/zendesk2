class Zendesk2::Client
  class Real
    def get_view_tickets(params={})
      view_id = params["view_id"]
      request(
        :method => :get,
        :path => "/views/#{view_id}/tickets.json"
      )
    end
  end # Real

  class Mock
    def get_view_tickets(params={})
      view_id = params["view_id"]

      page(params, :view_comments, "/views/#{view_id}/tickets.json", "tickets")
    end
  end # Mock
end
