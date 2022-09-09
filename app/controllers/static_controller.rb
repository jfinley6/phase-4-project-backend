class StaticController < ApplicationController

    def home
        render json: { status: "Nobodies home"}
    end

end