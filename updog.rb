require "rubygems"
require "nokogiri"
require 'open-uri'

url       = "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query="
document  = Nokogiri::XML(open(url << ARGV[0]))

qualitive = document.css('fcttext')

document.css("simpleforecast forecastday").each_with_index do |forecastday, i|
  highs = forecastday.css('high')
  lows  = forecastday.css('low')
  
  print "\n"
  print forecastday.css("date weekday").first.content
  print "\n"
  print " High: #{highs.css('fahrenheit').first.content} F / #{highs.css('celsius').first.content} C \n"
  print " Low:  #{lows.css('fahrenheit').first.content} F / #{lows.css('celsius').first.content} C   \n"
  print " #{qualitive[i].content} \n" if qualitive[i]
end

print "\n"