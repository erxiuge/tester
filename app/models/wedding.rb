class Wedding
  include Mongoid::Document

  embeds_many :gifts
  accepts_nested_attributes_for :gifts , allow_destroy: true

  
  field :title,  type: String
  field :url,    type: String
end
