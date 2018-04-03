#!/usr/bin/env ruby
require 'rdoc'
if ARGV[0] == '--man'
  manual = DATA.read
  # html = RDoc :: Markup :: ToHtml . new ( RDoc :: Options . new )
  ansi = RDoc::Markup::ToAnsi.new
  puts ansi.convert(manual)
  end
__END__

= Description

  Simple program that counts how many times given lengths of string appeared

= Usage

  After running program you will be asked to enter some characters "String: "
  When you're finished just click enter.
  When you're done with adding strings use CTRL + D

= Example

  $ ./main.rb
  String: dd
  String: eeee
  String: ff
  String: fffsd
  String: asd
  String: ww
  String: rr
  String:
  Length of string 	Occurence
  2 					4
  4 					1
  5 					1
  3 					1

