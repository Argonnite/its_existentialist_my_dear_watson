require 'mrkv'

mark = Mrkv::Chain.new 3

Dir.entries('sauce')[2..-1].each do |file|
  mark.add File.readlines 'sauce/' + file
end

put_downs = ["a lack of respect.",  "an air of condescension.", "a hint of pomp and circumstance.", "a dreary sigh...", "an uncomfortable level of candor.", "a frightening level of disdain for the working class.", "an addendum that we should all recycle and drink more water.", "an urgent plea to stop global warming.", "a sort of gurgling noise that sounded like 'akdjfniuiuuiiuuiuiiiiii'", "an indiscernible level of smugness", "their ring tone going off at a very un ignorable volume level." ]

novel = "On a cold and dark night in London, Sherlock Holmes and Dr. Watson are out and about solving crimes...\n\n" +
"THE TALE OF THE " + mark.generate.upcase + " VOLUME: " + ((rand 12) + 1).to_s + "\n"

until novel.length > 50000
  novel << " \"" + mark.generate + "\"" + ' said watson to holmes with ' + put_downs.sample + "\n"

  novel << " \"" + mark.generate + "\"" + ' said holmes to watson with ' + put_downs.sample + "\n"
end

puts novel