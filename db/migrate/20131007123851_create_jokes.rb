class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :title
      t.string :type
      t.string :author
      t.date :date
      t.text :joke

      t.timestamps
    end
  end
end
