class CloudMineController < UIViewController
  def loadView
    self.view = CloudMineView.alloc.init
    self.view.backgroundColor = UIColor.groupTableViewBackgroundColor
  end
end
