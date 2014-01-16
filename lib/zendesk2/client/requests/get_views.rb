class Zendesk2::Client
  class Real
    def get_views(params={})
      page_params = Zendesk2.paging_parameters(params)

      request(
        :params  => page_params,
        :method  => :get,
        :path    => "/views.json",
      )
    end
  end
  class Mock
    def get_views(params={})
      page(params, :views, "/views.json", "views")
    end
  end
end