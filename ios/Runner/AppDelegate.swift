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
              result(self.getMusic())
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

    private func getMusic() -> Dictionary<String,Any>?{
          let item : MPMediaItem? = MPMusicPlayerController.systemMusicPlayer.nowPlayingItem
        if let uwItem = item {
            NSLog("Title : %@", uwItem.title!)
            NSLog("Artist : %@", uwItem.artist!)
            NSLog("AlbumTitle : %@", uwItem.albumTitle!)
            NSLog("Duration : %g", uwItem.playbackDuration)
            var test: Dictionary = ["title": uwItem.title!, "Artist": uwItem.artist!,"AlbumTitle":uwItem.albumTitle!,"Duration":uwItem.playbackDuration] as [String : Any]
        return test
        }

       return nil
    }
}



