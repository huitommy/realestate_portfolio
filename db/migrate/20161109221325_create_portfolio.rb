class CreatePortfolio < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.belongs_to :user, null: false
    end
  end
end
