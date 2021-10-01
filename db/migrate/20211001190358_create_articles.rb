class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :movie
      t.text :review

      t.timestamps
    end
  end
end
