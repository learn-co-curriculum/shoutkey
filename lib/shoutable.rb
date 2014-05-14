require 'nokogiri'
require 'open-uri'
module Shoutable
  def shoutkey
    doc = Nokogiri::HTML(open("http://shoutkey.com/new?url=" + url))
    doc.css('.hero-unit h1 a').text
  end
end