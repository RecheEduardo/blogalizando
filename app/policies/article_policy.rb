class ArticlePolicy < ApplicationPolicy

  def show?
    true
  end
  # user&.id == record.user.id || user&.admin? retorna true apenas se for o autor ou admin do site
  def update?
    user&.id == record.user.id || user&.admin?  
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