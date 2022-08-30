class LabelMaker
  NUMBER_OF_ALPHABET = 26
  ALPHABET_ARRAY = ('A'..'Z').to_a

  def initialize; end

  def get_equivalent_sequence(integer)
    return nil unless integer.is_a? Integer

    @integer = integer
    computeequivalent_sequence
  end

  private

  def compute_equivalent_sequence
    return '' if @integer.zero?

    quotient = @integer.to_f / NUMBER_OF_ALPHABET

    return ALPHABET_ARRAY[@integer - 2] if (@integer % 1).zero? && @integer.is_a?(Float)
    return ALPHABET_ARRAY[@integer - 1] if @integer < 27

    gap_from_alphabet = NUMBER_OF_ALPHABET * quotient.to_i
    difference = @integer - gap_from_alphabet - 1

    equivalent_sequence(quotient) + (ALPHABET_ARRAY[difference.to_i])
  end
end


# AA -> 27 ==> 'A' -> 27 - 26 ==> 'A'
# AB -> 28 ==> 'B' -> 28 - 26 ==> 'BB'
# AZ -> 52
# BA -> 53
# AAA -> 676