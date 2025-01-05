class CommentsController < ApplicationController
    before_action :set_article
    
    def create
        @article.comments # Adiciona na criação o usuário que fez o comentário
        .create(comment_params.to_h.merge!({ user_id: current_user&.id}))

        redirect_to article_path(@article), notice: t('app.create.success', model: Category.model_name.human)
    end

    def destroy
        @comment = @article.comments.find(params[:id])

        unless current_user&.admin? || current_user&.id == @comment.user_id
            redirect_to article_path(@article), alert: "You are not authorized to delete this comment."
            return
        end

        @comment.destroy!

        respond_to do |format|
            format.html { redirect_to article_path(@article), status: :see_other, notice: notice: t('app.destroy.success', model: Category.model_name.human) }
            format.json { head :no_content }
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:body)
    end

    def set_article
        @article = Article.find(params[:article_id])
    end
end
