namespace :messages do
  desc "delete messages after 10 seconds"
  task delete_10_minutes_old: :environment do
    Message.expired.destroy_all
  end
end
