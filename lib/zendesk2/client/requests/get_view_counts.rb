class Zendesk2::Client
  class Real
    def get_view_counts(params={})
      view_id = params["view_id"]
      request(
        :method => :get,
        :path => "/views/count_many.json?ids=#{view_id}"
      )
    end
  end # Real

  class Mock
    def get_view_counts(params={})
      view_id = params["view_id"]

      page(params, :view_counts, "/views/count_many.json?ids=#{view_id}", "?")
    end
  end # Mock
end
