class Comment
	include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :wedding

  field :content, type: String
end