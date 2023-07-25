class CreateClones < ActiveRecord::Migration[7.0]
  def change
    create_table :clones do |t|
      t.string :description
      t.string :username

      t.timestamps
    end
  end
end
