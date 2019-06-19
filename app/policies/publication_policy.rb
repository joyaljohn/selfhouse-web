class PublicationPolicy < ApplicationPolicy
  attr_reader :user, :publication

  def initialize(user, publication)
    @user = user
    @publication = publication
  end

  def update?
    publication.user_id == user.id
  end

  def edit?
    publication.user_id == user.id
  end

  def destroy?
    publication.user_id == user.id
  end
end
