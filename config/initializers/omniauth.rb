Rails.application.config.middleware.use OmniAuth::Builder do
   provider :facebook, '382705638895362', '50b5accd0f345360821861856fabf5db',
            #:scope => 'email,user_birthday,read_stream', :display => 'popup',
            :callback_url => "https://63ce4518.ngrok.io/sessions/create/callback"
 end