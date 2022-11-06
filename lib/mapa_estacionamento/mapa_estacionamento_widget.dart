import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../backend/backend.dart';
import '../components/bottom_estacionamento_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';

FlutterFlowMarker? marker;
List<FlutterFlowMarker> docLatAndLong = [];

class MapaEstacionamentoWidget extends StatefulWidget {
  const MapaEstacionamentoWidget({
    Key? key,
    this.infoLocal,
  }) : super(key: key);

  final dynamic infoLocal;

  @override
  _MapaEstacionamentoWidgetState createState() =>
      _MapaEstacionamentoWidgetState();
}

class _MapaEstacionamentoWidgetState extends State<MapaEstacionamentoWidget> {
 PanelController panelController = PanelController();
BottomEstacionamentoWidget bottomEstacionamentoWidget = BottomEstacionamentoWidget();

   dynamic selectedEstacionamento;
  void setSelectedEstacionamento(dynamic estacionamento) => setState(() => selectedEstacionamento = estacionamento);

  List<dynamic> estacionamentos = [];
   LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  LatLng? currentUserLocationValue;

  Future<List<FlutterFlowMarker>> getLatAndLong() async {
    String url = "https://api-tux-biomob.herokuapp.com/biomob-api/estacionamento/lista";

    final response = await Dio().get(url);
    final responseBody = response.data;

    List<dynamic> estacionamentosToAdd = [];
    for (final estacionamento in responseBody) {
      LatLng latLng = LatLng(estacionamento['latitude'], estacionamento['longitude']);
      marker = FlutterFlowMarker(estacionamento['estacionamentoId'], latLng, () async {
        setSelectedEstacionamento(estacionamento);
        panelController.open();
      });
      docLatAndLong.add(marker!);
      estacionamentosToAdd.add(estacionamento);
    }

    setState(() {
      estacionamentos = estacionamentosToAdd;
    });

    

    return docLatAndLong ;
  }


  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true).then((loc) => setState(() => currentUserLocationValue = loc));
    getLatAndLong();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: SpinKitCircle(
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 50,
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Localização do Usuário',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SlidingUpPanel(
          controller: panelController,
          backdropColor: Colors.black,
          backdropOpacity: 0.6,
          backdropEnabled: true,
          backdropTapClosesPanel: true,
          minHeight: 0,
          maxHeight: MediaQuery.of(context).size.height * 0.5,
          panel: BottomEstacionamentoWidget(estabelecimentoPlace: selectedEstacionamento),
          body: FlutterFlowGoogleMap(
            controller: googleMapsController,
            onCameraIdle: (latLng) => googleMapsCenter = latLng,
            initialLocation: googleMapsCenter ??= currentUserLocationValue,
            markerColor: GoogleMarkerColor.violet,
            markers: docLatAndLong,
            mapType: MapType.normal,
            style: GoogleMapStyle.standard,
            initialZoom: 14,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: false,
            showMapToolbar: false,
            showTraffic: false,
            centerMapOnMarkerTap: true,
          ),
        ),
      ),
      );
  }
}
