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

import 'EmployeePersonalDoc.dart' as awe_epd;
import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the EmployeePersonalInfo type in your schema. */
class EmployeePersonalInfo extends amplify_core.Model {
  static const classType = const _EmployeePersonalInfoModelType();
  final String id;
  final String? _empID;
  final String? _name;
  final String? _gender;
  final String? _dateOfBirth;
  final String? _email;
  final String? _nationality;
  final String? _otherNationality;
  final String? _religion;
  final String? _marital;
  final String? _race;
  final String? _bruneiIcNo;
  final String? _bruneiIcColour;
  final String? _bruneiIcExpiry;
  final String? _malaysianIcNumber;
  final String? _malaysianIcExpiry;
  final awe_epd.EmployeePersonalDoc? _EmployeePersonalDoc;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _employeePersonalInfoEmployeePersonalDocId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EmployeePersonalInfoModelIdentifier get modelIdentifier {
      return EmployeePersonalInfoModelIdentifier(
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
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get gender {
    try {
      return _gender!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dateOfBirth {
    try {
      return _dateOfBirth!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get nationality {
    try {
      return _nationality!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get otherNationality {
    return _otherNationality;
  }
  
  String get religion {
    try {
      return _religion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get marital {
    try {
      return _marital!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get race {
    try {
      return _race!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get bruneiIcNo {
    return _bruneiIcNo;
  }
  
  String? get bruneiIcColour {
    return _bruneiIcColour;
  }
  
  String? get bruneiIcExpiry {
    return _bruneiIcExpiry;
  }
  
  String? get malaysianIcNumber {
    return _malaysianIcNumber;
  }
  
  String? get malaysianIcExpiry {
    return _malaysianIcExpiry;
  }
  
  awe_epd.EmployeePersonalDoc? get EmployeePersonalDoc {
    return _EmployeePersonalDoc;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get employeePersonalInfoEmployeePersonalDocId {
    return _employeePersonalInfoEmployeePersonalDocId;
  }
  
  const EmployeePersonalInfo._internal({required this.id, required empID, required name, required gender, required dateOfBirth, required email, required nationality, otherNationality, required religion, required marital, required race, bruneiIcNo, bruneiIcColour, bruneiIcExpiry, malaysianIcNumber, malaysianIcExpiry, EmployeePersonalDoc, createdAt, updatedAt, employeePersonalInfoEmployeePersonalDocId}): _empID = empID, _name = name, _gender = gender, _dateOfBirth = dateOfBirth, _email = email, _nationality = nationality, _otherNationality = otherNationality, _religion = religion, _marital = marital, _race = race, _bruneiIcNo = bruneiIcNo, _bruneiIcColour = bruneiIcColour, _bruneiIcExpiry = bruneiIcExpiry, _malaysianIcNumber = malaysianIcNumber, _malaysianIcExpiry = malaysianIcExpiry, _EmployeePersonalDoc = EmployeePersonalDoc, _createdAt = createdAt, _updatedAt = updatedAt, _employeePersonalInfoEmployeePersonalDocId = employeePersonalInfoEmployeePersonalDocId;
  
  factory EmployeePersonalInfo({String? id, required String empID, required String name, required String gender, required String dateOfBirth, required String email, required String nationality, String? otherNationality, required String religion, required String marital, required String race, String? bruneiIcNo, String? bruneiIcColour, String? bruneiIcExpiry, String? malaysianIcNumber, String? malaysianIcExpiry, awe_epd.EmployeePersonalDoc? EmployeePersonalDoc, String? employeePersonalInfoEmployeePersonalDocId}) {
    return EmployeePersonalInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      name: name,
      gender: gender,
      dateOfBirth: dateOfBirth,
      email: email,
      nationality: nationality,
      otherNationality: otherNationality,
      religion: religion,
      marital: marital,
      race: race,
      bruneiIcNo: bruneiIcNo,
      bruneiIcColour: bruneiIcColour,
      bruneiIcExpiry: bruneiIcExpiry,
      malaysianIcNumber: malaysianIcNumber,
      malaysianIcExpiry: malaysianIcExpiry,
      EmployeePersonalDoc: EmployeePersonalDoc,
      employeePersonalInfoEmployeePersonalDocId: employeePersonalInfoEmployeePersonalDocId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeePersonalInfo &&
      id == other.id &&
      _empID == other._empID &&
      _name == other._name &&
      _gender == other._gender &&
      _dateOfBirth == other._dateOfBirth &&
      _email == other._email &&
      _nationality == other._nationality &&
      _otherNationality == other._otherNationality &&
      _religion == other._religion &&
      _marital == other._marital &&
      _race == other._race &&
      _bruneiIcNo == other._bruneiIcNo &&
      _bruneiIcColour == other._bruneiIcColour &&
      _bruneiIcExpiry == other._bruneiIcExpiry &&
      _malaysianIcNumber == other._malaysianIcNumber &&
      _malaysianIcExpiry == other._malaysianIcExpiry &&
      _EmployeePersonalDoc == other._EmployeePersonalDoc &&
      _employeePersonalInfoEmployeePersonalDocId == other._employeePersonalInfoEmployeePersonalDocId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("EmployeePersonalInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("gender=" + "$_gender" + ", ");
    buffer.write("dateOfBirth=" + "$_dateOfBirth" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("nationality=" + "$_nationality" + ", ");
    buffer.write("otherNationality=" + "$_otherNationality" + ", ");
    buffer.write("religion=" + "$_religion" + ", ");
    buffer.write("marital=" + "$_marital" + ", ");
    buffer.write("race=" + "$_race" + ", ");
    buffer.write("bruneiIcNo=" + "$_bruneiIcNo" + ", ");
    buffer.write("bruneiIcColour=" + "$_bruneiIcColour" + ", ");
    buffer.write("bruneiIcExpiry=" + "$_bruneiIcExpiry" + ", ");
    buffer.write("malaysianIcNumber=" + "$_malaysianIcNumber" + ", ");
    buffer.write("malaysianIcExpiry=" + "$_malaysianIcExpiry" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("employeePersonalInfoEmployeePersonalDocId=" + "$_employeePersonalInfoEmployeePersonalDocId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  EmployeePersonalInfo copyWith({String? empID, String? name, String? gender, String? dateOfBirth, String? email, String? nationality, String? otherNationality, String? religion, String? marital, String? race, String? bruneiIcNo, String? bruneiIcColour, String? bruneiIcExpiry, String? malaysianIcNumber, String? malaysianIcExpiry, awe_epd.EmployeePersonalDoc? EmployeePersonalDoc, String? employeePersonalInfoEmployeePersonalDocId}) {
    return EmployeePersonalInfo._internal(
      id: id,
      empID: empID ?? this.empID,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      email: email ?? this.email,
      nationality: nationality ?? this.nationality,
      otherNationality: otherNationality ?? this.otherNationality,
      religion: religion ?? this.religion,
      marital: marital ?? this.marital,
      race: race ?? this.race,
      bruneiIcNo: bruneiIcNo ?? this.bruneiIcNo,
      bruneiIcColour: bruneiIcColour ?? this.bruneiIcColour,
      bruneiIcExpiry: bruneiIcExpiry ?? this.bruneiIcExpiry,
      malaysianIcNumber: malaysianIcNumber ?? this.malaysianIcNumber,
      malaysianIcExpiry: malaysianIcExpiry ?? this.malaysianIcExpiry,
      EmployeePersonalDoc: EmployeePersonalDoc ?? this.EmployeePersonalDoc,
      employeePersonalInfoEmployeePersonalDocId: employeePersonalInfoEmployeePersonalDocId ?? this.employeePersonalInfoEmployeePersonalDocId);
  }
  
  EmployeePersonalInfo copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? gender,
    ModelFieldValue<String>? dateOfBirth,
    ModelFieldValue<String>? email,
    ModelFieldValue<String>? nationality,
    ModelFieldValue<String?>? otherNationality,
    ModelFieldValue<String>? religion,
    ModelFieldValue<String>? marital,
    ModelFieldValue<String>? race,
    ModelFieldValue<String?>? bruneiIcNo,
    ModelFieldValue<String?>? bruneiIcColour,
    ModelFieldValue<String?>? bruneiIcExpiry,
    ModelFieldValue<String?>? malaysianIcNumber,
    ModelFieldValue<String?>? malaysianIcExpiry,
    ModelFieldValue<awe_epd.EmployeePersonalDoc?>? EmployeePersonalDoc,
    ModelFieldValue<String?>? employeePersonalInfoEmployeePersonalDocId
  }) {
    return EmployeePersonalInfo._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      name: name == null ? this.name : name.value,
      gender: gender == null ? this.gender : gender.value,
      dateOfBirth: dateOfBirth == null ? this.dateOfBirth : dateOfBirth.value,
      email: email == null ? this.email : email.value,
      nationality: nationality == null ? this.nationality : nationality.value,
      otherNationality: otherNationality == null ? this.otherNationality : otherNationality.value,
      religion: religion == null ? this.religion : religion.value,
      marital: marital == null ? this.marital : marital.value,
      race: race == null ? this.race : race.value,
      bruneiIcNo: bruneiIcNo == null ? this.bruneiIcNo : bruneiIcNo.value,
      bruneiIcColour: bruneiIcColour == null ? this.bruneiIcColour : bruneiIcColour.value,
      bruneiIcExpiry: bruneiIcExpiry == null ? this.bruneiIcExpiry : bruneiIcExpiry.value,
      malaysianIcNumber: malaysianIcNumber == null ? this.malaysianIcNumber : malaysianIcNumber.value,
      malaysianIcExpiry: malaysianIcExpiry == null ? this.malaysianIcExpiry : malaysianIcExpiry.value,
      EmployeePersonalDoc: EmployeePersonalDoc == null ? this.EmployeePersonalDoc : EmployeePersonalDoc.value,
      employeePersonalInfoEmployeePersonalDocId: employeePersonalInfoEmployeePersonalDocId == null ? this.employeePersonalInfoEmployeePersonalDocId : employeePersonalInfoEmployeePersonalDocId.value
    );
  }
  
  EmployeePersonalInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _name = json['name'],
      _gender = json['gender'],
      _dateOfBirth = json['dateOfBirth'],
      _email = json['email'],
      _nationality = json['nationality'],
      _otherNationality = json['otherNationality'],
      _religion = json['religion'],
      _marital = json['marital'],
      _race = json['race'],
      _bruneiIcNo = json['bruneiIcNo'],
      _bruneiIcColour = json['bruneiIcColour'],
      _bruneiIcExpiry = json['bruneiIcExpiry'],
      _malaysianIcNumber = json['malaysianIcNumber'],
      _malaysianIcExpiry = json['malaysianIcExpiry'],
      _EmployeePersonalDoc = json['EmployeePersonalDoc'] != null
        ? json['EmployeePersonalDoc']['serializedData'] != null
          ? awe_epd.EmployeePersonalDoc.fromJson(new Map<String, dynamic>.from(json['EmployeePersonalDoc']['serializedData']))
          : awe_epd.EmployeePersonalDoc.fromJson(new Map<String, dynamic>.from(json['EmployeePersonalDoc']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _employeePersonalInfoEmployeePersonalDocId = json['employeePersonalInfoEmployeePersonalDocId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'name': _name, 'gender': _gender, 'dateOfBirth': _dateOfBirth, 'email': _email, 'nationality': _nationality, 'otherNationality': _otherNationality, 'religion': _religion, 'marital': _marital, 'race': _race, 'bruneiIcNo': _bruneiIcNo, 'bruneiIcColour': _bruneiIcColour, 'bruneiIcExpiry': _bruneiIcExpiry, 'malaysianIcNumber': _malaysianIcNumber, 'malaysianIcExpiry': _malaysianIcExpiry, 'EmployeePersonalDoc': _EmployeePersonalDoc?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'employeePersonalInfoEmployeePersonalDocId': _employeePersonalInfoEmployeePersonalDocId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'name': _name,
    'gender': _gender,
    'dateOfBirth': _dateOfBirth,
    'email': _email,
    'nationality': _nationality,
    'otherNationality': _otherNationality,
    'religion': _religion,
    'marital': _marital,
    'race': _race,
    'bruneiIcNo': _bruneiIcNo,
    'bruneiIcColour': _bruneiIcColour,
    'bruneiIcExpiry': _bruneiIcExpiry,
    'malaysianIcNumber': _malaysianIcNumber,
    'malaysianIcExpiry': _malaysianIcExpiry,
    'EmployeePersonalDoc': _EmployeePersonalDoc,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'employeePersonalInfoEmployeePersonalDocId': _employeePersonalInfoEmployeePersonalDocId
  };

  static final amplify_core.QueryModelIdentifier<EmployeePersonalInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EmployeePersonalInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final GENDER = amplify_core.QueryField(fieldName: "gender");
  static final DATEOFBIRTH = amplify_core.QueryField(fieldName: "dateOfBirth");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final NATIONALITY = amplify_core.QueryField(fieldName: "nationality");
  static final OTHERNATIONALITY = amplify_core.QueryField(fieldName: "otherNationality");
  static final RELIGION = amplify_core.QueryField(fieldName: "religion");
  static final MARITAL = amplify_core.QueryField(fieldName: "marital");
  static final RACE = amplify_core.QueryField(fieldName: "race");
  static final BRUNEIICNO = amplify_core.QueryField(fieldName: "bruneiIcNo");
  static final BRUNEIICCOLOUR = amplify_core.QueryField(fieldName: "bruneiIcColour");
  static final BRUNEIICEXPIRY = amplify_core.QueryField(fieldName: "bruneiIcExpiry");
  static final MALAYSIANICNUMBER = amplify_core.QueryField(fieldName: "malaysianIcNumber");
  static final MALAYSIANICEXPIRY = amplify_core.QueryField(fieldName: "malaysianIcExpiry");
  static final EMPLOYEEPERSONALDOC = amplify_core.QueryField(
    fieldName: "EmployeePersonalDoc",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'EmployeePersonalDoc'));
  static final EMPLOYEEPERSONALINFOEMPLOYEEPERSONALDOCID = amplify_core.QueryField(fieldName: "employeePersonalInfoEmployeePersonalDocId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EmployeePersonalInfo";
    modelSchemaDefinition.pluralName = "EmployeePersonalInfos";
    
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
      key: EmployeePersonalInfo.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.GENDER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.DATEOFBIRTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.NATIONALITY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.OTHERNATIONALITY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.RELIGION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.MARITAL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.RACE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.BRUNEIICNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.BRUNEIICCOLOUR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.BRUNEIICEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.MALAYSIANICNUMBER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.MALAYSIANICEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: EmployeePersonalInfo.EMPLOYEEPERSONALDOC,
      isRequired: false,
      ofModelName: 'EmployeePersonalDoc',
      associatedKey: awe_epd.EmployeePersonalDoc.ID
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalInfo.EMPLOYEEPERSONALINFOEMPLOYEEPERSONALDOCID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _EmployeePersonalInfoModelType extends amplify_core.ModelType<EmployeePersonalInfo> {
  const _EmployeePersonalInfoModelType();
  
  @override
  EmployeePersonalInfo fromJson(Map<String, dynamic> jsonData) {
    return EmployeePersonalInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'EmployeePersonalInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [EmployeePersonalInfo] in your schema.
 */
class EmployeePersonalInfoModelIdentifier implements amplify_core.ModelIdentifier<EmployeePersonalInfo> {
  final String id;

  /** Create an instance of EmployeePersonalInfoModelIdentifier using [id] the primary key. */
  const EmployeePersonalInfoModelIdentifier({
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
  String toString() => 'EmployeePersonalInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EmployeePersonalInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}