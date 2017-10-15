class CreateUpvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :upvotes do |t|
      t.boolean :like
      t.references :votable, polymorphic: true

      t.timestamps
    end
  end
end
