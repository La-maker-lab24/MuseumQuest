import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
class BleController extends GetxController {
FlutterBlue ble = FlutterBlue.instance;
Future scanDevices() async{
  //var blePermission = await Permission.bluetoothScan.status;
  //if(blePermission.isGranted){
    //if(await Permission.bluetoothScan.request().isGranted){
      //if(await Permission.bluetoothConnect.request().isGranted) {
        ble.startScan(timeout: Duration(seconds: 20));
        ble.scanResults.listen((results) {
                for (ScanResult r in results) {
                        print('${r.device.state}');}});
        //ble.stopScan();
      //}
    //}
  //}
}
Stream<List<ScanResult>> get scanResults => ble.scanResults;
}