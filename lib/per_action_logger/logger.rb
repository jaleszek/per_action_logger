module PerActionLogger
  class Logger < Rails::Rack::Logger
    def initialize app, opts = {}
      @default_log = Rails.logger

      @per_action_log = Logger.new Rails.root.join('log', "#{opts[:action].parameterize}.log")

      @app = app
      @opts = opts
      @opts[:action] = Array @opts[:action]

      super app
    end

    def call env
      if @opts[:action].include? env['PATH_INFO']
        logfile = @per_action_log
      else
        logfile = @default_log
      end

      ActiveRecord::Base.logger = logfile
      ActionController::Base.logger = logfile
      Rails.logger = logfile

      @logger = logfile

      super
    end
  end
end