import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
  final LatLng _center = const LatLng(45.521563, -122.677433);

  static const LatLng startLocation =
      LatLng(29.884503847254138, -97.94877946442723);
  static const LatLng destinationLocation =
      LatLng(30.045531903807998, -97.84454879259341);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  Future<void> getCurrentLocation() async {
    Location location = Location();
    currentLocation = await location.getLocation(); //test

    print('currentLocation: $currentLocation');
  }

  Future<void> getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_maps_api_key,
      PointLatLng(startLocation.latitude, startLocation.longitude),
      PointLatLng(destinationLocation.latitude, destinationLocation.longitude),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              children: [
                const Text('Loading...'),
                // SpinKitChasingDots(),
              ],
            ),
          );
        }
        return GoogleMap(
          initialCameraPosition: CameraPosition(
            target: startLocation,
            zoom: 13.5,
          ),
          polylines: {
            Polyline(
              polylineId: PolylineId('route'),
              // color: Theme.of(context).colorScheme.secondary,
              width: 6,
              points: polylineCoordinates,
            ),
          },
          markers: {
            const Marker(
              markerId: MarkerId('start'),
              position: startLocation,
            ),
            // Marker(
            //   markerId: MarkerId('start'),
            //   position: startLocation,
            // ),
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
