class ApplePolicy < ApplicationPolicy
  # NOTE: Up to Pundit v2.3.1, the inheritance was declared as
  # `Scope < Scope` rather than `Scope < ApplicationPolicy::Scope`.
  # In most cases the behavior will be identical, but if updating existing
  # code, beware of possible changes to the ancestors:
  # https://gist.github.com/Burgestrand/4b4bc22f31c8a95c425fc0e30d7ef1f5

  def index?
    user.admin? || user.apple_consultant? || user.apple_intern?
  end

  def show?
    user.admin? || user.apple_consultant? || user.apple_intern?
  end

  def create?
    user.admin? || user.apple_consultant?
  end

  def update?
    user.admin? || user.apple_consultant?
  end

  def destroy?
    user.admin? || user.apple_consultant?
  end

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.admin? || user.apple_consultant?
        scope.all
      elsif user.apple_intern?
        scope.where(size: "small")
      end
    end
  end
end
