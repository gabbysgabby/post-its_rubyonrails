class AddPriorityToPostits < ActiveRecord::Migration[5.0]
  def change
    add_column :postits, :priority, :integer
  end
end
