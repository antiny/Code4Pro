class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :star
      t.text :comment

      t.timestamps null: false
    end
  end
end
