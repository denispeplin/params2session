module Params2session
  module CommonHelpers
    def session_param(param_name)
      session["#{controller_name}.#{param_name}"]
    end

    def session_equal?(param_name, value)
      session_param(param_name) == value
    end
  end

  module Controller
    def session_save(param_name)
      session["#{controller_name}.#{param_name}"] = params[param_name] if params[param_name]
    end

    def session_update(param_name, value)
      session["#{controller_name}.#{param_name}"] = value
    end

    def session_default(param_name, value)
      update_session(param_name, value) unless session_param(param_name)
    end
  end
end

ActionController::Base.send(:include, Params2session::CommonHelpers)
ActionController::Base.send(:include, Params2session::Controller)
ActionView::Base.send(:include, Params2session::CommonHelpers)
