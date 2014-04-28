module ActsAsAlly
  module Cookies
    def included(klass)
      base.send(:attr_accessor, :cookies)
    end
  end
end
