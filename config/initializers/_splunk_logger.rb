if AppConfig[:enable_splunk_logging]
  require File.expand_path('../../../lib/log_overrider', __FILE__)
  Rails.logger.class.send(:include, SplunkLogging)
end

