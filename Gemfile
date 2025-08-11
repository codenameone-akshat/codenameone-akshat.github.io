# Gemfile for GitHub Pages with hacker theme + customizations
source "https://rubygems.org"

# Use github-pages which includes the hacker theme
gem "github-pages", "~> 232", group: :jekyll_plugins

# Required for Ruby 3.0+
gem "webrick", "~> 1.7"

# Platform-specific gems
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", platforms: [:mingw, :x64_mingw, :mswin]
gem "http_parser.rb", "~> 0.6.0", platforms: [:jruby]

gem "sass-embedded"