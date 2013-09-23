desc "Populates the total_karma field for all users"
task :total_karma => :environment do
  User.all.each do |user|
    # user.total_karma = user.karma_points.sum(:value)
    user.update_attribute(:total_karma, user.karma_points.sum(:value))
    puts user.id if user.id % 20 == 0
  end
end
