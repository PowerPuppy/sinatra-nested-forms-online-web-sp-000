class Pirate
  attr_accessor :name, :height, :weight
  @@all = []

  def initialize(params)
    @name = params[:pirate][:name]
    @height = params[:pirate][:height]
    @weight = params[:pirate][:weight]
    @@all << self
  end

  def self.all
      @@all
  end

  def self.clear
    @@all = []
  end

end
