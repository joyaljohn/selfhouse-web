class PublicationPolicy < ApplicationPolicy
  attr_reader :user, :publication

  def initialize(user, publication)
    @user = user
    @publication = publication
  end

  def self.update?
    @publication.user == @user
  end

  def self.edit?
    @publication.user == @user
  end

  def self.destroy?
    @publication.user == @user
  end
end
