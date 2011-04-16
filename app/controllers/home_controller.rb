class HomeController < ApplicationController
    def index
        @requirements = Requirement.all
        @traces = Trace.all
    end
end
