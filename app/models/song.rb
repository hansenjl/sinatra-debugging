class Song < ActiveRecord::Base
  extend Slug::ClassMethods
  include Slug::InstanceMethods

  belongs_to :artists
  has_many :song_genres
  has_many :genres, through: :song_genres
end