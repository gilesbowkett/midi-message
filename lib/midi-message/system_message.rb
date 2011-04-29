#!/usr/bin/env ruby
#
module MIDIMessage
  
  #
  # MIDI System-Common message
  #
  class SystemCommon

    include SimpleMessageBehavior
    DisplayName = 'System Common'

    attr_reader :status,
                :data
    
    def initialize(status_nibble_2, data_byte_1 = nil, data_byte_2 = nil)
      @data = [data_byte_1, data_byte_2]
      initialize_simple_message(0xF, status_nibble_2)
    end
    
  end  
  
  #
  # MIDI System-Realtime message
  #
  class SystemRealtime

    include SimpleMessageBehavior
    DisplayName = 'System Realtime'

    attr_reader :status
    
    def initialize(id)
      initialize_simple_message(0xF, id)
    end

    def id
      @status[1]
    end

  end
  
end