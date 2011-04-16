class Requirement < ActiveRecord::Base
    belongs_to :parent, :class_name => "Requirement", :primary_key => "parent_requirement_id"
    has_many :children, :class_name => "Requirement", :foreign_key => "parent_requirement_id"
end
