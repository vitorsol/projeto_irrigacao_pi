import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_page_adm_model.dart';
export 'dashboard_page_adm_model.dart';

class DashboardPageAdmWidget extends StatefulWidget {
  const DashboardPageAdmWidget({super.key});

  @override
  State<DashboardPageAdmWidget> createState() => _DashboardPageAdmWidgetState();
}

class _DashboardPageAdmWidgetState extends State<DashboardPageAdmWidget>
    with TickerProviderStateMixin {
  late DashboardPageAdmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.698, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardPageAdmModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Container(
                  width: 270.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6F61EF),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 0.0,
                        color: Color(0xFFE5E7EB),
                        offset: Offset(
                          1.0,
                          0.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 24.0),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0x4D9489F5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x4D9489F5),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 24.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Prototype_01',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 16.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 44.0,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0x4D9489F5),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: const Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  const Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  const Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                                              width: 44.0,
                                              height: 44.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Vitor',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'admin@gmail.com',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0x9AFFFFFF),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.notifications_none,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0x4D9489F5),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF6F61EF),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 12.0, 12.0),
                                    child: Container(
                                      width: 4.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.stacked_bar_chart_rounded,
                                    color: Colors.white,
                                    size: 28.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Monitoramento',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF6F61EF),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF6F61EF),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF6F61EF),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(
                                  height: 12.0,
                                  thickness: 2.0,
                                  color: Color(0x4D9489F5),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Container(
                                    width: 80.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0x4D9489F5),
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                        color: const Color(0x4D9489F5),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.9, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.wb_sunny_rounded,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 6.0, 0.0),
                                              child: Icon(
                                                Icons.mode_night_rounded,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 1470.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Monitoramento',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF15161E),
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet. Eos voluptate internos et veniam asperiores aut laborum pariatur ',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF606A85),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Lorem\n',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x4D9489F5),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF15161E),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0xFF6F61EF),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Lorem Ipsum',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF6F61EF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 100.0,
                                              constraints: const BoxConstraints(
                                                maxWidth: 370.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: const Color(0xFFE5E7EB),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                    ))
                                                      const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.water_drop,
                                                          color:
                                                              Color(0xFF39D2C0),
                                                          size: 44.0,
                                                        ),
                                                      ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Irrigação Diária',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: const Color(
                                                                          0xFF606A85),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                                const Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .more_vert,
                                                                    color: Color(
                                                                        0xFF606A85),
                                                                    size: 20.0,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '5 mm',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .displaySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              const Color(0xFF15161E),
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                              ))
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Lorem Ipsum',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          color:
                                                                              const Color(0xFF39D2C0),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 100.0,
                                              constraints: const BoxConstraints(
                                                maxWidth: 370.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: const Color(0xFFE5E7EB),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                    ))
                                                      const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.water_drop,
                                                          color:
                                                              Color(0xFF39D2C0),
                                                          size: 44.0,
                                                        ),
                                                      ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Irrigação Mensal',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: const Color(
                                                                          0xFF606A85),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                                const Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .more_vert,
                                                                    color: Color(
                                                                        0xFF606A85),
                                                                    size: 20.0,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '156 mm',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .displaySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              const Color(0xFF15161E),
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                              ))
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Lorem Ipsum',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          color:
                                                                              const Color(0xFF39D2C0),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 16.0)),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: const Color(0xFFE5E7EB),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Gráfico de Irrigação',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            const Color(0xFF15161E),
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'Lorem ipsum dolor sit amet.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0xFF606A85),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      height: 32.0,
                                                      constraints:
                                                          const BoxConstraints(
                                                        maxHeight: 32.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .radio_button_checked_sharp,
                                                              color: Color(
                                                                  0xFF6F61EF),
                                                              size: 20.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Água',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: const Color(
                                                                          0xFF15161E),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 32.0,
                                                      constraints:
                                                          const BoxConstraints(
                                                        maxHeight: 32.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .radio_button_checked_sharp,
                                                              color: Color(
                                                                  0xFF39D2C0),
                                                              size: 20.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Fertilizante',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: const Color(
                                                                          0xFF15161E),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFFE5E7EB),
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: SizedBox(
                                                        width: double.infinity,
                                                        height: 200.0,
                                                        child:
                                                            FlutterFlowLineChart(
                                                          data: [
                                                            FFLineChartData(
                                                              xData: List.generate(
                                                                  random_data
                                                                      .randomInteger(
                                                                          0, 0),
                                                                  (index) => random_data
                                                                      .randomInteger(
                                                                          0,
                                                                          10)),
                                                              yData: List.generate(
                                                                  random_data
                                                                      .randomInteger(
                                                                          0, 0),
                                                                  (index) => random_data
                                                                      .randomInteger(
                                                                          0,
                                                                          10)),
                                                              settings:
                                                                  LineChartBarData(
                                                                color: const Color(
                                                                    0xFF6F61EF),
                                                                barWidth: 2.0,
                                                                isCurved: true,
                                                                preventCurveOverShooting:
                                                                    true,
                                                                dotData: FlDotData(
                                                                    show:
                                                                        false),
                                                                belowBarData:
                                                                    BarAreaData(
                                                                  show: true,
                                                                  color: const Color(
                                                                      0x4D9489F5),
                                                                ),
                                                              ),
                                                            ),
                                                            FFLineChartData(
                                                              xData: List.generate(
                                                                  random_data
                                                                      .randomInteger(
                                                                          0, 0),
                                                                  (index) => random_data
                                                                      .randomInteger(
                                                                          0,
                                                                          10)),
                                                              yData: List.generate(
                                                                  random_data
                                                                      .randomInteger(
                                                                          0, 0),
                                                                  (index) => random_data
                                                                      .randomInteger(
                                                                          0,
                                                                          10)),
                                                              settings:
                                                                  LineChartBarData(
                                                                color: const Color(
                                                                    0xFF39D2C0),
                                                                barWidth: 2.0,
                                                                isCurved: true,
                                                                preventCurveOverShooting:
                                                                    true,
                                                                dotData: FlDotData(
                                                                    show:
                                                                        false),
                                                                belowBarData:
                                                                    BarAreaData(
                                                                  show: true,
                                                                  color: const Color(
                                                                      0x4C39D2C0),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                          chartStylingInfo:
                                                              const ChartStylingInfo(
                                                            backgroundColor:
                                                                Colors.white,
                                                            showBorder: false,
                                                          ),
                                                          axisBounds:
                                                              const AxisBounds(),
                                                          xAxisLabelInfo:
                                                              const AxisLabelInfo(),
                                                          yAxisLabelInfo:
                                                              const AxisLabelInfo(),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!),
                                      Container(
                                        width: double.infinity,
                                        constraints: const BoxConstraints(
                                          maxWidth: 1270.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: const Color(0xFFE5E7EB),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Outras Lavouras',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: const Color(
                                                                      0xFF15161E),
                                                                  fontSize:
                                                                      22.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Lorem ipsum dolor sit amet.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: const Color(
                                                                      0xFF606A85),
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                  ))
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'add_lavoura');
                                                      },
                                                      text: 'Adiconar',
                                                      icon: const Icon(
                                                        Icons.add_rounded,
                                                        color: Colors.white,
                                                        size: 15.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0xFF6F61EF),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        elevation: 2.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0xFFF1F4F8),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(8.0),
                                                      topRight:
                                                          Radius.circular(8.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          flex: 3,
                                                          child: Text(
                                                            'Lavoura',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: const Color(
                                                                      0xFF606A85),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          Expanded(
                                                            flex: 2,
                                                            child: Text(
                                                              'Última Atualização',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: const Color(
                                                                        0xFF606A85),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Text(
                                                            'Visualizar',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: const Color(
                                                                      0xFF606A85),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          Expanded(
                                                            flex: 1,
                                                            child: Text(
                                                              'Ações',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: const Color(
                                                                        0xFF606A85),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              ListView(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 3,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(40.0),
                                                                        child: Image
                                                                            .network(
                                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZwTLFufpCjVQSp6PUPhOMTLie2HFCvy6ednW2D6nlCA&s',
                                                                          width:
                                                                              32.0,
                                                                          height:
                                                                              32.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Café',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: const Color(0xFF15161E),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'Lorem Ipsum',
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: const Color(0xFF6F61EF),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 2,
                                                                child: Text(
                                                                  'Hoje',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF15161E),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            Expanded(
                                                              flex: 2,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        32.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF6F61EF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              40.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFF6F61EF),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Ver',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 1,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          44.0,
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: Color(
                                                                            0xFF606A85),
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 3,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(40.0),
                                                                        child: Image
                                                                            .network(
                                                                          'data:image/jpeg;base64,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',
                                                                          width:
                                                                              32.0,
                                                                          height:
                                                                              32.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Cacau',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: const Color(0xFF15161E),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'Lorem Ipsum',
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: const Color(0xFF6F61EF),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 2,
                                                                child: Text(
                                                                  'Ontem',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF15161E),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            Expanded(
                                                              flex: 2,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        32.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF6F61EF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              40.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFF6F61EF),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Ver',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: const Color(0xffffffffff),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 1,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          44.0,
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: Color(
                                                                            0xFF606A85),
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 3,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(40.0),
                                                                        child: Image
                                                                            .network(
                                                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Marijuana.jpg/1200px-Marijuana.jpg',
                                                                          width:
                                                                              32.0,
                                                                          height:
                                                                              32.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Cannabis Sativa',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: const Color(0xFF15161E),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'Lorem Ipsum',
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: const Color(0xFF6F61EF),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 2,
                                                                child: Text(
                                                                  'Ontem',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF15161E),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            Expanded(
                                                              flex: 2,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        32.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF6F61EF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              40.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFF6F61EF),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Ver',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Colors.white,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 1,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          44.0,
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: Color(
                                                                            0xFF606A85),
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 3,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(40.0),
                                                                        child: Image
                                                                            .network(
                                                                          'https://cdn.awsli.com.br/600x450/4/4552/produto/1387017/d8ec8f3dad.jpg',
                                                                          width:
                                                                              32.0,
                                                                          height:
                                                                              32.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Gengibre',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: const Color(0xFF15161E),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'Lorem Ipsum',
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: const Color(0xFF6F61EF),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 2,
                                                                child: Text(
                                                                  'Ontem',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF15161E),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            Expanded(
                                                              flex: 2,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        32.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF6F61EF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              40.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFF6F61EF),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Ver',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Colors.white,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Expanded(
                                                                flex: 1,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          44.0,
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: Color(
                                                                            0xFF606A85),
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 16.0))
                                        .addToEnd(const SizedBox(height: 44.0)),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                          ),
                        ].addToEnd(const SizedBox(height: 44.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
