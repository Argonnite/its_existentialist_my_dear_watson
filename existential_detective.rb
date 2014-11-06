require 'mrkv'

mark = Mrkv::Chain.new 3

Dir.entries('sauce')[2..-1].each do |file|
  mark.add File.readlines 'sauce/' + file
end

put_downs = ["a vague air of disdain.",  "an air of condescension.", ""]

novel = "On a cold and dark night in London, Sherlock Holmes and Dr. Watson are out and about solving crimes...\n\n" +
"THE TALE OF THE " + mark.generate.upcase + " VOLUME: " + ((rand 12) + 1).to_s

until novel.length > 50000
  novel << " \"" + mark.generate + "\"" + ' said watson to holmes with ' + put_downs.sample + "\n"

  novel << " \"" + mark.generate + "\"" + ' said holmes to watson with ' + put_downs.sample + "\n"
end

puts novel