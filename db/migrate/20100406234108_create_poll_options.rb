class CreatePollOptions < ActiveRecord::Migration
  def self.up
    create_table :poll_options do |t|
      t.string :name 
      t.integer :poll_id 
      t.integer :poll_vote_count
    end
    
    
  end

  def self.down
    drop_table :poll_options
  end
end
