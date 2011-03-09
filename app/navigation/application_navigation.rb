class ApplicationNavigation < Menumatic::Navigation::Base
  # these are inlucded here, until I decide on the best _other_ place for them
  class << self
    include Rails.application.routes.url_helpers
  end

  navigate_to "Home", home_path, :active_on => [home_path, root_path]
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
      categories.navigate_to "Sporks", store_categories_sporks_path do |sporks|
				sporks.navigate_to "Russian", store_categories_sporks_russian_path
        sporks.navigate_to "Italian", store_categories_sporks_italian_path
        sporks.navigate_to "Australian", store_categories_sporks_australian_path do |australian|
          australian.navigate_to "Small", store_categories_sporks_australian_small_path
          australian.navigate_to "Medium", store_categories_sporks_australian_medium_path
          australian.navigate_to "Large", store_categories_sporks_australian_large_path
        end
        sporks.navigate_to "English", store_categories_sporks_english_path do |english|
          english.navigate_to "Small", store_categories_sporks_english_small_path
          english.navigate_to "Medium", store_categories_sporks_english_medium_path
          english.navigate_to "Large", store_categories_sporks_english_large_path
        end
        sporks.navigate_to "French", store_categories_sporks_french_path do |french|
          french.navigate_to "Small", store_categories_sporks_french_small_path
          french.navigate_to "Medium", store_categories_sporks_french_medium_path
          french.navigate_to "Large", store_categories_sporks_french_large_path
        end
			end
    end
    group :sidebar do |sidebar|
      sidebar.navigate_to "Edit specials", "javascript:void(0)"
    end
  end
  navigate_to "Something", something_else_path
  navigate_to "Contact us", contact_us_path

  group :sidebar do |sidebar|
    sidebar.navigate_to "Management console", "javascript:void(0)"
    sidebar.navigate_to "Logout", "javascript:void(0)"
  end
end
