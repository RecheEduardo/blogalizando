class CategoryPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      if user&.admin? 
        scope.all
      else
        raise Pundit::NotAuthorizedError
      end
    end
  end

  def index?
    user&.admin
  end

  def create?
    user.admin? # se o user é admin ele pode criar uma categoria
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
