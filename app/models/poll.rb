class Poll < ActiveRecord::Base
  acts_as_content_block :versioned => false
  has_many :poll_options
  attr_accessor :options
  after_create :save_options
  after_update :update_options

  private
  
  def save_options
    self.options.each do |option|
      self.poll_options.find_or_create_by_name(option) unless option.blank?
    end
  end

  def update_options
    self.options.each do |k,v|      
      if v.blank?
        self.poll_options.find_by_id(k.to_i).destroy
      else
        self.poll_options.find_by_id(k.to_i).update_attribute(:name, v)
      end
    end

  end
  

end
