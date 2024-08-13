# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe CaesarCipher do # rubocop:disable Metrics/BlockLength
  describe '#shift' do # rubocop:disable Metrics/BlockLength
    subject(:cipher_shift) { described_class.new }

    it 'works with lowercase characters' do
      input = 'test'
      expected = 'vguv'
      actual = cipher_shift.shift(input, 2)
      expect(actual).to eq(expected)
    end

    it 'works with uppercase characters' do
      input = 'TEST'
      expected = 'VGUV'
      actual = cipher_shift.shift(input, 2)
      expect(actual).to eq(expected)
    end

    it 'works with both lowercase and uppercase characters' do
      input = 'TeSttEsT'
      expected = 'VgUvvGuV'
      actual = cipher_shift.shift(input, 2)
      expect(actual).to eq(expected)
    end

    it 'works with non-english characters' do
      input = "!,?|/-  \"'[]{}()=+<>"
      expected = "!,?|/-  \"'[]{}()=+<>"
      actual = cipher_shift.shift(input, 5)
      expect(actual).to eq(expected)
    end

    it 'works with shift < 0' do
      input = 'test'
      shift = -1
      expected = 'sdrs'
      actual = cipher_shift.shift(input, shift)
      expect(actual).to eq(expected)
    end

    it 'works with shift == 0' do
      input = 'test'
      shift = 0
      expected = input
      actual = cipher_shift.shift(input, shift)
      expect(actual).to eq(expected)
    end

    it 'works with shift < 26' do
      input = 'test'
      shift = 25
      expected = 'sdrs'
      actual = cipher_shift.shift(input, shift)
      expect(actual).to eq(expected)
    end

    it 'works with shift == 26' do
      input = 'test'
      shift = 26
      expected = input
      actual = cipher_shift.shift(input, shift)
      expect(actual).to eq(expected)
    end

    it 'works with shift > 26' do
      input = 'test'
      shift = 27
      expected = 'uftu'
      actual = cipher_shift.shift(input, shift)
      expect(actual).to eq(expected)
    end
  end
end
