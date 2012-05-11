class CloudMineView < UIView
  def drawRect(rect)
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle("Add Some Foo", forState:UIControlStateNormal)
    button.frame = [[50, 210], [200, 30]]
    button.addTarget self, action:'handle_click', forControlEvents:UIControlEventTouchUpInside
    addSubview(button)


    objectid_label = UILabel.alloc.initWithFrame([[100, 100], [100,25]])
    objectid_label.backgroundColor = UIColor.groupTableViewBackgroundColor
    objectid_label.text = "ObjectId is: "

    addSubview(objectid_label)

    @objectid_value_label = UILabel.alloc.initWithFrame([[0, 120], [350,25]])
    @objectid_value_label.backgroundColor = UIColor.groupTableViewBackgroundColor

    addSubview(@objectid_value_label)
  end

  def handle_click
    foo = Foo.alloc.init
    foo.bar = "blah"
    store = CMStore.alloc.init
    store.saveObject(foo, callback:lambda {|response| })
    @objectid_value_label.text = foo.objectId
  end
end
