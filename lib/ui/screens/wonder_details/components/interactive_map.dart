import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';

class InteractiveMap extends StatelessWidget {
  const InteractiveMap({super.key, this.contentPadding, required this.type});
  final EdgeInsets? contentPadding;
  final WonderType type;

  @override
  Widget build(BuildContext context) {
    final WonderData wonder = wondersLogic.getData(type);
    return Padding(
      padding: contentPadding ?? EdgeInsets.zero,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(wonder.lat, wonder.lng),
          initialZoom: 15.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: [
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
            ],
          ),
        ],
      ),
    );
  }
}

