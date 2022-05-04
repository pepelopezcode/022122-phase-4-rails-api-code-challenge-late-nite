class EpisodeWithGuestSerializer < ActiveModel::Serializer
  attributes :id, :date, :number
  has_many :guests 
end
