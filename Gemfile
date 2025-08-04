# Gemfile for GitHub Pages Jekyll site
source "https://rubygems.org"

# Specify Ruby version (optional but recommended)
ruby "~> 3.4.0"

# Use the github-pages gem to ensure compatibility with GitHub Pages
gem "github-pages", group: :jekyll_plugins

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.2.0", platforms: [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", platforms: [:jruby]

# Required for Ruby 3.0+ (webrick was removed from stdlib)
gem "webrick", "~> 1.8"

# Additional gems that may be needed for Ruby 3.4
gem "csv"
gem "ostruct"
