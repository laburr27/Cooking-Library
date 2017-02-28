class CreateCookbooks < ActiveRecord::Migration[5.0]
  def change
    create_table  :cookbooks do |t|
      t.string    :title, null: false
      t.string    :img_url
      t.string    :author
      t.string    :format
      t.text      :summary
      t.references :bookshelf, index: true, foreign_key: true
      t.timestamps
    end
  end
end
