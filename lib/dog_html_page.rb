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

  def list
      string = "<ul>"
      @array_of_hashes.each do |hash|
        string += "<li>" + hash[:name] + "</li>"
      end
      string += "</ul>"
    if @array_of_hashes.length <= 0
      string = ""
    end
      string
  end

end