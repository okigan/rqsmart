class HomeController < ApplicationController
    def index
        @requirements = Requirement.all
        @toplevel_requirements = Requirement.rootlevel
        @traces = Trace.all
    end
end
