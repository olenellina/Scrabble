#scrabble.rb
require 'awesome_print'
module Scrabble
  # SCORE_TABLE = {1 => %w(a e i o u l n r s t), 2 => %w(d g), 3 => %w(b c m p), 4 => %w(f h v w y), 5 => %w(k), 8 => %w(j x), 10 => %w(q z)}

  SCORE_TABLE = {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1,
    "d" => 2, "g" => 2,
    "b" => 3, "c" => 3, "m" => 3, "p" => 3,
    "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4,
    "k" => 5,
    "j" => 8, "x" =>8,
    "q" => 10, "z" => 10}


end

  # SCORE_TABLE = {1 => %w(a e i o u l n r s t), 2 => %w(d g), 3 => %w(b c m p), 4 => %w(f h v w y), 5 => %w(k), 8 => %w(j x), 10 => %w(q z)}
