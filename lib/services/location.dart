import 'package:geolocator/geolocator.dart';


class Location {
  double _latidude = 0.0;
  double _longitude = 0.0;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      _latidude = position.latitude;
      _longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double latidude(){
    return _latidude;
  }

  double longitude(){
    return _longitude;
  }
}
