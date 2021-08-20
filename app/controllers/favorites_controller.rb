class FavoritesController < ApplicationController
    def index
        @favorites = current_user.favorites
    end
    def create
      favorite = current_user.favorites.create(post_id: params[:post_id])
      if favorite.save
        redirect_to posts_path, notice: "#{favorite.post.user.name} Le post a été ajouté aux favoris"
      end
    end
    def destroy
      favorite = current_user.favorites.find_by(id: params[:id]).destroy
      redirect_to posts_path, notice: "#{favorite.post.user.name} post non blogué de M."
    end
end