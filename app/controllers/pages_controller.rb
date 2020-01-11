class PagesController < ApplicationController
    def index
        @billboards = Billboard.order(created_at: :asc).limit(10)
    end
end
