class Trace < ActiveRecord::Base
    belongs_to :requirement
    belongs_to :dependent_requirement, :class_name => "Requirement"
end
