class AddColumnTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :channel, :string
  end
end
