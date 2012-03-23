require 'dragonfly'

app = Dragonfly[:images]

# Configure to use ImageMagick, Rails defaults, and the Mongo data store
app.configure_with(:imagemagick)
app.configure_with(:rails)
app.define_macro_on_include(MongoMapper::Document, :image_accessor)
app.define_macro_on_include(MongoMapper::EmbeddedDocument, :image_accessor)

if Rails.env.production?
  app.configure do |c|
    c.datastore = Dragonfly::DataStorage::S3DataStore.new(
      :bucket_name => ENV['S3_BUCKET'],
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    )
  end
end
