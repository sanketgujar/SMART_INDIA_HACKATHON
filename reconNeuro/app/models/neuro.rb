class Neuro < ActiveRecord::Base
  has_attached_file :object1, styles: { thumb: '150x150>' }
  validates_attachment_content_type :object1, content_type: /\Aimage\/.*\z/
end
