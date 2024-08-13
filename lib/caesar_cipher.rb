# frozen_string_literal: true

# Class for a basic caesar cipher
class CaesarCipher
  def shift(string, shift_factor)
    shifted_codepoints = string.codepoints.map do |codepoint|
      if codepoint.between?(65, 90) || codepoint.between?(97, 122)
        base = codepoint < 97 ? 65 : 97
        ((codepoint - base + shift_factor) % 26) + base
      else
        codepoint
      end
    end

    shifted_codepoints.map(&:chr).join
  end
end
