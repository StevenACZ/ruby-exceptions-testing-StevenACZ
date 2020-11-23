class Calencli
  @@id = 0
  attr_reader :data

  def initialize(initial_data)
    @data = initial_data.map { |event_data| create_event(event_data) }
  end

  def create_event(event_data)
    # complete
  end

  def find_event(event_id)
    # complete
  end

  def update_event(event_id, event_data)
    # complete
  end

  def delete_event(event_id)
    # complete
  end
end
