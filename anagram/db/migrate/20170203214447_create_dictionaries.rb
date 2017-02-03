class CreateDictionaries < ActiveRecord::Migration[5.0]
  def change
    create_table :dictionaries do |t|

      t.string :key
      t.text :word

    end
  end

  def down
    drop_table :anagram
  end
end

=begin
rake db:migrate - migrate the table data
rake db:rollback - rollback data if mistake exists
=end
