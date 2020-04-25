class Attachment < ApplicationRecord
	has_one_attached :file

 def file_url
 	Rails.application.routes.url_helpers.rails_blob_path(file, only_path: true)
 end

end
