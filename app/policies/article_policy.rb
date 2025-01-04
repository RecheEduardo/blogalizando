class ArticlePolicy < ApplicationPolicy
  # Define the permissions for showing, updating, and destroying the article.

  def show?
    true  # Permite a visualização de qualquer artigo, você pode mudar conforme necessário
  end

  def update?
    user.id == record.user.id  # Permite editar o artigo apenas se for o autor
  end

  def destroy?
    user.id == record.user.id  # Permite deletar o artigo apenas se for o autor
  end

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all  # Todos os artigos podem ser acessados pelo usuário (mude conforme necessário)
    end
  end
end