# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  shifted_codepoints = string.codepoints.map do |codepoint|
    if codepoint.between?(65, 90) || codepoint.between?(97, 122)
      base = codepoint < 97 ? 65 : 97
      ((codepoint - base + shift_factor) % 26) + base
    else
      codepoint
    end
  end

  p shifted_codepoints.map(&:chr).join
end

caesar_cipher('What a string!', 5)
