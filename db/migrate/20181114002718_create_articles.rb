class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string      :name
      t.text        :text
      t.text        :image
      t.timestamps null: true
    end
  end
end
