let
  # testing constructor and pdf
  d = BoolDistribution(0.3)
  @test pdf(d, true) == 0.3
  @test pdf(d, false) == 0.7

  # testing support
  @test support(d) == [true, false]

  # testing ==
  d2 = BoolDistribution(0.3)
  @test d == d2

  # testing hash
  @test hash(d) == hash(d.p)
end