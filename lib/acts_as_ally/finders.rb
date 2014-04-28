module ActsAsAlly

  module Finders

    def included(klass)
      base.extend ClassMethods
    end

    module ClassMethods
      def not_all
        all.sample((count * 0.5).to_u)
      end
    end

  end

end
