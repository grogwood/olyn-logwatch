# Loop through each user item in the data bag
data_bag('system_users').each do |user_item|

  # Load the data bag item
  user = data_bag_item('system_users', user_item)

  # Skip users that are not system users with emails
  next unless user[:email] && user[:options]['logwatch']

  # Set the logwatch email address
  node.override[:logwatch][:email] = user[:email]

end

# Run the logwatch configuration recipe
include_recipe 'logwatch'