import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pushGoalState = prefs.getString('ff_pushGoalState') ?? _pushGoalState;
    });
    _safeInit(() {
      _pushNameState = prefs.getString('ff_pushNameState') ?? _pushNameState;
    });
    _safeInit(() {
      _pushIndustryState =
          prefs.getString('ff_pushIndustryState') ?? _pushIndustryState;
    });
    _safeInit(() {
      _publishDate = prefs.containsKey('ff_publishDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_publishDate')!)
          : _publishDate;
    });
    _safeInit(() {
      _pushArticleState =
          prefs.getString('ff_pushArticleState') ?? _pushArticleState;
    });
    _safeInit(() {
      _pushFeaturedImageState = prefs.getString('ff_pushFeaturedImageState') ??
          _pushFeaturedImageState;
    });
    _safeInit(() {
      _pushNotesState = prefs.getString('ff_pushNotesState') ?? _pushNotesState;
    });
    _safeInit(() {
      _mediaCart = prefs
              .getStringList('ff_mediaCart')
              ?.map((path) => path.ref)
              .toList() ??
          _mediaCart;
    });
    _safeInit(() {
      _mediaCartPriceSummary = prefs
              .getStringList('ff_mediaCartPriceSummary')
              ?.map(double.parse)
              .toList() ??
          _mediaCartPriceSummary;
    });
    _safeInit(() {
      _writeForMeCart = prefs
              .getStringList('ff_writeForMeCart')
              ?.map((path) => path.ref)
              .toList() ??
          _writeForMeCart;
    });
    _safeInit(() {
      _writeForMePriceSummary = prefs
              .getStringList('ff_writeForMePriceSummary')
              ?.map(double.parse)
              .toList() ??
          _writeForMePriceSummary;
    });
    _safeInit(() {
      _funding = prefs.getDouble('ff_funding') ?? _funding;
    });
    _safeInit(() {
      _billboardCampaignTitleState =
          prefs.getString('ff_billboardCampaignTitleState') ??
              _billboardCampaignTitleState;
    });
    _safeInit(() {
      _billboardCampaignDescription =
          prefs.getString('ff_billboardCampaignDescription') ??
              _billboardCampaignDescription;
    });
    _safeInit(() {
      _billboardCampaignObjective =
          prefs.getString('ff_billboardCampaignObjective') ??
              _billboardCampaignObjective;
    });
    _safeInit(() {
      _billboardCampaignDuration =
          prefs.containsKey('ff_billboardCampaignDuration')
              ? DateTime.fromMillisecondsSinceEpoch(
                  prefs.getInt('ff_billboardCampaignDuration')!)
              : _billboardCampaignDuration;
    });
    _safeInit(() {
      _billboardCampaignEndDate =
          prefs.containsKey('ff_billboardCampaignEndDate')
              ? DateTime.fromMillisecondsSinceEpoch(
                  prefs.getInt('ff_billboardCampaignEndDate')!)
              : _billboardCampaignEndDate;
    });
    _safeInit(() {
      _billboardCart = prefs
              .getStringList('ff_billboardCart')
              ?.map((path) => path.ref)
              .toList() ??
          _billboardCart;
    });
    _safeInit(() {
      _billboardCartSummary = prefs
              .getStringList('ff_billboardCartSummary')
              ?.map(int.parse)
              .toList() ??
          _billboardCartSummary;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _pushGoalState = '';
  String get pushGoalState => _pushGoalState;
  set pushGoalState(String value) {
    _pushGoalState = value;
    prefs.setString('ff_pushGoalState', value);
  }

  String _pushNameState = '';
  String get pushNameState => _pushNameState;
  set pushNameState(String value) {
    _pushNameState = value;
    prefs.setString('ff_pushNameState', value);
  }

  String _pushIndustryState = '';
  String get pushIndustryState => _pushIndustryState;
  set pushIndustryState(String value) {
    _pushIndustryState = value;
    prefs.setString('ff_pushIndustryState', value);
  }

  bool _pushSaveBtnState = false;
  bool get pushSaveBtnState => _pushSaveBtnState;
  set pushSaveBtnState(bool value) {
    _pushSaveBtnState = value;
  }

  bool _pushNameBtn = false;
  bool get pushNameBtn => _pushNameBtn;
  set pushNameBtn(bool value) {
    _pushNameBtn = value;
  }

  DateTime? _publishDate = DateTime.fromMillisecondsSinceEpoch(1753874400000);
  DateTime? get publishDate => _publishDate;
  set publishDate(DateTime? value) {
    _publishDate = value;
    value != null
        ? prefs.setInt('ff_publishDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_publishDate');
  }

  String _pushArticleState = '';
  String get pushArticleState => _pushArticleState;
  set pushArticleState(String value) {
    _pushArticleState = value;
    prefs.setString('ff_pushArticleState', value);
  }

  String _pushFeaturedImageState = '';
  String get pushFeaturedImageState => _pushFeaturedImageState;
  set pushFeaturedImageState(String value) {
    _pushFeaturedImageState = value;
    prefs.setString('ff_pushFeaturedImageState', value);
  }

  String _pushNotesState = '';
  String get pushNotesState => _pushNotesState;
  set pushNotesState(String value) {
    _pushNotesState = value;
    prefs.setString('ff_pushNotesState', value);
  }

  int _random = 0;
  int get random => _random;
  set random(int value) {
    _random = value;
  }

  List<DocumentReference> _mediaCart = [];
  List<DocumentReference> get mediaCart => _mediaCart;
  set mediaCart(List<DocumentReference> value) {
    _mediaCart = value;
    prefs.setStringList('ff_mediaCart', value.map((x) => x.path).toList());
  }

  void addToMediaCart(DocumentReference value) {
    mediaCart.add(value);
    prefs.setStringList('ff_mediaCart', _mediaCart.map((x) => x.path).toList());
  }

  void removeFromMediaCart(DocumentReference value) {
    mediaCart.remove(value);
    prefs.setStringList('ff_mediaCart', _mediaCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromMediaCart(int index) {
    mediaCart.removeAt(index);
    prefs.setStringList('ff_mediaCart', _mediaCart.map((x) => x.path).toList());
  }

  void updateMediaCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    mediaCart[index] = updateFn(_mediaCart[index]);
    prefs.setStringList('ff_mediaCart', _mediaCart.map((x) => x.path).toList());
  }

  void insertAtIndexInMediaCart(int index, DocumentReference value) {
    mediaCart.insert(index, value);
    prefs.setStringList('ff_mediaCart', _mediaCart.map((x) => x.path).toList());
  }

  List<double> _mediaCartPriceSummary = [];
  List<double> get mediaCartPriceSummary => _mediaCartPriceSummary;
  set mediaCartPriceSummary(List<double> value) {
    _mediaCartPriceSummary = value;
    prefs.setStringList(
        'ff_mediaCartPriceSummary', value.map((x) => x.toString()).toList());
  }

  void addToMediaCartPriceSummary(double value) {
    mediaCartPriceSummary.add(value);
    prefs.setStringList('ff_mediaCartPriceSummary',
        _mediaCartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeFromMediaCartPriceSummary(double value) {
    mediaCartPriceSummary.remove(value);
    prefs.setStringList('ff_mediaCartPriceSummary',
        _mediaCartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMediaCartPriceSummary(int index) {
    mediaCartPriceSummary.removeAt(index);
    prefs.setStringList('ff_mediaCartPriceSummary',
        _mediaCartPriceSummary.map((x) => x.toString()).toList());
  }

  void updateMediaCartPriceSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    mediaCartPriceSummary[index] = updateFn(_mediaCartPriceSummary[index]);
    prefs.setStringList('ff_mediaCartPriceSummary',
        _mediaCartPriceSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMediaCartPriceSummary(int index, double value) {
    mediaCartPriceSummary.insert(index, value);
    prefs.setStringList('ff_mediaCartPriceSummary',
        _mediaCartPriceSummary.map((x) => x.toString()).toList());
  }

  bool _mediaSearchResults = false;
  bool get mediaSearchResults => _mediaSearchResults;
  set mediaSearchResults(bool value) {
    _mediaSearchResults = value;
  }

  List<DocumentReference> _writeForMeCart = [];
  List<DocumentReference> get writeForMeCart => _writeForMeCart;
  set writeForMeCart(List<DocumentReference> value) {
    _writeForMeCart = value;
    prefs.setStringList('ff_writeForMeCart', value.map((x) => x.path).toList());
  }

  void addToWriteForMeCart(DocumentReference value) {
    writeForMeCart.add(value);
    prefs.setStringList(
        'ff_writeForMeCart', _writeForMeCart.map((x) => x.path).toList());
  }

  void removeFromWriteForMeCart(DocumentReference value) {
    writeForMeCart.remove(value);
    prefs.setStringList(
        'ff_writeForMeCart', _writeForMeCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromWriteForMeCart(int index) {
    writeForMeCart.removeAt(index);
    prefs.setStringList(
        'ff_writeForMeCart', _writeForMeCart.map((x) => x.path).toList());
  }

  void updateWriteForMeCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    writeForMeCart[index] = updateFn(_writeForMeCart[index]);
    prefs.setStringList(
        'ff_writeForMeCart', _writeForMeCart.map((x) => x.path).toList());
  }

  void insertAtIndexInWriteForMeCart(int index, DocumentReference value) {
    writeForMeCart.insert(index, value);
    prefs.setStringList(
        'ff_writeForMeCart', _writeForMeCart.map((x) => x.path).toList());
  }

  List<double> _writeForMePriceSummary = [];
  List<double> get writeForMePriceSummary => _writeForMePriceSummary;
  set writeForMePriceSummary(List<double> value) {
    _writeForMePriceSummary = value;
    prefs.setStringList(
        'ff_writeForMePriceSummary', value.map((x) => x.toString()).toList());
  }

  void addToWriteForMePriceSummary(double value) {
    writeForMePriceSummary.add(value);
    prefs.setStringList('ff_writeForMePriceSummary',
        _writeForMePriceSummary.map((x) => x.toString()).toList());
  }

  void removeFromWriteForMePriceSummary(double value) {
    writeForMePriceSummary.remove(value);
    prefs.setStringList('ff_writeForMePriceSummary',
        _writeForMePriceSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromWriteForMePriceSummary(int index) {
    writeForMePriceSummary.removeAt(index);
    prefs.setStringList('ff_writeForMePriceSummary',
        _writeForMePriceSummary.map((x) => x.toString()).toList());
  }

  void updateWriteForMePriceSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    writeForMePriceSummary[index] = updateFn(_writeForMePriceSummary[index]);
    prefs.setStringList('ff_writeForMePriceSummary',
        _writeForMePriceSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInWriteForMePriceSummary(int index, double value) {
    writeForMePriceSummary.insert(index, value);
    prefs.setStringList('ff_writeForMePriceSummary',
        _writeForMePriceSummary.map((x) => x.toString()).toList());
  }

  double _funding = 0.0;
  double get funding => _funding;
  set funding(double value) {
    _funding = value;
    prefs.setDouble('ff_funding', value);
  }

  double _earningTotalAmount = 0.0;
  double get earningTotalAmount => _earningTotalAmount;
  set earningTotalAmount(double value) {
    _earningTotalAmount = value;
  }

  String _billboardCampaignTitleState = '';
  String get billboardCampaignTitleState => _billboardCampaignTitleState;
  set billboardCampaignTitleState(String value) {
    _billboardCampaignTitleState = value;
    prefs.setString('ff_billboardCampaignTitleState', value);
  }

  /// Describe your what your advertising and your objective
  String _billboardCampaignDescription = '';
  String get billboardCampaignDescription => _billboardCampaignDescription;
  set billboardCampaignDescription(String value) {
    _billboardCampaignDescription = value;
    prefs.setString('ff_billboardCampaignDescription', value);
  }

  String _billboardCampaignObjective = '';
  String get billboardCampaignObjective => _billboardCampaignObjective;
  set billboardCampaignObjective(String value) {
    _billboardCampaignObjective = value;
    prefs.setString('ff_billboardCampaignObjective', value);
  }

  DateTime? _billboardCampaignDuration =
      DateTime.fromMillisecondsSinceEpoch(1753874400000);
  DateTime? get billboardCampaignDuration => _billboardCampaignDuration;
  set billboardCampaignDuration(DateTime? value) {
    _billboardCampaignDuration = value;
    value != null
        ? prefs.setInt(
            'ff_billboardCampaignDuration', value.millisecondsSinceEpoch)
        : prefs.remove('ff_billboardCampaignDuration');
  }

  DateTime? _billboardCampaignEndDate =
      DateTime.fromMillisecondsSinceEpoch(1753874460000);
  DateTime? get billboardCampaignEndDate => _billboardCampaignEndDate;
  set billboardCampaignEndDate(DateTime? value) {
    _billboardCampaignEndDate = value;
    value != null
        ? prefs.setInt(
            'ff_billboardCampaignEndDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_billboardCampaignEndDate');
  }

  String _filterByLocation = '';
  String get filterByLocation => _filterByLocation;
  set filterByLocation(String value) {
    _filterByLocation = value;
  }

  String _filterByCategory = '';
  String get filterByCategory => _filterByCategory;
  set filterByCategory(String value) {
    _filterByCategory = value;
  }

  int _filterByPrice = 0;
  int get filterByPrice => _filterByPrice;
  set filterByPrice(int value) {
    _filterByPrice = value;
  }

  bool _billboardSearchResult = false;
  bool get billboardSearchResult => _billboardSearchResult;
  set billboardSearchResult(bool value) {
    _billboardSearchResult = value;
  }

  List<DocumentReference> _billboardCart = [];
  List<DocumentReference> get billboardCart => _billboardCart;
  set billboardCart(List<DocumentReference> value) {
    _billboardCart = value;
    prefs.setStringList('ff_billboardCart', value.map((x) => x.path).toList());
  }

  void addToBillboardCart(DocumentReference value) {
    billboardCart.add(value);
    prefs.setStringList(
        'ff_billboardCart', _billboardCart.map((x) => x.path).toList());
  }

  void removeFromBillboardCart(DocumentReference value) {
    billboardCart.remove(value);
    prefs.setStringList(
        'ff_billboardCart', _billboardCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromBillboardCart(int index) {
    billboardCart.removeAt(index);
    prefs.setStringList(
        'ff_billboardCart', _billboardCart.map((x) => x.path).toList());
  }

  void updateBillboardCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    billboardCart[index] = updateFn(_billboardCart[index]);
    prefs.setStringList(
        'ff_billboardCart', _billboardCart.map((x) => x.path).toList());
  }

  void insertAtIndexInBillboardCart(int index, DocumentReference value) {
    billboardCart.insert(index, value);
    prefs.setStringList(
        'ff_billboardCart', _billboardCart.map((x) => x.path).toList());
  }

  List<int> _billboardCartSummary = [];
  List<int> get billboardCartSummary => _billboardCartSummary;
  set billboardCartSummary(List<int> value) {
    _billboardCartSummary = value;
    prefs.setStringList(
        'ff_billboardCartSummary', value.map((x) => x.toString()).toList());
  }

  void addToBillboardCartSummary(int value) {
    billboardCartSummary.add(value);
    prefs.setStringList('ff_billboardCartSummary',
        _billboardCartSummary.map((x) => x.toString()).toList());
  }

  void removeFromBillboardCartSummary(int value) {
    billboardCartSummary.remove(value);
    prefs.setStringList('ff_billboardCartSummary',
        _billboardCartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromBillboardCartSummary(int index) {
    billboardCartSummary.removeAt(index);
    prefs.setStringList('ff_billboardCartSummary',
        _billboardCartSummary.map((x) => x.toString()).toList());
  }

  void updateBillboardCartSummaryAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    billboardCartSummary[index] = updateFn(_billboardCartSummary[index]);
    prefs.setStringList('ff_billboardCartSummary',
        _billboardCartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInBillboardCartSummary(int index, int value) {
    billboardCartSummary.insert(index, value);
    prefs.setStringList('ff_billboardCartSummary',
        _billboardCartSummary.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
