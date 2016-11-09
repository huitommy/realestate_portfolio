class CreateWatchList < ActiveRecord::Migration[5.0]
  def change
    create_table :watch_lists do |t|
      t.belongs_to :user, null: false
    end
  end
end
