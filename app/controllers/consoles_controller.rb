class ConsolesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        consoles = Console.all
        render json: consoles
    end

    def show
        console = find_console
        render json: console
    end

    def create
        console = Console.create!(console_params)
        render json: console
    end

    def update
        console = find_console
        console.update!(console_params)
        render json: console
    end

    def destroy
        console = find_console
        console.destroy
        head :no_content
    end

    private

    def console_params
        params.require(:console).permit(:name, :cost, :img_url, :storage_capacity)
    end

    def find_console
        Console.find(params[:id])
    end

    def render_not_found
        render json: { error: "console not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
