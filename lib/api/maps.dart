import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMapScreen extends StatefulWidget {
  const SimpleMapScreen({Key? key}) : super(key: key);

  @override
  _SimpleMapScreenState createState() => _SimpleMapScreenState();
}

class _SimpleMapScreenState extends State<SimpleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition initialPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.0);

  static const CameraPosition targetPosition = CameraPosition(target: LatLng(45.5159788,-73.6775849), zoom: 16.0, bearing: 110.0, tilt: 40);
  static const CameraPosition targetPosition1 = CameraPosition(target: LatLng(45.5159734,-73.7104157), zoom: 16.0, bearing: 110.0, tilt: 40);

  static const CameraPosition targetPosition2 = CameraPosition(target: LatLng(45.4967367,-73.8027728), zoom: 16.0, bearing: 110.0, tilt: 40);

  static const CameraPosition targetPosition3 = CameraPosition(target: LatLng(45.524513,-73.7452629), zoom: 16.0, bearing: 110.0, tilt: 40);





  Set<Marker> markersList = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Google Map"),
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition: initialPosition,
        mapType: MapType.normal,

        markers: markersList,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          goToLake();
          markersList.clear();

          markersList.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(45.4967367,-73.8027728)));


        },
        label: const Text("To the Hospital!"),
        icon: const Icon(Icons.local_hospital_outlined),
      ),
    );
  }

  Future<void> goToLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition2));

  }
}