// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CartDataStruct extends FFFirebaseStruct {
  CartDataStruct({
    String? id,
    String? title,
    int? pricePerMonth,
    int? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _title = title,
        _pricePerMonth = pricePerMonth,
        _quantity = quantity,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "price_per_month" field.
  int? _pricePerMonth;
  int get pricePerMonth => _pricePerMonth ?? 0;
  set pricePerMonth(int? val) => _pricePerMonth = val;

  void incrementPricePerMonth(int amount) =>
      pricePerMonth = pricePerMonth + amount;

  bool hasPricePerMonth() => _pricePerMonth != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  static CartDataStruct fromMap(Map<String, dynamic> data) => CartDataStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        pricePerMonth: castToType<int>(data['price_per_month']),
        quantity: castToType<int>(data['quantity']),
      );

  static CartDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'price_per_month': _pricePerMonth,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'price_per_month': serializeParam(
          _pricePerMonth,
          ParamType.int,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        pricePerMonth: deserializeParam(
          data['price_per_month'],
          ParamType.int,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartDataStruct &&
        id == other.id &&
        title == other.title &&
        pricePerMonth == other.pricePerMonth &&
        quantity == other.quantity;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, title, pricePerMonth, quantity]);
}

CartDataStruct createCartDataStruct({
  String? id,
  String? title,
  int? pricePerMonth,
  int? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartDataStruct(
      id: id,
      title: title,
      pricePerMonth: pricePerMonth,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartDataStruct? updateCartDataStruct(
  CartDataStruct? cartData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartDataStructData(
  Map<String, dynamic> firestoreData,
  CartDataStruct? cartData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartData == null) {
    return;
  }
  if (cartData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartDataData = getCartDataFirestoreData(cartData, forFieldValue);
  final nestedData = cartDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartDataFirestoreData(
  CartDataStruct? cartData, [
  bool forFieldValue = false,
]) {
  if (cartData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartData.toMap());

  // Add any Firestore field values
  cartData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartDataListFirestoreData(
  List<CartDataStruct>? cartDatas,
) =>
    cartDatas?.map((e) => getCartDataFirestoreData(e, true)).toList() ?? [];
