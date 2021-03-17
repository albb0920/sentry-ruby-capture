sentry-ruby-capture
-------------------

`sentry-ruby` gem does not provides an API that directly replace `Raven.capture`,
see https://github.com/getsentry/sentry-ruby/issues/1267

This gem adds `Sentry.capture`, which behaves like `Raven.capture`.
