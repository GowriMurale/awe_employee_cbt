/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the IDDetails type in your schema. */
class IDDetails extends amplify_core.Model {
  static const classType = const _IDDetailsModelType();
  final String id;
  final String? _empID;
  final String? _bwnIcNo;
  final String? _bwnIcColour;
  final String? _bwnIcExpiry;
  final String? _driveLic;
  final String? _inducBrief;
  final String? _inducBriefUp;
  final String? _myIcNo;
  final String? _ppNo;
  final String? _ppIssued;
  final String? _ppExpiry;
  final String? _ppDestinate;
  final String? _preEmp;
  final String? _preEmpPeriod;
  final String? _profilePhoto;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  IDDetailsModelIdentifier get modelIdentifier {
      return IDDetailsModelIdentifier(
        id: id
      );
  }
  
  String get empID {
    try {
      return _empID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get bwnIcNo {
    return _bwnIcNo;
  }
  
  String? get bwnIcColour {
    return _bwnIcColour;
  }
  
  String? get bwnIcExpiry {
    return _bwnIcExpiry;
  }
  
  String? get driveLic {
    return _driveLic;
  }
  
  String? get inducBrief {
    return _inducBrief;
  }
  
  String? get inducBriefUp {
    return _inducBriefUp;
  }
  
  String? get myIcNo {
    return _myIcNo;
  }
  
  String? get ppNo {
    return _ppNo;
  }
  
  String? get ppIssued {
    return _ppIssued;
  }
  
  String? get ppExpiry {
    return _ppExpiry;
  }
  
  String? get ppDestinate {
    return _ppDestinate;
  }
  
  String? get preEmp {
    return _preEmp;
  }
  
  String? get preEmpPeriod {
    return _preEmpPeriod;
  }
  
  String? get profilePhoto {
    return _profilePhoto;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const IDDetails._internal({required this.id, required empID, bwnIcNo, bwnIcColour, bwnIcExpiry, driveLic, inducBrief, inducBriefUp, myIcNo, ppNo, ppIssued, ppExpiry, ppDestinate, preEmp, preEmpPeriod, profilePhoto, createdAt, updatedAt}): _empID = empID, _bwnIcNo = bwnIcNo, _bwnIcColour = bwnIcColour, _bwnIcExpiry = bwnIcExpiry, _driveLic = driveLic, _inducBrief = inducBrief, _inducBriefUp = inducBriefUp, _myIcNo = myIcNo, _ppNo = ppNo, _ppIssued = ppIssued, _ppExpiry = ppExpiry, _ppDestinate = ppDestinate, _preEmp = preEmp, _preEmpPeriod = preEmpPeriod, _profilePhoto = profilePhoto, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory IDDetails({String? id, required String empID, String? bwnIcNo, String? bwnIcColour, String? bwnIcExpiry, String? driveLic, String? inducBrief, String? inducBriefUp, String? myIcNo, String? ppNo, String? ppIssued, String? ppExpiry, String? ppDestinate, String? preEmp, String? preEmpPeriod, String? profilePhoto}) {
    return IDDetails._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      bwnIcNo: bwnIcNo,
      bwnIcColour: bwnIcColour,
      bwnIcExpiry: bwnIcExpiry,
      driveLic: driveLic,
      inducBrief: inducBrief,
      inducBriefUp: inducBriefUp,
      myIcNo: myIcNo,
      ppNo: ppNo,
      ppIssued: ppIssued,
      ppExpiry: ppExpiry,
      ppDestinate: ppDestinate,
      preEmp: preEmp,
      preEmpPeriod: preEmpPeriod,
      profilePhoto: profilePhoto);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IDDetails &&
      id == other.id &&
      _empID == other._empID &&
      _bwnIcNo == other._bwnIcNo &&
      _bwnIcColour == other._bwnIcColour &&
      _bwnIcExpiry == other._bwnIcExpiry &&
      _driveLic == other._driveLic &&
      _inducBrief == other._inducBrief &&
      _inducBriefUp == other._inducBriefUp &&
      _myIcNo == other._myIcNo &&
      _ppNo == other._ppNo &&
      _ppIssued == other._ppIssued &&
      _ppExpiry == other._ppExpiry &&
      _ppDestinate == other._ppDestinate &&
      _preEmp == other._preEmp &&
      _preEmpPeriod == other._preEmpPeriod &&
      _profilePhoto == other._profilePhoto;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("IDDetails {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("bwnIcNo=" + "$_bwnIcNo" + ", ");
    buffer.write("bwnIcColour=" + "$_bwnIcColour" + ", ");
    buffer.write("bwnIcExpiry=" + "$_bwnIcExpiry" + ", ");
    buffer.write("driveLic=" + "$_driveLic" + ", ");
    buffer.write("inducBrief=" + "$_inducBrief" + ", ");
    buffer.write("inducBriefUp=" + "$_inducBriefUp" + ", ");
    buffer.write("myIcNo=" + "$_myIcNo" + ", ");
    buffer.write("ppNo=" + "$_ppNo" + ", ");
    buffer.write("ppIssued=" + "$_ppIssued" + ", ");
    buffer.write("ppExpiry=" + "$_ppExpiry" + ", ");
    buffer.write("ppDestinate=" + "$_ppDestinate" + ", ");
    buffer.write("preEmp=" + "$_preEmp" + ", ");
    buffer.write("preEmpPeriod=" + "$_preEmpPeriod" + ", ");
    buffer.write("profilePhoto=" + "$_profilePhoto" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  IDDetails copyWith({String? empID, String? bwnIcNo, String? bwnIcColour, String? bwnIcExpiry, String? driveLic, String? inducBrief, String? inducBriefUp, String? myIcNo, String? ppNo, String? ppIssued, String? ppExpiry, String? ppDestinate, String? preEmp, String? preEmpPeriod, String? profilePhoto}) {
    return IDDetails._internal(
      id: id,
      empID: empID ?? this.empID,
      bwnIcNo: bwnIcNo ?? this.bwnIcNo,
      bwnIcColour: bwnIcColour ?? this.bwnIcColour,
      bwnIcExpiry: bwnIcExpiry ?? this.bwnIcExpiry,
      driveLic: driveLic ?? this.driveLic,
      inducBrief: inducBrief ?? this.inducBrief,
      inducBriefUp: inducBriefUp ?? this.inducBriefUp,
      myIcNo: myIcNo ?? this.myIcNo,
      ppNo: ppNo ?? this.ppNo,
      ppIssued: ppIssued ?? this.ppIssued,
      ppExpiry: ppExpiry ?? this.ppExpiry,
      ppDestinate: ppDestinate ?? this.ppDestinate,
      preEmp: preEmp ?? this.preEmp,
      preEmpPeriod: preEmpPeriod ?? this.preEmpPeriod,
      profilePhoto: profilePhoto ?? this.profilePhoto);
  }
  
  IDDetails copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String?>? bwnIcNo,
    ModelFieldValue<String?>? bwnIcColour,
    ModelFieldValue<String?>? bwnIcExpiry,
    ModelFieldValue<String?>? driveLic,
    ModelFieldValue<String?>? inducBrief,
    ModelFieldValue<String?>? inducBriefUp,
    ModelFieldValue<String?>? myIcNo,
    ModelFieldValue<String?>? ppNo,
    ModelFieldValue<String?>? ppIssued,
    ModelFieldValue<String?>? ppExpiry,
    ModelFieldValue<String?>? ppDestinate,
    ModelFieldValue<String?>? preEmp,
    ModelFieldValue<String?>? preEmpPeriod,
    ModelFieldValue<String?>? profilePhoto
  }) {
    return IDDetails._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      bwnIcNo: bwnIcNo == null ? this.bwnIcNo : bwnIcNo.value,
      bwnIcColour: bwnIcColour == null ? this.bwnIcColour : bwnIcColour.value,
      bwnIcExpiry: bwnIcExpiry == null ? this.bwnIcExpiry : bwnIcExpiry.value,
      driveLic: driveLic == null ? this.driveLic : driveLic.value,
      inducBrief: inducBrief == null ? this.inducBrief : inducBrief.value,
      inducBriefUp: inducBriefUp == null ? this.inducBriefUp : inducBriefUp.value,
      myIcNo: myIcNo == null ? this.myIcNo : myIcNo.value,
      ppNo: ppNo == null ? this.ppNo : ppNo.value,
      ppIssued: ppIssued == null ? this.ppIssued : ppIssued.value,
      ppExpiry: ppExpiry == null ? this.ppExpiry : ppExpiry.value,
      ppDestinate: ppDestinate == null ? this.ppDestinate : ppDestinate.value,
      preEmp: preEmp == null ? this.preEmp : preEmp.value,
      preEmpPeriod: preEmpPeriod == null ? this.preEmpPeriod : preEmpPeriod.value,
      profilePhoto: profilePhoto == null ? this.profilePhoto : profilePhoto.value
    );
  }
  
  IDDetails.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _bwnIcNo = json['bwnIcNo'],
      _bwnIcColour = json['bwnIcColour'],
      _bwnIcExpiry = json['bwnIcExpiry'],
      _driveLic = json['driveLic'],
      _inducBrief = json['inducBrief'],
      _inducBriefUp = json['inducBriefUp'],
      _myIcNo = json['myIcNo'],
      _ppNo = json['ppNo'],
      _ppIssued = json['ppIssued'],
      _ppExpiry = json['ppExpiry'],
      _ppDestinate = json['ppDestinate'],
      _preEmp = json['preEmp'],
      _preEmpPeriod = json['preEmpPeriod'],
      _profilePhoto = json['profilePhoto'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'bwnIcNo': _bwnIcNo, 'bwnIcColour': _bwnIcColour, 'bwnIcExpiry': _bwnIcExpiry, 'driveLic': _driveLic, 'inducBrief': _inducBrief, 'inducBriefUp': _inducBriefUp, 'myIcNo': _myIcNo, 'ppNo': _ppNo, 'ppIssued': _ppIssued, 'ppExpiry': _ppExpiry, 'ppDestinate': _ppDestinate, 'preEmp': _preEmp, 'preEmpPeriod': _preEmpPeriod, 'profilePhoto': _profilePhoto, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'bwnIcNo': _bwnIcNo,
    'bwnIcColour': _bwnIcColour,
    'bwnIcExpiry': _bwnIcExpiry,
    'driveLic': _driveLic,
    'inducBrief': _inducBrief,
    'inducBriefUp': _inducBriefUp,
    'myIcNo': _myIcNo,
    'ppNo': _ppNo,
    'ppIssued': _ppIssued,
    'ppExpiry': _ppExpiry,
    'ppDestinate': _ppDestinate,
    'preEmp': _preEmp,
    'preEmpPeriod': _preEmpPeriod,
    'profilePhoto': _profilePhoto,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<IDDetailsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<IDDetailsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final BWNICNO = amplify_core.QueryField(fieldName: "bwnIcNo");
  static final BWNICCOLOUR = amplify_core.QueryField(fieldName: "bwnIcColour");
  static final BWNICEXPIRY = amplify_core.QueryField(fieldName: "bwnIcExpiry");
  static final DRIVELIC = amplify_core.QueryField(fieldName: "driveLic");
  static final INDUCBRIEF = amplify_core.QueryField(fieldName: "inducBrief");
  static final INDUCBRIEFUP = amplify_core.QueryField(fieldName: "inducBriefUp");
  static final MYICNO = amplify_core.QueryField(fieldName: "myIcNo");
  static final PPNO = amplify_core.QueryField(fieldName: "ppNo");
  static final PPISSUED = amplify_core.QueryField(fieldName: "ppIssued");
  static final PPEXPIRY = amplify_core.QueryField(fieldName: "ppExpiry");
  static final PPDESTINATE = amplify_core.QueryField(fieldName: "ppDestinate");
  static final PREEMP = amplify_core.QueryField(fieldName: "preEmp");
  static final PREEMPPERIOD = amplify_core.QueryField(fieldName: "preEmpPeriod");
  static final PROFILEPHOTO = amplify_core.QueryField(fieldName: "profilePhoto");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "IDDetails";
    modelSchemaDefinition.pluralName = "IDDetails";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.BWNICNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.BWNICCOLOUR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.BWNICEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.DRIVELIC,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.INDUCBRIEF,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.INDUCBRIEFUP,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.MYICNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.PPNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.PPISSUED,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.PPEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.PPDESTINATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.PREEMP,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.PREEMPPERIOD,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: IDDetails.PROFILEPHOTO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _IDDetailsModelType extends amplify_core.ModelType<IDDetails> {
  const _IDDetailsModelType();
  
  @override
  IDDetails fromJson(Map<String, dynamic> jsonData) {
    return IDDetails.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'IDDetails';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [IDDetails] in your schema.
 */
class IDDetailsModelIdentifier implements amplify_core.ModelIdentifier<IDDetails> {
  final String id;

  /** Create an instance of IDDetailsModelIdentifier using [id] the primary key. */
  const IDDetailsModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'IDDetailsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is IDDetailsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}