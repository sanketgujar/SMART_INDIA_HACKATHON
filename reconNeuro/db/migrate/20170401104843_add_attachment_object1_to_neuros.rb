class AddAttachmentObject1ToNeuros < ActiveRecord::Migration
  def self.up
    change_table :neuros do |t|
      t.attachment :object1
    end
  end

  def self.down
    remove_attachment :neuros, :object1
  end
end
