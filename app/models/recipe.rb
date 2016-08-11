class Recipe < ApplicationRecord
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :image,
                                    :content_type => ["image/jpg", "image/jpeg", "image/png"]
  validates :name, :description, :ingredient, :image, presence: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

end


