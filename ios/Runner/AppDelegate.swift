import UIKit
import Flutter
import GoogleSignIn
import Firebase
import GoogleMaps

// func application(
//   _ application: UIApplication,
//   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
// ) -> Bool {
//   // ...
//   GIDSignIn.sharedInstance().clientID = "646900547136-4diogabijadpqi3e04ti7qk2dgh4omq2.apps.googleusercontent.com"
//   // ...
// }

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    // GIDSignIn.sharedInstance().clientID = "646900547136-4diogabijadpqi3e04ti7qk2dgh4omq2.apps.googleusercontent.com"
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyA6O63DgJA1JUMCOzkWNmHFeV_QzCQVd9Y")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
