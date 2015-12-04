class Task

  attr_accessor :description, :status

  def initialize(description, status="pending")
    @description = description
    @status = status
  end

  def update_task=(status)
    @status = status
  end

  def to_s
    return "The task '#{@description}' is #{@status}"
  end
end
