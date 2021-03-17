Gem::Specification.new do |s|
  s.name = "sentry-ruby-capture"
  s.version = "1.0.0"
  s.summary = "Looking for `Sentry.capture` ? Here's the method sentry-ruby gem refused to give you"
  s.authors = ["Albert Song"]
  s.files = ["lib/sentry-ruby-capture.rb"]
  s.license = "CC0-1.0"
  s.add_dependency "sentry-ruby", ">= 4.0.0"

  s.description = <<~END
    sentry-ruby does not provides an API that directly replace Raven.capture,
    see https://github.com/getsentry/sentry-ruby/issues/1267

    This gem adds it back, that's it.
  END
end
