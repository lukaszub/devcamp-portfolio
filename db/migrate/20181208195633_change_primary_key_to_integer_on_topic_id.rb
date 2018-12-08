class ChangePrimaryKeyToIntegerOnTopicId < ActiveRecord::Migration[5.2]
  def change
  	change_column :blogs, :topic_id, :integer
  end
end
