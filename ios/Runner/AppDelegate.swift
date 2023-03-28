import UIKit
import Flutter
import GoogleSignIn
import Firebase
import GoogleMaps



@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyA6O63DgJA1JUMCOzkWNmHFeV_QzCQVd9Y") // original

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
