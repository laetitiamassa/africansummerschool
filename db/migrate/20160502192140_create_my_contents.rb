class CreateMyContents < ActiveRecord::Migration
  def change
    create_table :my_contents do |t|
      t.text :home_content
      t.text :concept_content
      t.text :program_content
      t.text :about_content

      t.timestamps null: false
    end
  end
end
