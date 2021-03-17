require "sentry-ruby"

unless Sentry.respond_to? :capture
  def Sentry.capture(*args, **kwargs)
    if block_given?
      begin
        yield
      rescue Exception => e
        Sentry.capture_exception(e, *args, **kwargs)
      end
    else
      at_exit do
        Sentry.capture_exception($!, *args, **kwargs) if $!
      end
    end
  end
end
