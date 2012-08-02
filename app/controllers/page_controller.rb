
require 'rss'
require 'open-uri'
class PageController < ApplicationController

	def index
		@feeds = read
	end


	def read
		rss_feed = "http://news.google.com/news?q=apple&output=rss"
		rss_content = ""

		open(rss_feed) do |f|
		   rss_content = f.read
		end

		rss = RSS::Parser.parse(rss_content, false)
		puts "Title: #{rss.channel.title}"
		puts "RSS URL: #{rss.channel.link}"
		puts "Total entries: #{rss.items.size}"

		rss.items.collect { |item| item.description.gsub(/(<[^>]*>)|\n|\t/s," ")}
	end
end

