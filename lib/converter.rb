require_relative 'numbers'

module Converter
    def self.char_length
        3
    end

    def self.read_char(lines, start_pos = 0, accum = '')
        values = lines.map{|line| line[start_pos, char_length]}.join
        return accum if values == ''
        read_char lines, start_pos + char_length, accum << Numbers[values]
    end
end