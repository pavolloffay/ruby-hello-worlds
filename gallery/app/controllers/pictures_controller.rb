class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    gallery = @picture.gallery

    raise "another user" if @picture.gallery.user != current_user  

    @picture.destroy
    respond_to do |format|
      format.html { redirect_to gallery_url(gallery), notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_params
      params.fetch(:picture, {})
    end
end
