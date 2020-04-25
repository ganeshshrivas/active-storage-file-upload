class UploaderJob < ApplicationJob
  queue_as :default

  def perform(id, file_path, name)
  	a = Attachment.find id
  	a.file.attach(io: File.open(file_path), filename: name)
    a.save

    # we can send notification from here
  end
end
