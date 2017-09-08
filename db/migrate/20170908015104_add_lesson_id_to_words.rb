class AddLessonIdToWords < ActiveRecord::Migration
  def change
    add_column :words, :lesson_id, :integer
  end
end
