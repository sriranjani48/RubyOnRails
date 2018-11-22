class CreateSites < ActiveRecord::Migration[5.2]
  def self.up
    create_table :sites do |t|
    	t.column :name, :string
      t.timestamps
    end
    Site.create :name => "GeeksforGeeks"
    Site.create :name => "LeetCode"
    Site.create :name => "HackerRank"
  end
  

  def self.down
  	drop_table :sites
  end

  
end
