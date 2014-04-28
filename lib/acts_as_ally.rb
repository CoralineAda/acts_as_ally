require "acts_as_ally/version"

module ActsAsAlly

  def self.included(klass)
    klass.extend ClassMethods
    klass.send(:attr_writer, :cookies)
  end

  def cookies
    @cookies ||= []
  end

  module ClassMethods
    def not_all
      limit([(count * 0.05).to_i, 1].max)
    end
  end

end
