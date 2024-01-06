import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

// import UIKit
// import Flutter
//
// @UIApplicationMain
// @objc class AppDelegate: FlutterAppDelegate {
//   override func application(
//     _ application: UIApplication,
//     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
//   ) -> Bool {
//     let controller: FlutterViewController =
//         window?.rootViewController as! FlutterViewController
//     let channel = FLutterBasicMessageChannel(
//         name: "myMessageChannel",
//         binaryMessenger: controller.binaryMessenger,
//         codec: FlutterStringCodec.sharedInstance()
//   )
//
//   channel.setMessageHandler{
//       (message: Any?, reply: FlutterReply) -> Void in reply("hi from iOS")
//       channel.sendMessage("Hello I'm iOS Native"){
//       (reply: Any?) -> Void in print("%@", reply as! String)
//       }
//   }
//
//     GeneratedPluginRegistrant.register(with: self)
//     return super.application(application, didFinishLaunchingWithOptions: launchOptions)
//   }
// }
