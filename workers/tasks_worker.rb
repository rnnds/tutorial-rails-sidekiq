class TasksWorker
  include Sidekiq::Worker

  def perform(name)
    puts "\r\n\r\n*** Consuming task: %s ***\r\n\r\n" % [name]
  end
end
