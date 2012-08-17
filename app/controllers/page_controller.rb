require 'rss'
require 'open-uri'
require 'feedzirra'
class PageController < ApplicationController

def index
	@feeds = read_feed_zirra
end

private
	def read_feed_zirra
		feed = Feedzirra::Feed.fetch_and_parse("http://news.google.com/news?q=apple&output=rss&num=200")
		# feed2 = Feedzirra::Feed.fetch_and_parse("http://www.wired.com/magazine/feed/")
		feed.entries.collect { |entry| entry.content || entry.summary }
	end
end

