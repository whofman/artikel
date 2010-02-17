class Artdb < ActiveRecord::Base
  attr_accessible :titel, :soort, :tijdschrift, :jaargang, :url
  validates_presence_of :titel, :jaargang
  validates_format_of :jaargang, :with => /\A20[0-9]{2}\-[0-9]{2}\Z/
#  validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix

  def validate
    if jaargang == ''
      errors.add(:jaargang, "Specificeer als jjj-mm")
    end
  end
end
