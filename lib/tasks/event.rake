task event: :environment do 
  ActionCable.server.broadcast "events_#{User.first.id}", { title: 'New things!', body: 'All the news that is fit to print' }
  puts "broadcasted."
end