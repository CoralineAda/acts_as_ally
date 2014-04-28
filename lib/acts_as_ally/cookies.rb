module ActsAsAlly
  module Cookies

    def included(klass)
      base.send(:attr_accessor, :cookies)
    end

    def cookies
      @cookies ||= []
    end

  end
end
