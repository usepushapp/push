import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search_blog_media_model.dart';
export 'search_blog_media_model.dart';

/// Blog Media component for search bottom sheet
class SearchBlogMediaWidget extends StatefulWidget {
  const SearchBlogMediaWidget({
    super.key,
    required this.searchBlogMediaComponent,
  });

  final MediaRecord? searchBlogMediaComponent;

  @override
  State<SearchBlogMediaWidget> createState() => _SearchBlogMediaWidgetState();
}

class _SearchBlogMediaWidgetState extends State<SearchBlogMediaWidget> {
  late SearchBlogMediaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchBlogMediaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          widget.searchBlogMediaComponent?.logo,
                          'logo',
                        ),
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.searchBlogMediaComponent?.name,
                              'Blog Name',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.spaceGrotesk(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Text(
                              '${valueOrDefault<bool>(currentUserDocument?.dollarActive, false) == true ? '\$' : '₦'}${valueOrDefault<bool>(currentUserDocument?.dollarActive, false) == true ? valueOrDefault<String>(
                                  formatNumber(
                                    widget
                                        .searchBlogMediaComponent?.dollarPrice,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                  ),
                                  '0.00',
                                ) : valueOrDefault<String>(
                                  formatNumber(
                                    widget.searchBlogMediaComponent?.price,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                  ),
                                  '0',
                                )}',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.spaceGrotesk(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
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
          ),
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().addToMediaCart(
                    widget.searchBlogMediaComponent!.reference);
                FFAppState().addToMediaCartPriceSummary(valueOrDefault<bool>(
                        currentUserDocument?.dollarActive, false)
                    ? valueOrDefault<double>(
                        widget.searchBlogMediaComponent?.dollarPrice,
                        0.0,
                      )
                    : valueOrDefault<double>(
                        widget.searchBlogMediaComponent?.price,
                        0.0,
                      ));
                safeSetState(() {});
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      '${valueOrDefault<String>(
                        widget.searchBlogMediaComponent?.name,
                        'Blog',
                      )} Added to Cart',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
              },
              child: Icon(
                Icons.add_circle,
                color: FlutterFlowTheme.of(context).primary,
                size: 34.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
