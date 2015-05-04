class Wedding
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :gifts
  has_many :comments

  accepts_nested_attributes_for :gifts , allow_destroy: true

  
  field :title,  type: String
  field :url,    type: String
end
