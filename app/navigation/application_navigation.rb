class ApplicationNavigation < Menumatic::Navigation::Base
  # these are inlucded here, until I decide on the best _other_ place for them
  class << self
    include Rails.application.routes.url_helpers
  end

  navigate_to "Home", home_path
  navigate_to "About", about_path do |about|
    about.navigate_to "History", about_history_path
    about.navigate_to "The team", about_the_team_path
    about.navigate_to "Our vision", about_our_vision_path
  end
  navigate_to "Store", store_path do |categories|
    categories.navigate_to "On special", store_on_special_path
    categories.navigate_to "Coming soon", store_coming_soon_path
  end
  navigate_to "Something", something_else_path
  navigate_to "Contact us", contact_us_path

  #group :sidebar do |sidebar|
  #  navigate_to "Logout", :if => Proc.new{ logged_in? }
  #end
  #
end
