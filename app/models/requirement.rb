class Requirement < ActiveRecord::Base
    belongs_to :parent, :class_name => "Requirement", :foreign_key => "parent_requirement_id"
    has_many :children, :class_name => "Requirement", :foreign_key => "parent_requirement_id"
    
    has_many :traces
    
    has_many :depends_on, :through => :traces, :class_name => "Requirement"
    
    has_many :reverse_traces, :foreign_key => "dependent_requirement_id",
                                   :class_name => "Trace",
                                   :dependent => :destroy
    has_many :dependcy_off, :through => :reverse_relationships, :source => :dependent_requirement
    
    scope :rootlevel    , where(:parent_requirement_id => nil)
    
    scope :lowerlevel, where("parent_requirement_id <> ?", 0)
    
    def outofdate
        if self.parent == nil
        else
            return self.parent.updated_at > updated_at
        end
        
        traces.each do |t| 
            if t.updated_at > updated_at
                return true;
            end
        end
        
        return false;
    end
end
