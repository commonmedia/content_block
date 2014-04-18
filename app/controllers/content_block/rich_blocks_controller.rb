require_dependency "content_block/application_controller"

module ContentBlock
  class RichBlocksController < ApplicationController
    before_action :set_rich_block, only: [:show, :edit, :update, :destroy]

    # GET /rich_blocks
    def index
      @rich_blocks = RichBlock.all
    end

    # GET /rich_blocks/1
    def show
    end

    # GET /rich_blocks/new
    def new
      @rich_block = RichBlock.new
    end

    # GET /rich_blocks/1/edit
    def edit
    end

    # POST /rich_blocks
    def create
      @rich_block = RichBlock.new(rich_block_params)

      if @rich_block.save
        redirect_to @rich_block, notice: 'Rich block was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /rich_blocks/1
    def update
      if @rich_block.update(rich_block_params)
        redirect_to @rich_block, notice: 'Rich block was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /rich_blocks/1
    def destroy
      @rich_block.destroy
      redirect_to rich_blocks_url, notice: 'Rich block was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_rich_block
        @rich_block = RichBlock.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def rich_block_params
        params.require(:rich_block).permit(:name, :title, :content)
      end
  end
end
