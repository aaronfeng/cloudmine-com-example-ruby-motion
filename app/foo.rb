class Foo < CMObject
  attr_accessor :bar

  def initWithCoder(aDecoder)
    # implement for object retrieval
  end

  def encodeWithCoder(aCoder)
    super(aCoder)
    aCoder.encodeObject(bar, forKey:"bar")
  end
end
