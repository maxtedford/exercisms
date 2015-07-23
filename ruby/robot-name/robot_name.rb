class Robot

  def name
    if @robot_name
      @robot_name
    else
      generate_robot_name
    end
  end
  
  def generate_robot_name
    @robot_name = ""
    numbers = (0..9).to_a.map(&:to_s)
    letters = ("A".."Z").to_a

    2.times do
      name << letters.sample
    end

    3.times do
      name << numbers.sample
    end
    @robot_name
  end
  
  def reset
    @robot_name = nil
  end
end
