class Script
  attr_reader :number

  def initialize(number)
    @number = number
    @spe = 'Spe ' + rand.to_s
    @ler = 'dc'
    @swe = 'dcdc'
    @cd_dcc = 23_234
  end

  def twice
    @number * 2
  end
end
