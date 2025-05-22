import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'write_for_me_copy_model.dart';
export 'write_for_me_copy_model.dart';

class WriteForMeCopyWidget extends StatefulWidget {
  const WriteForMeCopyWidget({super.key});

  @override
  State<WriteForMeCopyWidget> createState() => _WriteForMeCopyWidgetState();
}

class _WriteForMeCopyWidgetState extends State<WriteForMeCopyWidget> {
  late WriteForMeCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WriteForMeCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 500.0,
        constraints: BoxConstraints(
          maxWidth: 670.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 15.0, 24.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().writeForMeCart = [];
                      FFAppState().writeForMePriceSummary = [];
                      safeSetState(() {});
                    },
                    child: Text(
                      'Article Package',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Clash Display',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Get expert writers to craft a compelling copy for best results.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.spaceGrotesk(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 32.0),
              child: StreamBuilder<List<WriteForMeRecord>>(
                stream: queryWriteForMeRecord(
                  queryBuilder: (writeForMeRecord) =>
                      writeForMeRecord.orderBy('price'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<WriteForMeRecord> listViewWriteForMeRecordList =
                      snapshot.data!;

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewWriteForMeRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewWriteForMeRecord =
                          listViewWriteForMeRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: Icon(
                                          Icons.article_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 40.0,
                                        ),
                                      ),
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                '${listViewWriteForMeRecord.name} - ${valueOrDefault<bool>(currentUserDocument?.dollarActive, false) == true ? '\$' : '₦'}${valueOrDefault<bool>(currentUserDocument?.dollarActive, false) == true ? valueOrDefault<String>(
                                                    formatNumber(
                                                      listViewWriteForMeRecord
                                                          .dollarPrice,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType: DecimalType
                                                          .periodDecimal,
                                                    ),
                                                    '0',
                                                  ) : valueOrDefault<String>(
                                                    formatNumber(
                                                      listViewWriteForMeRecord
                                                          .price,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType: DecimalType
                                                          .periodDecimal,
                                                    ),
                                                    '0',
                                                  )}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .spaceGrotesk(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              listViewWriteForMeRecord
                                                  .description,
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .spaceGrotesk(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AuthUserStreamWidget(
                                  builder: (context) => ToggleIcon(
                                    onPressed: () async {
                                      safeSetState(
                                        () => FFAppState()
                                                .writeForMePriceSummary
                                                .contains(
                                                    valueOrDefault<double>(
                                                  valueOrDefault<bool>(
                                                              currentUserDocument
                                                                  ?.dollarActive,
                                                              false) ==
                                                          true
                                                      ? listViewWriteForMeRecord
                                                          .dollarPrice
                                                      : listViewWriteForMeRecord
                                                          .price,
                                                  0.0,
                                                ))
                                            ? FFAppState()
                                                .removeFromWriteForMePriceSummary(
                                                    valueOrDefault<double>(
                                                valueOrDefault<bool>(
                                                            currentUserDocument
                                                                ?.dollarActive,
                                                            false) ==
                                                        true
                                                    ? listViewWriteForMeRecord
                                                        .dollarPrice
                                                    : listViewWriteForMeRecord
                                                        .price,
                                                0.0,
                                              ))
                                            : FFAppState()
                                                .addToWriteForMePriceSummary(
                                                    valueOrDefault<double>(
                                                valueOrDefault<bool>(
                                                            currentUserDocument
                                                                ?.dollarActive,
                                                            false) ==
                                                        true
                                                    ? listViewWriteForMeRecord
                                                        .dollarPrice
                                                    : listViewWriteForMeRecord
                                                        .price,
                                                0.0,
                                              )),
                                      );
                                    },
                                    value: FFAppState()
                                        .writeForMePriceSummary
                                        .contains(valueOrDefault<double>(
                                          valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.dollarActive,
                                                      false) ==
                                                  true
                                              ? listViewWriteForMeRecord
                                                  .dollarPrice
                                              : listViewWriteForMeRecord.price,
                                          0.0,
                                        )),
                                    onIcon: Icon(
                                      Icons.check_box_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
