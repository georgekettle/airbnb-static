class FlatsController < ApplicationController
    before_action :get_flats, only: [:index, :show]

    # def new
    #     generate_letters
    # end

    # def score
    #     letters = params[:letters]
    # end

    def index
        # render 'flats/index.html.erb'
    end

    def show
        # get specific flat using id
        id = params[:id].to_i
        @flat = @flats.find{ |flat| flat['id'] == id }
        next_flat_index = @flats.index(@flat) + 1
        @next_flat = @flats[next_flat_index]
    end

    private

    # def generate_letters
    #     # CALL API AND RETURN LETTERS
    #     @letters = 'uhbjhvkjhv'
    # end

    def get_flats
        url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
        response = URI.open(url).read
        @flats = JSON.parse(response)
    end
end
