module AnimalHelper
  def number_of_animals(number)
    if number.to_i < 2
      "#{number} animal"
    else
      "#{number} animals"
    end
  end
end
