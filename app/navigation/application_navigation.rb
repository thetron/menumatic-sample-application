class ApplicationNavigation < Menumatic::Navigation::Base
  # these are inlucded here, until I decide on the best _other_ place for them
  class << self
    include Rails.application.routes.url_helpers
  end

  navigate_to "Home", home_path, :active_paths => [:home_path, :root_path]
  navigate_to "About", about_path do |about|
    about.navigate_to "History", about_history_path
    about.navigate_to "The team", about_the_team_path 
    about.navigate_to "Our vision", about_our_vision_path
    group :sidebar do |sidebar|
      sidebar.navigate_to "Edit 'About'", "javascript:void(0)"
    end
  end
  navigate_to "Store", store_on_special_path do |store|
    store.navigate_to "On special", store_on_special_path
    store.navigate_to "Coming soon", store_coming_soon_path
    store.navigate_to "Categories", store_categories_path do |categories|
      categories.navigate_to "Shirts", store_categories_shirts_path
      categories.navigate_to "Pants", store_categories_pants_path
      categories.navigate_to "Hats", store_categories_hats_path
      categories.navigate_to "Accessories", store_categories_accessories_path
      categories.navigate_to "Sporks", store_categories_sporks_path
    end
  end
  navigate_to "Something", something_else_path
  navigate_to "Contact us", contact_us_path

  group :sidebar do |sidebar|
    sidebar.navigate_to "Logout", "javascript:void(0)"#, :if => Proc.new{ logged_in? }
  end
end
