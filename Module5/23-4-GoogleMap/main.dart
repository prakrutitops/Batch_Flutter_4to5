import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main()
{
  runApp(MaterialApp(home: MapEx(),));
}
class MapEx extends StatefulWidget
{
  const MapEx({super.key});

  @override
  State<MapEx> createState() => _MapExState();
}

class _MapExState extends State<MapEx>
{
  late GoogleMapController controller;
  final LatLng _center = const LatLng(22.290424, 70.775277);


  void _onMapCreated(GoogleMapController controller)
  {
    controller = controller;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        body: GoogleMap(

        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition
          (
            target: _center,
            zoom: 11.0,
        ),));
  }
}

