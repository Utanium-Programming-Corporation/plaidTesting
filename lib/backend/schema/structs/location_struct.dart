// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationStruct extends FFFirebaseStruct {
  LocationStruct({
    String? address,
    String? city,
    String? country,
    String? lat,
    String? lon,
    String? postalCode,
    String? region,
    String? storeNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _address = address,
        _city = city,
        _country = country,
        _lat = lat,
        _lon = lon,
        _postalCode = postalCode,
        _region = region,
        _storeNumber = storeNumber,
        super(firestoreUtilData);

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "lat" field.
  String? _lat;
  String get lat => _lat ?? '';
  set lat(String? val) => _lat = val;

  bool hasLat() => _lat != null;

  // "lon" field.
  String? _lon;
  String get lon => _lon ?? '';
  set lon(String? val) => _lon = val;

  bool hasLon() => _lon != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "store_number" field.
  String? _storeNumber;
  String get storeNumber => _storeNumber ?? '';
  set storeNumber(String? val) => _storeNumber = val;

  bool hasStoreNumber() => _storeNumber != null;

  static LocationStruct fromMap(Map<String, dynamic> data) => LocationStruct(
        address: data['address'] as String?,
        city: data['city'] as String?,
        country: data['country'] as String?,
        lat: data['lat'] as String?,
        lon: data['lon'] as String?,
        postalCode: data['postal_code'] as String?,
        region: data['region'] as String?,
        storeNumber: data['store_number'] as String?,
      );

  static LocationStruct? maybeFromMap(dynamic data) =>
      data is Map ? LocationStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'city': _city,
        'country': _country,
        'lat': _lat,
        'lon': _lon,
        'postal_code': _postalCode,
        'region': _region,
        'store_number': _storeNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.String,
        ),
        'lon': serializeParam(
          _lon,
          ParamType.String,
        ),
        'postal_code': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'store_number': serializeParam(
          _storeNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationStruct(
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.String,
          false,
        ),
        lon: deserializeParam(
          data['lon'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postal_code'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        storeNumber: deserializeParam(
          data['store_number'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationStruct &&
        address == other.address &&
        city == other.city &&
        country == other.country &&
        lat == other.lat &&
        lon == other.lon &&
        postalCode == other.postalCode &&
        region == other.region &&
        storeNumber == other.storeNumber;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [address, city, country, lat, lon, postalCode, region, storeNumber]);
}

LocationStruct createLocationStruct({
  String? address,
  String? city,
  String? country,
  String? lat,
  String? lon,
  String? postalCode,
  String? region,
  String? storeNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationStruct(
      address: address,
      city: city,
      country: country,
      lat: lat,
      lon: lon,
      postalCode: postalCode,
      region: region,
      storeNumber: storeNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocationStruct? updateLocationStruct(
  LocationStruct? location, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    location
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocationStructData(
  Map<String, dynamic> firestoreData,
  LocationStruct? location,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (location == null) {
    return;
  }
  if (location.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && location.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationData = getLocationFirestoreData(location, forFieldValue);
  final nestedData = locationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = location.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocationFirestoreData(
  LocationStruct? location, [
  bool forFieldValue = false,
]) {
  if (location == null) {
    return {};
  }
  final firestoreData = mapToFirestore(location.toMap());

  // Add any Firestore field values
  location.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationListFirestoreData(
  List<LocationStruct>? locations,
) =>
    locations?.map((e) => getLocationFirestoreData(e, true)).toList() ?? [];
