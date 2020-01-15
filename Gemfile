# frozen_string_literal: true
source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "jekyll"
gem "rspec"
gem "rake"
gem "pry"
gem "pry-rescue"
gem "pry-stack_explorer"
gem "pry-doc"
gem "debug_inspector", "<= 0.0.3"

group :jekyll_plugins do
    gem "jekyll-feed"
    gem "jekyll-seo-tag"
    gem "jekyll-sitemap"
end

gem 'mdl',
  :git => "https://github.com/alexharv074/markdownlint",
  :ref => "alexharvey/fix_md032_for_kramdown_tocs"
