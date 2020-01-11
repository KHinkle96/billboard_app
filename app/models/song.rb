class Song < ApplicationRecord
    belongs_to :artist
    has_and_belongs_to_many :billboards
    def full_song
        "#{self.title} #{self.released_on} #{self.genre} #{self.rating}"
    end
end
