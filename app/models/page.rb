class Page
  include MongoMapper::Document
  key :name,        String
  many :page_elements, :as => :elementable
  timestamps!
end
