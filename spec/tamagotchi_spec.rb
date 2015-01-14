require("rspec")
require("tamagotchi")

describe("Tamagotchi") do

  describe("#initialize") do
    it("sets the name and the various levels") do
      thing = Tamagotchi.new("Muffin 'The Anihilator' Boots")
      expect(thing.name()).to(eq("Muffin 'The Anihilator' Boots"))
      expect(thing.food_level()).to(eq(10))
      expect(thing.sleep_level()).to(eq(10))
      expect(thing.activity_level()).to(eq(10))
    end
  end

  describe("#time_passes") do
    it("decreases the levels over time") do
      thing = Tamagotchi.new("Muffin 'The Anihilator' Boots")
      thing.time_passes(1)
      expect(thing.food_level()).to(eq(8))
      expect(thing.sleep_level()).to(eq(9))
      expect(thing.activity_level()).to(eq(9))
    end
  end

  describe("#is_alive?") do
    it("verifies that no level has reached 0, meaning the Tamagotchi is dead") do
      thing = Tamagotchi.new("Muffin 'The Anihilator' Boots")
      expect(thing.is_alive?()).to(eq(true))
    end

    it("is dead if any level reaches 0") do
      thing = Tamagotchi.new("Muffin 'The Anihilator' Boots")
      thing.time_passes(5)
      expect(thing.is_alive?()).to(eq(false))
    end
  end

  describe("#feed") do
    it("adds to the food level") do
      thing = Tamagotchi.new("Muffin 'The Anihilator' Boots")
      thing.feed("snack")
      expect(thing.food_level()).to(eq(12))
      thing.feed("meal")
      expect(thing.food_level()).to(eq(16))
    end
  end
end
