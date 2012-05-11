class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    CMAPICredentials.sharedInstance.setAppIdentifier("YOUR-APP-ID")
    CMAPICredentials.sharedInstance.setAppSecret("YOUR-APP-SECRET")

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = CloudMineController.alloc.init
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end
end
