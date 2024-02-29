import '/backend/api_requests/api_calls.dart';
import '/components/country_dropdown/country_dropdown_widget.dart';
import '/components/mybutton/mybutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'login_screen3_widget.dart' show LoginScreen3Widget;
import 'package:flutter/material.dart';

class LoginScreen3Model extends FlutterFlowModel<LoginScreen3Widget> {
  ///  Local state fields for this page.

  String? dateTime = '';

  List<String> countries = [];
  void addToCountries(String item) => countries.add(item);
  void removeFromCountries(String item) => countries.remove(item);
  void removeAtIndexFromCountries(int index) => countries.removeAt(index);
  void insertAtIndexInCountries(int index, String item) =>
      countries.insert(index, item);
  void updateCountriesAtIndex(int index, Function(String) updateFn) =>
      countries[index] = updateFn(countries[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for CountryDropdown component.
  late CountryDropdownModel countryDropdownModel;
  // Model for mybutton component.
  late MybuttonModel mybuttonModel;
  // Stores action output result for [Backend Call - API (AddUser)] action in mybutton widget.
  ApiCallResponse? apiResultxwf;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    countryDropdownModel = createModel(context, () => CountryDropdownModel());
    mybuttonModel = createModel(context, () => MybuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    countryDropdownModel.dispose();
    mybuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
