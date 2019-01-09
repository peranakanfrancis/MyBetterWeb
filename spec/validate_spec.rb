require 'spec_helper'
require 'yaml'

# Documented at https://jekyllrb.com/news/2017/03/02/jekyll-3-4-1-released/
post_regex = %r!^(?:.+/)*(\d{2,4}-\d{1,2}-\d{1,2})-(.*)(\.[^.]+)$!

def date_in_front_matter(date)
  return date if date.is_a?(Date)
  return date.to_date if date.is_a?(Time)
  return Date.parse(date) if date.is_a?(String)
end

describe 'posts' do
  Dir.glob("_posts/*markdown").each do |file|
    basename = File.basename(file)

    context basename do
      front_matter = YAML.load(File.read(file).split(/---/)[1])

      it 'filename must match documented post regex' do
        expect(basename).to match post_regex
      end

      it 'date in file name same day as date in front matter' do
        date_in_file_name = Date.parse(post_regex.match(basename).captures[0])
        expect(date_in_front_matter(front_matter['date'])).to eq date_in_file_name
      end

      it 'title in front matter should not contain a colon' do
        expect(front_matter['title']).to_not match /:/
      end

      it 'front matter should not have published: false' do
        expect(front_matter['published']).to_not be false
      end
    end
  end
end
