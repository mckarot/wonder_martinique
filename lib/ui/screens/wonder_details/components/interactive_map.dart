import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';

class InteractiveMap extends StatefulWidget {
  const InteractiveMap({super.key, this.contentPadding, required this.type});
  final EdgeInsets? contentPadding;
  final WonderType type;

  @override
  State<InteractiveMap> createState() => _InteractiveMapState();
}

class _InteractiveMapState extends State<InteractiveMap> {
  final List<Marker> _markers = [];
  final double _nearbyDistanceKm = 30;

  @override
  void initState() {
    super.initState();
    _determinePositionAndShowMarker();
  }

  Future<void> _determinePositionAndShowMarker() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return;
    }

    try {
      final Position position = await Geolocator.getCurrentPosition();
      final WonderData wonder = wondersLogic.getData(widget.type);

      final double distanceInMeters = Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        wonder.lat,
        wonder.lng,
      );

      if ((distanceInMeters / 1000) <= _nearbyDistanceKm) {
        setState(() {
          _markers.add(
            Marker(
              point: LatLng(position.latitude, position.longitude),
              width: 80,
              height: 80,
              child: const Icon(
                Icons.my_location,
                color: Colors.blue,
                size: 30,
              ),
            ),
          );
        });
      }
    } catch (e) {
      // Handle exceptions if any, e.g., location service is turned off
      print('Error getting location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final WonderData wonder = wondersLogic.getData(widget.type);
    // Add wonder marker every build, but user marker is managed by state
    final List<Marker> markers = [
      Marker(
        point: LatLng(wonder.lat, wonder.lng),
        width: 80,
        height: 80,
        child: const Icon(
          Icons.location_pin,
          color: Colors.red,
          size: 40,
        ),
      ),
      ..._markers,
    ];

    return Padding(
      padding: widget.contentPadding ?? EdgeInsets.zero,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(wonder.lat, wonder.lng),
          initialZoom: 12.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: markers,
          ),
        ],
      ),
    );
  }
}



