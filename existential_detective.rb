require 'mrkv'

mark = Mrkv::Chain.new 4

Dir.entries('sauce')[2..-1].each do |file|
  mark.add File.readlines 'sauce/' + file
end

put_downs = ["a lack of respect.",
  "an air of condescension.",
  "a hint of pomp and circumstance.",
  "a dreary sigh...",
  "an uncomfortable level of candor.",
  "a frightening level of disdain for the working class.",
  "an addendum that we should all recycle and drink more water.",
  "an urgent plea to stop global warming.",
  "a sort of gurgling noise that sounded like 'akdjfniuiuuiiuuiuiiiiii'",
  "an indiscernible level of smugness",
  "their ring tone going off at a very un ignorable volume level.",
  "a light hint of sassiness.",
  "no regard for their surroundings.",
  "an arrogant demeanor. ",
  "an alarming quantity of spit.",
  "absolute certainty.",
  "a glimmer in his eye...",
  "sort of a tilt to their head, as though they were maybe asking a question?",
   ]

novel = "<div style='width: 640px; margin: auto;font-family: Arial, Helvetica, sans-serif;'><h2><em>On a cold and dark night in London, Sherlock Holmes and Dr. Watson are having a passionate discussion about an ongoing case...</em></h2>\n\n" +
(title = "<h1><strong>THE CASE OF THE " + mark.generate.upcase) + " VOLUME: " + ((rand 12) + 1).to_s + "</strong></h1>\n\n\n"

def an_aside mark
  dudes = %w(Watson Holmes)
  actions = ["stares out at the",
            "paces back and forth amid the",
            "rudely answers a phone call from the",
            "orders takeout from the",
            "grimly considers the magnitude of the",
    ]

  stuffz = ["night sky", "chaos", "eternal darkness", "law enforcement", "pizza place"]

  talk_verbs = ["thinks to himself: </sub><strong>\"",
                "wonders aloud: </sub><strong>\"",
                "murmurs under his breath: </sub><strong>\"",
                "sighs as he considers: </sub><strong>\""]

  "<em><sub>"+dudes.sample+" "+actions.sample+" "+stuffz.sample+" and "+talk_verbs.sample+mark.generate[0...-1]+"?\"</strong></em>"
end



until novel.split.length > 12000
  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Dr. Watson to Inspector Holmes with ' + put_downs.sample + "</em></sub></p>\n"

  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Inspector Holmes to Dr. Watson with ' + put_downs.sample + "</em></sub></p>\n"

  novel << (an_aside mark) if rand < 0.1
end

mark = Mrkv::Chain.new 3

Dir.entries('sauce')[2..-1].each do |file|
  mark.add File.readlines 'sauce/' + file
end

until novel.split.length > 20000
  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Dr. Watson to Inspector Holmes with ' + put_downs.sample + "</em></sub></p>\n"

  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Inspector Holmes to Dr. Watson with ' + put_downs.sample + "</em></sub></p>\n"

  novel << (an_aside mark) if rand < 0.1
end

mark = Mrkv::Chain.new 2

Dir.entries('sauce')[2..-1].each do |file|
  mark.add File.readlines 'sauce/' + file
end


until novel.split.length > 32000
  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Dr. Watson to Inspector Holmes with ' + put_downs.sample + "</em></sub></p>\n"

  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Inspector Holmes to Dr. Watson with ' + put_downs.sample + "</em></sub></p>\n"

  novel << (an_aside mark) if rand < 0.1
end

mark = Mrkv::Chain.new 1

Dir.entries('sauce')[2..-1].each do |file|
  mark.add File.readlines 'sauce/' + file
end

until novel.split.length > 50000
  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Dr. Watson to Inspector Holmes with ' + put_downs.sample + "</em></sub></p>\n"

  novel << "<p>\"" + mark.generate + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.3 ? ' ' + mark.generate : '' ) + (rand < 0.15 ? ' ' + mark.generate : '' )  + "\"<sub><em>" + ' said Inspector Holmes to Dr. Watson with ' + put_downs.sample + "</em></sub></p>\n"

  novel << (an_aside mark) if rand < 0.1
end



novel << "<marquee><h3><strong><em>THE END</em></strong></h3></div></marquee>"

File.open('text.html', 'w') do |f|
  f.puts novel
end