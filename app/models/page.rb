class Page < ActiveRecord::Base
  attr_accessible :content, :slug, :title

  validates :slug, uniqueness: true, presence: true,
            exclusion: {in: %w[signup login signout]}

end
