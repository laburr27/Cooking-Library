class CreateCookbooks < ActiveRecord::Migration[5.0]
  def change
    create_table  :cookbooks do |t|
      t.string    :title
      t.string    :author
      t.string    :type
      t.text      :summary
    end
  end
end
