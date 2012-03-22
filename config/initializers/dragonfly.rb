require 'dragonfly'

app = Dragonfly[:images]

# Configure to use ImageMagick, Rails defaults, and the Mongo data store
app.configure_with(:imagemagick)
app.configure_with(:rails)
app.define_macro_on_include(MongoMapper::Document, :image_accessor)
app.define_macro_on_include(MongoMapper::EmbeddedDocument, :image_accessor)
