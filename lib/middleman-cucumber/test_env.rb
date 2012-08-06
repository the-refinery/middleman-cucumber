module Middleman
  module Extensions
    module TestEnv
      class << self
        def registered(app)
          app.define_hook :test_config
          app.after_configuration do
            app.run_hook :test_config if test?
          end
          app.send :include, InstanceMethods
        end
        alias :included :registered
      end

      module InstanceMethods
        def test?; environment == :test end
      end

    end
    register :test_env, TestEnv
  end
end
