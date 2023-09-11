class Market

  attr_reader :name,
              :city,
              :state,
              :id,
              :address

  def initialize(data)
    @name = render_name(data[:attributes])
    @city = render_city(data[:attributes])
    @state = render_state(data[:attributes])
    @id = data[:id]
    @address = render_address(data[:attributes])
  end

  def render_address(attributes)
    begin 
      attributes[:street] + ", " +  attributes[:city] + ", " +  attributes[:state] + ", " + attributes[:zip]
    rescue StandardError
      nil
    end
  end

  def render_name(attributes)
    begin
      attributes[:name]
    rescue StandardError
      nil      
    end
  end

  def render_city(attributes)
    begin
      attributes[:city]
    rescue StandardError
      nil      
    end
  end

  def render_state(attributes)
    begin
      attributes[:state]
    rescue StandardError
      nil      
    end
  end
end
