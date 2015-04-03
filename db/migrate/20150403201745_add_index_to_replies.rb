class AddIndexToReplies < ActiveRecord::Migration
    def self.up
    add_index :replies, :comment_id
  end

  def self.down
    remove_index :replies
  end
end
