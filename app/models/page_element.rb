class PageElement
  include MongoMapper::EmbeddedDocument
  belongs_to :elementable, :polymorphic => true
  timestamps!

  def self.build(element_type, attributes = {})
    "#{element_type.capitalize}Element".constantize.new(attributes)
  end    
end
