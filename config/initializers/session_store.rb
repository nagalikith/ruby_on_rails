Rails.application.config.session_store :active_record_store, key: (Rails.env.production? ? '_bgcsy_session_id' : (Rails.env.demo? ? '_bgcsy_demo_session_id' : '_bgcsy_dev_session_id')),
                                                             secure: (Rails.env.demo? || Rails.env.production?),
                                                             httponly: true
