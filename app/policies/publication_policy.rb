# frozen_string_literal: true

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
    @publication.user.id == @user.id
  end

  def self.edit?
    @publication.user.id == @user.id
  end

  def self.destroy?
    @publication.user.id == @user.id
  end
end
