class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: {on_delete: :cascade}
      t.timestamps null: false
    end
  end
end
