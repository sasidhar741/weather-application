import 'package:geolocator/geolocator.dart';
class Location{
  double latitude;
  double longitude;
  Future<void> getCurrentLocation() async {
    try{
      Position currentLocation = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
     latitude = currentLocation.latitude;
     longitude = currentLocation.longitude;
    }
    catch(exception){
      print(exception);
    }

  }
}

