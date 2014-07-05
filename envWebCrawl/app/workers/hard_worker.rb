class HardWorker
  include Sidekiq::Worker


  def perform(name, count)
    puts 'Doing something'
  end
end
