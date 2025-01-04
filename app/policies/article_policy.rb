class ArticlePolicy < ApplicationPolicy

  def show?
    true
  end

  def update?
    user&.id == record.user.id || user&.admin?  # Retorna true apenas se for o autor ou admin do site
  end

  def destroy?
    user&.id == record.user.id || user&.admin?
  end

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end
end