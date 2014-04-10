class LogWorker
  include Sidekiq::Worker

  def perform
    Log.create(text: "A nice log entry")
  end
end