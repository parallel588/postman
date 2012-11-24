class CreatePostmanLetterTemplates < ActiveRecord::Migration
  def change
    create_table :postman_letter_templates do |t|
      t.string   :name, :null => false
      t.text     :text_content
      t.text     :html_content
      t.datetime :deleted_at, :default => nil
      t.timestamps
    end
  end
end
