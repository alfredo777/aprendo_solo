Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '336243296469875', '4255f20c6a683294e0cdc9b0cd8c7427',:iframe => true, 
  
    :scope => 'email, user_about_me,user_activities,user_birthday,user_education_history,
                      user_events,user_groups,user_hometown,user_interests,user_likes, user_location,
                      user_religion_politics,
                      user_status,user_work_history,
                      publish_stream, offline_access,
                      friends_about_me'
end