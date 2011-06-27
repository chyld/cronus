class FileUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "files/%025d" % @model.note_id
  end
end
