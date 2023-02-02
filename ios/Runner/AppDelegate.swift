import UIKit
import Flutter
import MediaPlayer // ここの追加を忘れずに。

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    GeneratedPluginRegistrant.register(with: self)

    let controller :FlutterViewController = window?.rootViewController as! FlutterViewController
    let cameraChannel = FlutterMethodChannel(name: "test_camera",binaryMessenger: controller.binaryMessenger)

    cameraChannel.setMethodCallHandler({
      (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
        switch call.method {
            case "getCamera":
              self.receiveCamera(result: result,controller: controller)
              return
            case "getMusic":
            result(self.getMusic(result:result))
            return
            default:
              result(FlutterMethodNotImplemented)
              return
        }
    })
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }


 func receiveCamera(result: FlutterResult,controller: FlutterViewController) {
        let pickerController = UIImagePickerController()
        pickerController.sourceType = .camera

        controller.present(pickerController,animated: true,completion: nil)
    }

    func getMusic(result:FlutterResult) {
          let item : MPMediaItem? = MPMusicPlayerController.systemMusicPlayer.nowPlayingItem
        if let uwItem = item {
            NSLog("Title : %@", uwItem.title!)
            NSLog("Artist : %@", uwItem.artist!)
            NSLog("AlbumTitle : %@", uwItem.albumTitle!)
            NSLog("Duration : %g", uwItem.playbackDuration)

        }
        var test: Dictionary = ["title": "swift-salaryman", "url": "http://swift-salaryman.com/"]
        NSLog("Durationsssss : %@", test)
        result(test);
       
    }
}



