require "news"
require "thor"
require "rss"

module News
  class CLI < Thor
    desc "hello", "say 'hello world!'."
    def hello
      puts "Hello World!"
      rss = RSS::Parser.parse('http://rakkyoo.net/?feed=rss2')
      puts rss
    end
    desc "jp", "jp google news"
    def jp
    	rss = RSS::Parser.parse('http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss')
      i = rand(rss.items.length - 1)
      puts rss.items[i].title
      #rss.items.each{|item|
      #  puts item.title
        #puts item.link
        #p item.description
      #}
    end
  end
end