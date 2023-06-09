import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:youphoria/constants/constants.dart';
import 'dart:async';

class GoogleMapsScreen extends StatefulWidget {
  const GoogleMapsScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng startLocation =
      LatLng(37.33178348123003, -122.0320906906449);
  static const LatLng destinationLocation =
      LatLng(37.323139045864274, -122.0320428007709);

  List<LatLng> polylineCoordinates = [startLocation, destinationLocation];
  LocationData? currentLocation;
  Timer? _timer;

  Future<void> getCurrentLocation() async {
    Location location = Location();
    try {
      currentLocation = await location.getLocation();
      print('currentLocation: $currentLocation');
      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      // Handle error here
    }
  }

  Future<void> getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_maps_api_key,
      PointLatLng(startLocation.latitude, startLocation.longitude),
      PointLatLng(destinationLocation.latitude, destinationLocation.longitude),
    );

    if (result.points.isNotEmpty) {
      if (result.points.isNotEmpty) {
        setState(() {
          polylineCoordinates.clear();
          result.points.forEach((PointLatLng point) {
            polylineCoordinates.add(LatLng(point.latitude, point.longitude));
          });
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      getCurrentLocation();
    });
  }

  @override
  void didUpdateWidget(covariant GoogleMapsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (currentLocation != null) {
      getPolyPoints();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCurrentLocation(),
      builder: (context, snapshot) {
        while (currentLocation == null) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Loading map...'),
                // SpinKitChasingDots(),
              ],
            ),
          );
        }
        return GoogleMap(
          onMapCreated: _controller.complete,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: currentLocation != null
                ? LatLng(
                    currentLocation!.latitude!,
                    currentLocation!.longitude!,
                  )
                : startLocation,
            zoom: 13.5,
          ),
          polylines: {
            Polyline(
              polylineId: const PolylineId('route'),
              color: Theme.of(context).colorScheme.primary,
              width: 6,
              points: polylineCoordinates,
            ),
          },
          markers: {
            const Marker(
              markerId: MarkerId('start'),
              position: startLocation,
            ),
            const Marker(
              markerId: MarkerId('destination'),
              position: destinationLocation,
            ),
          },
        );
      },
    );
  }
}
