class Tamagotchi

  @@all_tamagotchis = []

  define_singleton_method(:all) do
    @@all_tamagotchis
  end

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:time_passes) do |time|
    time.times() do
      @food_level = @food_level.-(2)
      @sleep_level = @sleep_level.-(1)
      @activity_level = @activity_level.-(1)
    end
  end

  define_method(:is_alive?) do
    if (@food_level.>(0) && @sleep_level.>(0) && @activity_level.>(0))
      true
    else
      false
    end
  end

  define_method(:feed) do |type|
    if type == "snack"
      @food_level = @food_level.+(2)
    else # meal
      @food_level = @food_level.+(4)
    end
  end
end
