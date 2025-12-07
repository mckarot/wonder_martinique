import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/merchants_data.dart';
import 'package:wonders/models/merchant.dart';
import 'package:wonders/logic/data/wonder_data.dart';

class InteractiveMap extends StatefulWidget {
  const InteractiveMap({super.key, this.contentPadding, required this.type});
  final EdgeInsets? contentPadding;
  final WonderType type;

  @override
  State<InteractiveMap> createState() => _InteractiveMapState();
}

class _InteractiveMapState extends State<InteractiveMap> {
  final List<Marker> _userMarkers = [];
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
          _userMarkers.add(
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
    final List<Merchant> merchants = MerchantsData.getMerchantsForWonder(widget.type);
    
    // Create merchant markers
    final List<Marker> merchantMarkers = merchants.map((merchant) {
      return Marker(
        point: LatLng(merchant.lat, merchant.lng),
        width: 80,
        height: 80,
        child: GestureDetector(
          onTap: () => context.go(ScreenPaths.merchantDetails(merchant.id), extra: {'from': 'map', 'type': widget.type}),
                  child: const Icon(
                    Icons.shopping_bag,
                    color: Colors.green,
                    size: 30,
                  ),        ),
      );
    }).toList();

    // Add wonder marker, user marker, and merchant markers
    final List<Marker> allMarkers = [
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
      ..._userMarkers,
      ...merchantMarkers,
    ];

    return Padding(
      padding: widget.contentPadding ?? EdgeInsets.zero,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(wonder.lat, wonder.lng),
          initialZoom: 14.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: allMarkers,
          ),
        ],
      ),
    );
  }
}



