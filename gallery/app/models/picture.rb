class Picture < ApplicationRecord
    belongs_to :gallery

    has_attached_file :image,
        :path => ":rails_root/public/images/:id/:filename",
        :url => "/images/:id/:filename",
        :styles => {
            thumb: ["100x100#", :png],
            large: ["300x300#", :jpg]
        }

    do_not_validate_attachment_file_type :image
end
