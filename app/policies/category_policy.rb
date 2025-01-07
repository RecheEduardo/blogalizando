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

  # user&.admin? se o user é admin ele pode realizar a ação
  def index?
    user&.admin
  end

  def create?
    user&.admin?
  end

  def update?
    user&.admin?
  end

  def destroy?
    user&.admin?
  end
end
