require 'crate_ruby'

namespace :crate do
  desc "TODO"
  task :setup => :environment do
    session = CrateRuby::Client.new(CRATE_OPTIONS[:hosts])

    session.execute(
      "CREATE TABLE IF NOT EXISTS tweeter.tweets ( \
          kind string, \
          id string, \
          content string, \
          created_at timestamp, \
          handle string \
      )"
    )
    session.execute(
      "CREATE TABLE IF NOT EXISTS tweeter.analytics ( \
          kind string, \
          key string, \
          frequency integer \
      )"
    )
  end
end
