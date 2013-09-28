class CreateSubtitleRequests < ActiveRecord::Migration
  def change
    create_table :subtitles do |t|
      t.string :url
      t.string :email
      t.string :language

      t.timestamps
    end
  end
end
