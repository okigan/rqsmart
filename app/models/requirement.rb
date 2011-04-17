class Requirement < ActiveRecord::Base
    belongs_to :parent, :class_name => "Requirement", :foreign_key => "parent_requirement_id"
    has_many :children, :class_name => "Requirement", :foreign_key => "parent_requirement_id"
    
    scope :rootlevel    , where(:parent_requirement_id => nil)
    
    scope :lowerlevel, where("parent_requirement_id <> ?", 0)
    
    def outofdate
        if self.parent == nil
            return false;
        else
            return self.parent.updated_at > updated_at
        end
    end
end
