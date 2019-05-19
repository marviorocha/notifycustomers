module OnsignalHelper


def notification

client = OneSignal::Client.new(auth_token: 'YTFmZmQ0MjQtNmRkYy00MTM3LWFjNGMtNGU5NTIxNWNkZjBj', app_id: 'ffc48929-efe2-494c-a3ce-8e23528623f8')
# params = {"app_id" => "f25ce7ac-9737-4b46-af9a-42c20444cf12",
#          "headings" => {"en"=> title},
#           "chrome_web_icon" => picture,
#           "contents" => {"en" => content},
#           "send_after" => deliver,
#           "included_segments" => ["All"]}
#
# client.notifications.create(params)

end

end
