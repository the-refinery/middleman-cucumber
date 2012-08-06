# It's like Cucumber-Rails, but for Middleman

This little library enables you to run Cucumber features against your Middleman app. Why would you ever use Cucumber to test a static site? If your "static" site is full of Javascript processing, you might like it.

To use, add `middleman-cucumber` to your `Gemfile` in your test group, or just:

    gem install middleman-cucumber

If you aren't using bundler, be sure to `require 'middleman-cucumber'` in `features/support/env.rb`.


This also adds a test environment to Middleman, so if you need to do any configuration specific to your tests you can just:

```ruby

configure :test do
  # Use testing API for Cucumber tests
  map "/api" do
    use TestingApi
  end
end

```

Good luck! Please let me know if you run into any issues by creating an [issue](/d-i/middleman-cucumber/issues).
