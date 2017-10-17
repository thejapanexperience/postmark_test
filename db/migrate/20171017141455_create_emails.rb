class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :address
      t.string :subject
      t.text :text

      t.timestamps
    end
  end
end
