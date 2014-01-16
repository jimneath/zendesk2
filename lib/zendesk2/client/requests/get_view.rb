class Zendesk2::Client
  class Real
    def get_view(params={})
      id = params["id"]

      request(
        :method => :get,
        :path   => "/views/#{id}.json"
      )
    end
  end # Real

  class Mock
    def get_view(params={})
      id   = params["id"]
      if body = self.data[:views][id]

        response(
          :path  => "/views/#{id}.json",
          :body  => {
            "view" => body
          },
        )
      else 
        response(
          :path   => "/views/#{id}.json",
          :status => 404
        )
      end
    end
  end # Mock
end
