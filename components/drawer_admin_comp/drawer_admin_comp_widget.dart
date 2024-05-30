import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'drawer_admin_comp_model.dart';
export 'drawer_admin_comp_model.dart';

class DrawerAdminCompWidget extends StatefulWidget {
  const DrawerAdminCompWidget({
    super.key,
    int? selectedPageindex,
  }) : selectedPageindex = selectedPageindex ?? 1;

  final int selectedPageindex;

  @override
  State<DrawerAdminCompWidget> createState() => _DrawerAdminCompWidgetState();
}

class _DrawerAdminCompWidgetState extends State<DrawerAdminCompWidget>
    with TickerProviderStateMixin {
  late DrawerAdminCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawerAdminCompModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.2, 1.2),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.2, 1.2),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.2, 1.2),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.2, 1.2),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.2, 1.2),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.2, 1.2),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.2, 1.2),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 852.0,
      decoration: const BoxDecoration(
        color: Color(0xFF222A33),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 10.0),
            child: GradientText(
              'Administrator',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).alternate,
                    fontSize: 24.0,
                    letterSpacing: 1.5,
                  ),
              colors: [
                FlutterFlowTheme.of(context).alternate,
                const Color(0xFFFDA58E)
              ],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 48.0,
                  height: 48.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwZXJzb258ZW58MHx8fHwxNzEzODU5NzU5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stuart Scott',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).alternate,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Regional Sales Manager, Audi',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ].divide(const SizedBox(width: 12.0)).addToStart(const SizedBox(width: 12.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
            child: Container(
              width: 250.0,
              height: 450.0,
              decoration: const BoxDecoration(
                color: Color(0xFF222A33),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        'AdminHomepage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: 200.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: widget.selectedPageindex == 1
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0xFF222A33),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: widget.selectedPageindex == 1
                                ? FlutterFlowTheme.of(context).accent2
                                : Colors.transparent,
                            offset: const Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: widget.selectedPageindex == 1
                              ? const Color(0xFF08FFF0)
                              : Colors.transparent,
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageindex == 1 ? 1.0 : 0.5,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FlutterFlowIconButton(
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.other_houses_outlined,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation1']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.2),
                            child: Text(
                              'Home',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 16.0,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 5.0))
                            .addToStart(const SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'AdminProfilePage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: 200.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: widget.selectedPageindex == 2
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0xFF222A33),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: widget.selectedPageindex == 2
                                ? FlutterFlowTheme.of(context).accent2
                                : Colors.transparent,
                            offset: const Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: widget.selectedPageindex == 2
                              ? const Color(0xFF08FFF0)
                              : Colors.transparent,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageindex == 2 ? 1.0 : 0.5,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FlutterFlowIconButton(
                                buttonSize: 40.0,
                                icon: FaIcon(
                                  FontAwesomeIcons.user,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation2']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.2),
                            child: Text(
                              'Profile',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 16.0,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 5.0))
                            .addToStart(const SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        'sessionManagementMentorPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: 200.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: widget.selectedPageindex == 3
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0xFF222A33),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: widget.selectedPageindex == 3
                                ? FlutterFlowTheme.of(context).accent2
                                : Colors.transparent,
                            offset: const Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: widget.selectedPageindex == 3
                              ? const Color(0xFF08FFF0)
                              : Colors.transparent,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageindex == 3 ? 1.0 : 0.5,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FlutterFlowIconButton(
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation3']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.2),
                            child: Text(
                              'Sessions',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 16.0,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 5.0))
                            .addToStart(const SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        'ResourceManagementAdminPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: 200.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: widget.selectedPageindex == 4
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0xFF222A33),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: widget.selectedPageindex == 4
                                ? FlutterFlowTheme.of(context).accent2
                                : Colors.transparent,
                            offset: const Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: widget.selectedPageindex == 4
                              ? const Color(0xFF08FFF0)
                              : Colors.transparent,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageindex == 4 ? 1.0 : 0.5,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FlutterFlowIconButton(
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.note_alt_sharp,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation4']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.2),
                            child: Text(
                              'Resources',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 16.0,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 5.0))
                            .addToStart(const SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed('RatingsAndReviewEntrepreneurPage');
                    },
                    child: Container(
                      width: 200.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: widget.selectedPageindex == 5
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0xFF222A33),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: widget.selectedPageindex == 5
                                ? FlutterFlowTheme.of(context).accent2
                                : Colors.transparent,
                            offset: const Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: widget.selectedPageindex == 5
                              ? const Color(0xFF08FFF0)
                              : Colors.transparent,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageindex == 5 ? 1.0 : 0.5,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FlutterFlowIconButton(
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.star_outlined,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation5']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.2),
                            child: Text(
                              'Rating',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 16.0,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 5.0))
                            .addToStart(const SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed('notificationAdminPage');
                    },
                    child: Container(
                      width: 200.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: widget.selectedPageindex == 6
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0xFF222A33),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: widget.selectedPageindex == 6
                                ? FlutterFlowTheme.of(context).accent2
                                : Colors.transparent,
                            offset: const Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: widget.selectedPageindex == 6
                              ? const Color(0xFF08FFF0)
                              : Colors.transparent,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageindex == 6 ? 1.0 : 0.5,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FlutterFlowIconButton(
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.notifications_none_rounded,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation6']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.2),
                            child: Text(
                              'Notifications',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 16.0,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 5.0))
                            .addToStart(const SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        'FAQMentorsPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: 200.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: widget.selectedPageindex == 7
                            ? FlutterFlowTheme.of(context).primary
                            : const Color(0xFF222A33),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: widget.selectedPageindex == 7
                                ? FlutterFlowTheme.of(context).accent2
                                : Colors.transparent,
                            offset: const Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: widget.selectedPageindex == 7
                              ? const Color(0xFF08FFF0)
                              : Colors.transparent,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageindex == 6 ? 1.0 : 0.5,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.question_mark_outlined,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation7']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.2),
                            child: Text(
                              'FAQs',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 16.0,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 5.0))
                            .addToStart(const SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth(
                  'loginPage',
                  context.mounted,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Container(
                width: 200.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF222A33),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Color(0x0003D691),
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: FlutterFlowIconButton(
                        buttonSize: 48.0,
                        icon: Icon(
                          FFIcons.klogout,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 32.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.2),
                      child: Text(
                        'Logout',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 5.0))
                      .addToStart(const SizedBox(width: 18.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
