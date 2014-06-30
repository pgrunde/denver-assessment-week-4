class DogHTMLPage
  def initialize(array_of_dog_hash)
    @array_of_hashes = array_of_dog_hash
  end

  def title
    if @array_of_hashes.length <= 0
      "<h1>There are no dogs</h1>"
    else
      "<h1>There are #{@array_of_hashes.length} dogs</h1>"
    end
  end

  # CONFIRMED WORKING

  # def list
  #     string = "<ul>"
  #     @array_of_hashes.each do |hash|
  #       string += "<li>" + hash[:name] + "</li>"
  #     end
  #     string += "</ul>"
  #   if @array_of_hashes.length <= 0
  #     string = ""
  #   end
  #     string
  # end

  # rewrote it to be inside one if/else CONFIRMED WORKING

  # def list
  #   if @array_of_hashes.length <= 0
  #     ""
  #   else
  #     var = "<ul>"
  #     @array_of_hashes.each do |hash|
  #       var += "<li>#{hash[:name]}</li>"
  #     end
  #     var + "</ul>"
  #   end
  # end

  # attempt with .map and a wrapper CONFIRMED WORKING

  def wrapper(content)
    "<ul>#{content}</ul>"
  end

  def list
    if @array_of_hashes.length <= 0
      ""
    else
      @array_of_hashes.map! { |hash| "<li>#{hash[:name]}</li>" }
      wrapper(@array_of_hashes.join)
    end
  end


end