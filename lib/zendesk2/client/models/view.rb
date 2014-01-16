class Zendesk2::Client::View < Zendesk2::Model
  PARAMS = %w[ id title active executions conditions restrictions ]

  identity :id, :type => :integer
  attribute :title, :type => :string
  attribute :active, :type => :boolean
  attribute :executions, :type => :hash
  attribute :conditions, :type => :hash
  attribute :restrictions, :type => :hash
  
  def tickets
    body = self.connection.get_view_tickets('view_id' => self.id).body
    Zendesk2::Client::Tickets.new(body)
  end
  
  def count
    body = self.connection.get_view_counts('view_id' => self.id).body
    body['view_counts'][0]['value']
  end
end