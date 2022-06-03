import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate{
  
  let cache = NSCache<NSString, NSData>()
  
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    cache.setObject(Data(repeating: 1, count: 500 * 1024 * 1024) as NSData, forKey: "test")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
