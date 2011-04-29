#!/usr/bin/env ruby

dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift dir + '/../lib'

require 'midi-message'
require 'pp'

include MIDIMessage

# start and stop messages for a sequencer

pp NoteOn.find("C4", 0, 100)
pp SystemRealtime.find("Start")
pp SystemRealtime.find("Stop")

# this should output something like:

#
# #<MIDIMessage::NoteOn:0x8c32960
#  @channel=0,
#  @data=["C4", 100],
#  @note="C4",
#  @status=[9, 0],
#  @velocity=100>
#
# #<MIDIMessage::SystemRealtime:0x89fda3c
#  @name="Start",
#  @status=[15, 250],
#  @verbose_name="System Realtime: Start">
#
# #<MIDIMessage::SystemRealtime:0x89fc600
#  @name="Stop",
#  @status=[15, 252],
#  @verbose_name="System Realtime: Stop">
#
