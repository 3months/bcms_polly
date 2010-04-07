class CreatePollVotes < ActiveRecord::Migration
  def self.up
    create_table :poll_votes do |t|
      t.integer :poll_option_id 
      t.timestamps
    end
    
    
  end

  def self.down
    drop_table :poll_votes
  end
end
