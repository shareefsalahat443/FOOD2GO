import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:FOOD2GO/MapWidget/search_location_screen.dart';
import 'package:FOOD2GO/Utils/colors.dart';
import 'package:FOOD2GO/Utils/common_widgets.dart';
import 'package:FOOD2GO/rout_widget_screen/rout_screen.dart';
import 'package:geocoding/geocoding.dart';
import 'package:permission_handler/permission_handler.dart';

class MapWidgetScreen extends StatefulWidget {
  const MapWidgetScreen({Key? key}) : super(key: key);

  @override
  _MapWidgetScreenState createState() => _MapWidgetScreenState();
}

class _MapWidgetScreenState extends State<MapWidgetScreen> {
  GoogleMapController? mapController;

  final LatLng _center = const LatLng(32.269491301651826, 35.295816021479894); // Center position for Tallouza, Nablus

  LatLng? _selectedLocation;
  String _locationName = "Nablus";
  String _locationDetails = "Nablus ,Tallouza \n,Asira Street,";

  final Marker _tallouzaMarker = Marker(
    markerId: MarkerId('Tallouza'),
    position: LatLng(32.269491301651826, 35.295816021479894),
    infoWindow: InfoWindow(title: 'Tallouza', snippet: 'Nablus'),
  );

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    var status = await Permission.location.status;
    if (status.isDenied) {
      await Permission.location.request();
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> _onMapTapped(LatLng location) async {
    setState(() {
      _selectedLocation = location;
    });

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(location.latitude, location.longitude);
      if (placemarks.isNotEmpty) {
        setState(() {
          _locationName = placemarks.first.name ?? "Unknown Location";
          _locationDetails = "${placemarks.first.street}, ${placemarks.first.locality}, ${placemarks.first.country}";
        });
        print("Coordinates: (${location.latitude}, ${location.longitude})");
        print("Address: ${placemarks.first.name}, ${placemarks.first.street}, ${placemarks.first.locality}, ${placemarks.first.country}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void dispose() {
    mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 13.0,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            onTap: _onMapTapped,
            markers: {_tallouzaMarker},
          ),
          Positioned(
            top: 50,
            left: 25,
            right: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back, color: ColorResources.black120),
                ),
                Icon(Icons.more_vert, color: ColorResources.black120),
              ],
            ),
          ),
          Positioned(
            bottom: 200,
            right: 20,
            child: InkWell(
              onTap: () {
                if (_selectedLocation != null) {
                  mapController?.animateCamera(
                    CameraUpdate.newCameraPosition(
                      CameraPosition(
                        target: _selectedLocation!,
                        zoom: 15.0,
                      ),
                    ),
                  );
                }
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: ColorResources.REDB70,
                child: Icon(Icons.my_location, color: ColorResources.white),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 18,
            right: 18,
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorResources.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 35),
                          child: Icon(Icons.location_on_outlined,
                              color: ColorResources.black120),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              bookText(_locationName, ColorResources.black120, 17),
                              bookText(_locationDetails, ColorResources.grey8E8, 14),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(SearchLocationScreen());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 35),
                            child: Container(
                              height: 22,
                              width: 72,
                              decoration: BoxDecoration(
                                color: ColorResources.greyF0F,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: ColorResources.greyE3E, width: 1),
                              ),
                              child: Center(
                                child: mediumText(
                                    "Change", ColorResources.REDB70, 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(color: ColorResources.greyF2F, thickness: 1),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                RoutNavigationScreen(),
                          ),
                              (route) => false,
                        );
                      },
                      child: mediumText(
                          "CONFIRM LOCATION", ColorResources.REDB70, 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
