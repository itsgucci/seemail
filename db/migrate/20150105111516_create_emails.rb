class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :from
      t.string :subject
      t.text :message
      t.datetime :time

      t.timestamps
    end
  end
end
