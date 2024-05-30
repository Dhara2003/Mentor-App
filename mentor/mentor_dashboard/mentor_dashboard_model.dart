import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/components/home_page_card_component/home_page_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_dashboard_widget.dart' show MentorDashboardWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MentorDashboardModel extends FlutterFlowModel<MentorDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 2;

  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel1;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel2;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel3;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel4;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel5;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel6;
  // Model for drawerMentorComp component.
  late DrawerMentorCompModel drawerMentorCompModel;

  @override
  void initState(BuildContext context) {
    homePageCardComponentModel1 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel2 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel3 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel4 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel5 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel6 =
        createModel(context, () => HomePageCardComponentModel());
    drawerMentorCompModel = createModel(context, () => DrawerMentorCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homePageCardComponentModel1.dispose();
    homePageCardComponentModel2.dispose();
    homePageCardComponentModel3.dispose();
    homePageCardComponentModel4.dispose();
    homePageCardComponentModel5.dispose();
    homePageCardComponentModel6.dispose();
    drawerMentorCompModel.dispose();
  }
}
