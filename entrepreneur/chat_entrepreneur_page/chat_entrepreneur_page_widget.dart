import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chat_entrepreneur_page_model.dart';
export 'chat_entrepreneur_page_model.dart';

class ChatEntrepreneurPageWidget extends StatefulWidget {
  const ChatEntrepreneurPageWidget({
    super.key,
    required this.receiveChat,
  });

  final DocumentReference? receiveChat;

  @override
  State<ChatEntrepreneurPageWidget> createState() =>
      _ChatEntrepreneurPageWidgetState();
}

class _ChatEntrepreneurPageWidgetState
    extends State<ChatEntrepreneurPageWidget> {
  late ChatEntrepreneurPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatEntrepreneurPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ChatsRecord>(
      stream: ChatsRecord.getDocument(widget.receiveChat!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFF222A33),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final chatEntrepreneurPageChatsRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF222A33),
            endDrawer: SizedBox(
              width: 250.0,
              child: Drawer(
                elevation: 16.0,
                child: wrapWithModel(
                  model: _model.drawerEntrepreneurCompModel,
                  updateCallback: () => setState(() {}),
                  child: const DrawerEntrepreneurCompWidget(),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 393.0,
                    height: 120.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF222A33),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 393.0,
                          height: 60.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    icon: FaIcon(
                                      FontAwesomeIcons.chevronLeft,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      await widget.receiveChat!.update({
                                        ...mapToFirestore(
                                          {
                                            'lastMessageSeenBy':
                                                FieldValue.arrayUnion(
                                                    [currentUserReference]),
                                          },
                                        ),
                                      });

                                      context.pushNamed(
                                        'EntrepreneurChatDatabase',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Personal Chat',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        fontSize: 20.0,
                                        letterSpacing: 1.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 393.0,
                            height: 60.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF222A33),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2.0,
                                  color: Color(0xFF333842),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        currentUserPhoto,
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 4.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat('MMMEd',
                                                    getCurrentTimestamp),
                                                'Mon, 01 Jan',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Hi, $currentUserDisplayName',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: const Color(0xFF222A33),
                                        icon: Icon(
                                          Icons.notification_add,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        icon: Icon(
                                          Icons.menu,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          size: 32.0,
                                        ),
                                        onPressed: () async {
                                          scaffoldKey.currentState!
                                              .openEndDrawer();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      decoration: const BoxDecoration(),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            functions.getOtherUserName(
                                chatEntrepreneurPageChatsRecord.userNames
                                    .toList(),
                                currentUserDisplayName),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: 393.0,
                      height: 579.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Mentor_-_Homepage.png',
                          ).image,
                        ),
                      ),
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          StreamBuilder<List<ChatMessagesRecord>>(
                            stream: queryChatMessagesRecord(
                              parent: widget.receiveChat,
                              queryBuilder: (chatMessagesRecord) =>
                                  chatMessagesRecord.orderBy('timeStamp',
                                      descending: true),
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
                              List<ChatMessagesRecord>
                                  listViewChatMessagesRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                reverse: true,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listViewChatMessagesRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewChatMessagesRecord =
                                      listViewChatMessagesRecordList[
                                          listViewIndex];
                                  return Stack(
                                    children: [
                                      if (listViewChatMessagesRecord
                                              .uidOfSender !=
                                          currentUserReference)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Container(
                                                  constraints: const BoxConstraints(
                                                    maxWidth: 300.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
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
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewChatMessagesRecord
                                                              .message,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    5.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Text(
                                                          dateTimeFormat(
                                                              'relative',
                                                              listViewChatMessagesRecord
                                                                  .timeStamp!),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
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
                                      if (listViewChatMessagesRecord
                                              .uidOfSender ==
                                          currentUserReference)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Container(
                                                  constraints: const BoxConstraints(
                                                    maxWidth: 300.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
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
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewChatMessagesRecord
                                                              .message,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    5.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Text(
                                                          dateTimeFormat(
                                                              'relative',
                                                              listViewChatMessagesRecord
                                                                  .timeStamp!),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
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
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      const Duration(milliseconds: 0),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    textInputAction: TextInputAction.done,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Type your message here',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF222A33),
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent3,
                                  disabledColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  icon: Icon(
                                    Icons.send,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    size: 24.0,
                                  ),
                                  onPressed: (_model.textController.text == '')
                                      ? null
                                      : () async {
                                          await ChatMessagesRecord.createDoc(
                                                  widget.receiveChat!)
                                              .set(createChatMessagesRecordData(
                                            message: _model.textController.text,
                                            timeStamp: getCurrentTimestamp,
                                            uidOfSender: currentUserReference,
                                            nameOfSender:
                                                currentUserDisplayName,
                                          ));

                                          await widget.receiveChat!.update({
                                            ...createChatsRecordData(
                                              lastMessage:
                                                  _model.textController.text,
                                              timeStamp: getCurrentTimestamp,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'lastMessageSeenBy':
                                                    FieldValue.delete(),
                                              },
                                            ),
                                          });

                                          await widget.receiveChat!.update({
                                            ...mapToFirestore(
                                              {
                                                'lastMessageSeenBy':
                                                    FieldValue.arrayUnion(
                                                        [currentUserReference]),
                                              },
                                            ),
                                          });
                                          setState(() {
                                            _model.textController?.clear();
                                          });
                                        },
                                ),
                              ),
                            ]
                                .addToStart(const SizedBox(width: 5.0))
                                .addToEnd(const SizedBox(width: 5.0)),
                          ),
                        ]
                            .addToStart(const SizedBox(height: 20.0))
                            .addToEnd(const SizedBox(height: 20.0)),
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
  }
}
