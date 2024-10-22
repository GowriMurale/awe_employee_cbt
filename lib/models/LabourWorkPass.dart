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

import 'LabourDependentPass.dart' as awe_ldp;
import 'LabourMedicalInfo.dart' as awe_lmi;
import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the LabourWorkPass type in your schema. */
class LabourWorkPass extends amplify_core.Model {
  static const classType = const _LabourWorkPassModelType();
  final String id;
  final String? _empID;
  final String? _workPermitType;
  final String? _arrivalStampingExpiry;
  final String? _employmentPassEndorsement;
  final String? _immigrationDeptDate;
  final String? _employmentPassExpiry;
  final String? _employmentPassStatus;
  final List<String>? _labourUploadDoc;
  final String? _remarks;
  final awe_lmi.LabourMedicalInfo? _LabourMedicalInfo;
  final awe_ldp.LabourDependentPass? _LabourDependentPass;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _labourWorkPassLabourMedicalInfoId;
  final String? _labourWorkPassLabourDependentPassId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  LabourWorkPassModelIdentifier get modelIdentifier {
      return LabourWorkPassModelIdentifier(
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
  
  String get workPermitType {
    try {
      return _workPermitType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get arrivalStampingExpiry {
    try {
      return _arrivalStampingExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employmentPassEndorsement {
    try {
      return _employmentPassEndorsement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get immigrationDeptDate {
    try {
      return _immigrationDeptDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employmentPassExpiry {
    try {
      return _employmentPassExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employmentPassStatus {
    try {
      return _employmentPassStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get labourUploadDoc {
    return _labourUploadDoc;
  }
  
  String? get remarks {
    return _remarks;
  }
  
  awe_lmi.LabourMedicalInfo? get LabourMedicalInfo {
    return _LabourMedicalInfo;
  }
  
  awe_ldp.LabourDependentPass? get LabourDependentPass {
    return _LabourDependentPass;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get labourWorkPassLabourMedicalInfoId {
    return _labourWorkPassLabourMedicalInfoId;
  }
  
  String? get labourWorkPassLabourDependentPassId {
    return _labourWorkPassLabourDependentPassId;
  }
  
  const LabourWorkPass._internal({required this.id, required empID, required workPermitType, required arrivalStampingExpiry, required employmentPassEndorsement, required immigrationDeptDate, required employmentPassExpiry, required employmentPassStatus, labourUploadDoc, remarks, LabourMedicalInfo, LabourDependentPass, createdAt, updatedAt, labourWorkPassLabourMedicalInfoId, labourWorkPassLabourDependentPassId}): _empID = empID, _workPermitType = workPermitType, _arrivalStampingExpiry = arrivalStampingExpiry, _employmentPassEndorsement = employmentPassEndorsement, _immigrationDeptDate = immigrationDeptDate, _employmentPassExpiry = employmentPassExpiry, _employmentPassStatus = employmentPassStatus, _labourUploadDoc = labourUploadDoc, _remarks = remarks, _LabourMedicalInfo = LabourMedicalInfo, _LabourDependentPass = LabourDependentPass, _createdAt = createdAt, _updatedAt = updatedAt, _labourWorkPassLabourMedicalInfoId = labourWorkPassLabourMedicalInfoId, _labourWorkPassLabourDependentPassId = labourWorkPassLabourDependentPassId;
  
  factory LabourWorkPass({String? id, required String empID, required String workPermitType, required String arrivalStampingExpiry, required String employmentPassEndorsement, required String immigrationDeptDate, required String employmentPassExpiry, required String employmentPassStatus, List<String>? labourUploadDoc, String? remarks, awe_lmi.LabourMedicalInfo? LabourMedicalInfo, awe_ldp.LabourDependentPass? LabourDependentPass, String? labourWorkPassLabourMedicalInfoId, String? labourWorkPassLabourDependentPassId}) {
    return LabourWorkPass._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      workPermitType: workPermitType,
      arrivalStampingExpiry: arrivalStampingExpiry,
      employmentPassEndorsement: employmentPassEndorsement,
      immigrationDeptDate: immigrationDeptDate,
      employmentPassExpiry: employmentPassExpiry,
      employmentPassStatus: employmentPassStatus,
      labourUploadDoc: labourUploadDoc != null ? List<String>.unmodifiable(labourUploadDoc) : labourUploadDoc,
      remarks: remarks,
      LabourMedicalInfo: LabourMedicalInfo,
      LabourDependentPass: LabourDependentPass,
      labourWorkPassLabourMedicalInfoId: labourWorkPassLabourMedicalInfoId,
      labourWorkPassLabourDependentPassId: labourWorkPassLabourDependentPassId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LabourWorkPass &&
      id == other.id &&
      _empID == other._empID &&
      _workPermitType == other._workPermitType &&
      _arrivalStampingExpiry == other._arrivalStampingExpiry &&
      _employmentPassEndorsement == other._employmentPassEndorsement &&
      _immigrationDeptDate == other._immigrationDeptDate &&
      _employmentPassExpiry == other._employmentPassExpiry &&
      _employmentPassStatus == other._employmentPassStatus &&
      DeepCollectionEquality().equals(_labourUploadDoc, other._labourUploadDoc) &&
      _remarks == other._remarks &&
      _LabourMedicalInfo == other._LabourMedicalInfo &&
      _LabourDependentPass == other._LabourDependentPass &&
      _labourWorkPassLabourMedicalInfoId == other._labourWorkPassLabourMedicalInfoId &&
      _labourWorkPassLabourDependentPassId == other._labourWorkPassLabourDependentPassId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LabourWorkPass {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("workPermitType=" + "$_workPermitType" + ", ");
    buffer.write("arrivalStampingExpiry=" + "$_arrivalStampingExpiry" + ", ");
    buffer.write("employmentPassEndorsement=" + "$_employmentPassEndorsement" + ", ");
    buffer.write("immigrationDeptDate=" + "$_immigrationDeptDate" + ", ");
    buffer.write("employmentPassExpiry=" + "$_employmentPassExpiry" + ", ");
    buffer.write("employmentPassStatus=" + "$_employmentPassStatus" + ", ");
    buffer.write("labourUploadDoc=" + (_labourUploadDoc != null ? _labourUploadDoc!.toString() : "null") + ", ");
    buffer.write("remarks=" + "$_remarks" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("labourWorkPassLabourMedicalInfoId=" + "$_labourWorkPassLabourMedicalInfoId" + ", ");
    buffer.write("labourWorkPassLabourDependentPassId=" + "$_labourWorkPassLabourDependentPassId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LabourWorkPass copyWith({String? empID, String? workPermitType, String? arrivalStampingExpiry, String? employmentPassEndorsement, String? immigrationDeptDate, String? employmentPassExpiry, String? employmentPassStatus, List<String>? labourUploadDoc, String? remarks, awe_lmi.LabourMedicalInfo? LabourMedicalInfo, awe_ldp.LabourDependentPass? LabourDependentPass, String? labourWorkPassLabourMedicalInfoId, String? labourWorkPassLabourDependentPassId}) {
    return LabourWorkPass._internal(
      id: id,
      empID: empID ?? this.empID,
      workPermitType: workPermitType ?? this.workPermitType,
      arrivalStampingExpiry: arrivalStampingExpiry ?? this.arrivalStampingExpiry,
      employmentPassEndorsement: employmentPassEndorsement ?? this.employmentPassEndorsement,
      immigrationDeptDate: immigrationDeptDate ?? this.immigrationDeptDate,
      employmentPassExpiry: employmentPassExpiry ?? this.employmentPassExpiry,
      employmentPassStatus: employmentPassStatus ?? this.employmentPassStatus,
      labourUploadDoc: labourUploadDoc ?? this.labourUploadDoc,
      remarks: remarks ?? this.remarks,
      LabourMedicalInfo: LabourMedicalInfo ?? this.LabourMedicalInfo,
      LabourDependentPass: LabourDependentPass ?? this.LabourDependentPass,
      labourWorkPassLabourMedicalInfoId: labourWorkPassLabourMedicalInfoId ?? this.labourWorkPassLabourMedicalInfoId,
      labourWorkPassLabourDependentPassId: labourWorkPassLabourDependentPassId ?? this.labourWorkPassLabourDependentPassId);
  }
  
  LabourWorkPass copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? workPermitType,
    ModelFieldValue<String>? arrivalStampingExpiry,
    ModelFieldValue<String>? employmentPassEndorsement,
    ModelFieldValue<String>? immigrationDeptDate,
    ModelFieldValue<String>? employmentPassExpiry,
    ModelFieldValue<String>? employmentPassStatus,
    ModelFieldValue<List<String>>? labourUploadDoc,
    ModelFieldValue<String?>? remarks,
    ModelFieldValue<awe_lmi.LabourMedicalInfo?>? LabourMedicalInfo,
    ModelFieldValue<awe_ldp.LabourDependentPass?>? LabourDependentPass,
    ModelFieldValue<String?>? labourWorkPassLabourMedicalInfoId,
    ModelFieldValue<String?>? labourWorkPassLabourDependentPassId
  }) {
    return LabourWorkPass._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      workPermitType: workPermitType == null ? this.workPermitType : workPermitType.value,
      arrivalStampingExpiry: arrivalStampingExpiry == null ? this.arrivalStampingExpiry : arrivalStampingExpiry.value,
      employmentPassEndorsement: employmentPassEndorsement == null ? this.employmentPassEndorsement : employmentPassEndorsement.value,
      immigrationDeptDate: immigrationDeptDate == null ? this.immigrationDeptDate : immigrationDeptDate.value,
      employmentPassExpiry: employmentPassExpiry == null ? this.employmentPassExpiry : employmentPassExpiry.value,
      employmentPassStatus: employmentPassStatus == null ? this.employmentPassStatus : employmentPassStatus.value,
      labourUploadDoc: labourUploadDoc == null ? this.labourUploadDoc : labourUploadDoc.value,
      remarks: remarks == null ? this.remarks : remarks.value,
      LabourMedicalInfo: LabourMedicalInfo == null ? this.LabourMedicalInfo : LabourMedicalInfo.value,
      LabourDependentPass: LabourDependentPass == null ? this.LabourDependentPass : LabourDependentPass.value,
      labourWorkPassLabourMedicalInfoId: labourWorkPassLabourMedicalInfoId == null ? this.labourWorkPassLabourMedicalInfoId : labourWorkPassLabourMedicalInfoId.value,
      labourWorkPassLabourDependentPassId: labourWorkPassLabourDependentPassId == null ? this.labourWorkPassLabourDependentPassId : labourWorkPassLabourDependentPassId.value
    );
  }
  
  LabourWorkPass.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _workPermitType = json['workPermitType'],
      _arrivalStampingExpiry = json['arrivalStampingExpiry'],
      _employmentPassEndorsement = json['employmentPassEndorsement'],
      _immigrationDeptDate = json['immigrationDeptDate'],
      _employmentPassExpiry = json['employmentPassExpiry'],
      _employmentPassStatus = json['employmentPassStatus'],
      _labourUploadDoc = json['labourUploadDoc']?.cast<String>(),
      _remarks = json['remarks'],
      _LabourMedicalInfo = json['LabourMedicalInfo'] != null
        ? json['LabourMedicalInfo']['serializedData'] != null
          ? awe_lmi.LabourMedicalInfo.fromJson(new Map<String, dynamic>.from(json['LabourMedicalInfo']['serializedData']))
          : awe_lmi.LabourMedicalInfo.fromJson(new Map<String, dynamic>.from(json['LabourMedicalInfo']))
        : null,
      _LabourDependentPass = json['LabourDependentPass'] != null
        ? json['LabourDependentPass']['serializedData'] != null
          ? awe_ldp.LabourDependentPass.fromJson(new Map<String, dynamic>.from(json['LabourDependentPass']['serializedData']))
          : awe_ldp.LabourDependentPass.fromJson(new Map<String, dynamic>.from(json['LabourDependentPass']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _labourWorkPassLabourMedicalInfoId = json['labourWorkPassLabourMedicalInfoId'],
      _labourWorkPassLabourDependentPassId = json['labourWorkPassLabourDependentPassId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'workPermitType': _workPermitType, 'arrivalStampingExpiry': _arrivalStampingExpiry, 'employmentPassEndorsement': _employmentPassEndorsement, 'immigrationDeptDate': _immigrationDeptDate, 'employmentPassExpiry': _employmentPassExpiry, 'employmentPassStatus': _employmentPassStatus, 'labourUploadDoc': _labourUploadDoc, 'remarks': _remarks, 'LabourMedicalInfo': _LabourMedicalInfo?.toJson(), 'LabourDependentPass': _LabourDependentPass?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'labourWorkPassLabourMedicalInfoId': _labourWorkPassLabourMedicalInfoId, 'labourWorkPassLabourDependentPassId': _labourWorkPassLabourDependentPassId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'workPermitType': _workPermitType,
    'arrivalStampingExpiry': _arrivalStampingExpiry,
    'employmentPassEndorsement': _employmentPassEndorsement,
    'immigrationDeptDate': _immigrationDeptDate,
    'employmentPassExpiry': _employmentPassExpiry,
    'employmentPassStatus': _employmentPassStatus,
    'labourUploadDoc': _labourUploadDoc,
    'remarks': _remarks,
    'LabourMedicalInfo': _LabourMedicalInfo,
    'LabourDependentPass': _LabourDependentPass,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'labourWorkPassLabourMedicalInfoId': _labourWorkPassLabourMedicalInfoId,
    'labourWorkPassLabourDependentPassId': _labourWorkPassLabourDependentPassId
  };

  static final amplify_core.QueryModelIdentifier<LabourWorkPassModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<LabourWorkPassModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final WORKPERMITTYPE = amplify_core.QueryField(fieldName: "workPermitType");
  static final ARRIVALSTAMPINGEXPIRY = amplify_core.QueryField(fieldName: "arrivalStampingExpiry");
  static final EMPLOYMENTPASSENDORSEMENT = amplify_core.QueryField(fieldName: "employmentPassEndorsement");
  static final IMMIGRATIONDEPTDATE = amplify_core.QueryField(fieldName: "immigrationDeptDate");
  static final EMPLOYMENTPASSEXPIRY = amplify_core.QueryField(fieldName: "employmentPassExpiry");
  static final EMPLOYMENTPASSSTATUS = amplify_core.QueryField(fieldName: "employmentPassStatus");
  static final LABOURUPLOADDOC = amplify_core.QueryField(fieldName: "labourUploadDoc");
  static final REMARKS = amplify_core.QueryField(fieldName: "remarks");
  static final LABOURMEDICALINFO = amplify_core.QueryField(
    fieldName: "LabourMedicalInfo",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'LabourMedicalInfo'));
  static final LABOURDEPENDENTPASS = amplify_core.QueryField(
    fieldName: "LabourDependentPass",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'LabourDependentPass'));
  static final LABOURWORKPASSLABOURMEDICALINFOID = amplify_core.QueryField(fieldName: "labourWorkPassLabourMedicalInfoId");
  static final LABOURWORKPASSLABOURDEPENDENTPASSID = amplify_core.QueryField(fieldName: "labourWorkPassLabourDependentPassId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LabourWorkPass";
    modelSchemaDefinition.pluralName = "LabourWorkPasses";
    
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
      key: LabourWorkPass.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.WORKPERMITTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.ARRIVALSTAMPINGEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.EMPLOYMENTPASSENDORSEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.IMMIGRATIONDEPTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.EMPLOYMENTPASSEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.EMPLOYMENTPASSSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.LABOURUPLOADDOC,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.REMARKS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: LabourWorkPass.LABOURMEDICALINFO,
      isRequired: false,
      ofModelName: 'LabourMedicalInfo',
      associatedKey: awe_lmi.LabourMedicalInfo.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: LabourWorkPass.LABOURDEPENDENTPASS,
      isRequired: false,
      ofModelName: 'LabourDependentPass',
      associatedKey: awe_ldp.LabourDependentPass.ID
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
      key: LabourWorkPass.LABOURWORKPASSLABOURMEDICALINFOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourWorkPass.LABOURWORKPASSLABOURDEPENDENTPASSID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _LabourWorkPassModelType extends amplify_core.ModelType<LabourWorkPass> {
  const _LabourWorkPassModelType();
  
  @override
  LabourWorkPass fromJson(Map<String, dynamic> jsonData) {
    return LabourWorkPass.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'LabourWorkPass';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [LabourWorkPass] in your schema.
 */
class LabourWorkPassModelIdentifier implements amplify_core.ModelIdentifier<LabourWorkPass> {
  final String id;

  /** Create an instance of LabourWorkPassModelIdentifier using [id] the primary key. */
  const LabourWorkPassModelIdentifier({
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
  String toString() => 'LabourWorkPassModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is LabourWorkPassModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}