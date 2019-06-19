class PublicationPolicy < ApplicationPolicy
  attr_reader :user, :publication

  def initialize(user, publication)
    @user = user
    @publication = publication
  end

  def self.index?
    true
  end

  def self.show?
    true
  end

  def self.update?
    if @publication.user.id == @user.id
      true
    else
      false
    end
  end

  def self.edit?
    if @publication.user.id == @user.id
      true
    else
      false
    end
  end

  def self.destroy?
    if @publication.user.id == @user.id
      true
    else
      false
    end
  end
end
