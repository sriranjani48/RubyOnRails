class CreateProblems < ActiveRecord::Migration[5.2]
  def self.up
    create_table :problems do |t|
    	t.column :number, :integer
    	t.column :title, :string, :null => false
    	t.column :site_name, :string 
    	t.column :difficulty, :text
    	t.column :solution, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :problems
  end	
end
