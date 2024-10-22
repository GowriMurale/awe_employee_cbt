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


/** This is an auto generated class representing the LabourDependentPass type in your schema. */
class LabourDependentPass extends amplify_core.Model {
  static const classType = const _LabourDependentPassModelType();
  final String id;
  final String? _empID;
  final String? _airTicketStatus;
  final String? _dependentName;
  final String? _dependentPassportNumber;
  final String? _dependentPassportExpiy;
  final String? _labourDepositPaidBy;
  final String? _labourDepositReceiptNumber;
  final String? _labourDepositAmount;
  final String? _passportLocation;
  final String? _reEntryVisaApplication;
  final String? _immigrationApprovalDate;
  final String? _reEntryVisaExpiry;
  final String? _relation;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  LabourDependentPassModelIdentifier get modelIdentifier {
      return LabourDependentPassModelIdentifier(
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
  
  String get airTicketStatus {
    try {
      return _airTicketStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dependentName {
    try {
      return _dependentName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dependentPassportNumber {
    try {
      return _dependentPassportNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dependentPassportExpiy {
    try {
      return _dependentPassportExpiy!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get labourDepositPaidBy {
    try {
      return _labourDepositPaidBy!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get labourDepositReceiptNumber {
    try {
      return _labourDepositReceiptNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get labourDepositAmount {
    try {
      return _labourDepositAmount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get passportLocation {
    try {
      return _passportLocation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get reEntryVisaApplication {
    try {
      return _reEntryVisaApplication!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get immigrationApprovalDate {
    try {
      return _immigrationApprovalDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get reEntryVisaExpiry {
    try {
      return _reEntryVisaExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get relation {
    try {
      return _relation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const LabourDependentPass._internal({required this.id, required empID, required airTicketStatus, required dependentName, required dependentPassportNumber, required dependentPassportExpiy, required labourDepositPaidBy, required labourDepositReceiptNumber, required labourDepositAmount, required passportLocation, required reEntryVisaApplication, required immigrationApprovalDate, required reEntryVisaExpiry, required relation, createdAt, updatedAt}): _empID = empID, _airTicketStatus = airTicketStatus, _dependentName = dependentName, _dependentPassportNumber = dependentPassportNumber, _dependentPassportExpiy = dependentPassportExpiy, _labourDepositPaidBy = labourDepositPaidBy, _labourDepositReceiptNumber = labourDepositReceiptNumber, _labourDepositAmount = labourDepositAmount, _passportLocation = passportLocation, _reEntryVisaApplication = reEntryVisaApplication, _immigrationApprovalDate = immigrationApprovalDate, _reEntryVisaExpiry = reEntryVisaExpiry, _relation = relation, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory LabourDependentPass({String? id, required String empID, required String airTicketStatus, required String dependentName, required String dependentPassportNumber, required String dependentPassportExpiy, required String labourDepositPaidBy, required String labourDepositReceiptNumber, required String labourDepositAmount, required String passportLocation, required String reEntryVisaApplication, required String immigrationApprovalDate, required String reEntryVisaExpiry, required String relation}) {
    return LabourDependentPass._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      airTicketStatus: airTicketStatus,
      dependentName: dependentName,
      dependentPassportNumber: dependentPassportNumber,
      dependentPassportExpiy: dependentPassportExpiy,
      labourDepositPaidBy: labourDepositPaidBy,
      labourDepositReceiptNumber: labourDepositReceiptNumber,
      labourDepositAmount: labourDepositAmount,
      passportLocation: passportLocation,
      reEntryVisaApplication: reEntryVisaApplication,
      immigrationApprovalDate: immigrationApprovalDate,
      reEntryVisaExpiry: reEntryVisaExpiry,
      relation: relation);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LabourDependentPass &&
      id == other.id &&
      _empID == other._empID &&
      _airTicketStatus == other._airTicketStatus &&
      _dependentName == other._dependentName &&
      _dependentPassportNumber == other._dependentPassportNumber &&
      _dependentPassportExpiy == other._dependentPassportExpiy &&
      _labourDepositPaidBy == other._labourDepositPaidBy &&
      _labourDepositReceiptNumber == other._labourDepositReceiptNumber &&
      _labourDepositAmount == other._labourDepositAmount &&
      _passportLocation == other._passportLocation &&
      _reEntryVisaApplication == other._reEntryVisaApplication &&
      _immigrationApprovalDate == other._immigrationApprovalDate &&
      _reEntryVisaExpiry == other._reEntryVisaExpiry &&
      _relation == other._relation;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LabourDependentPass {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("airTicketStatus=" + "$_airTicketStatus" + ", ");
    buffer.write("dependentName=" + "$_dependentName" + ", ");
    buffer.write("dependentPassportNumber=" + "$_dependentPassportNumber" + ", ");
    buffer.write("dependentPassportExpiy=" + "$_dependentPassportExpiy" + ", ");
    buffer.write("labourDepositPaidBy=" + "$_labourDepositPaidBy" + ", ");
    buffer.write("labourDepositReceiptNumber=" + "$_labourDepositReceiptNumber" + ", ");
    buffer.write("labourDepositAmount=" + "$_labourDepositAmount" + ", ");
    buffer.write("passportLocation=" + "$_passportLocation" + ", ");
    buffer.write("reEntryVisaApplication=" + "$_reEntryVisaApplication" + ", ");
    buffer.write("immigrationApprovalDate=" + "$_immigrationApprovalDate" + ", ");
    buffer.write("reEntryVisaExpiry=" + "$_reEntryVisaExpiry" + ", ");
    buffer.write("relation=" + "$_relation" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LabourDependentPass copyWith({String? empID, String? airTicketStatus, String? dependentName, String? dependentPassportNumber, String? dependentPassportExpiy, String? labourDepositPaidBy, String? labourDepositReceiptNumber, String? labourDepositAmount, String? passportLocation, String? reEntryVisaApplication, String? immigrationApprovalDate, String? reEntryVisaExpiry, String? relation}) {
    return LabourDependentPass._internal(
      id: id,
      empID: empID ?? this.empID,
      airTicketStatus: airTicketStatus ?? this.airTicketStatus,
      dependentName: dependentName ?? this.dependentName,
      dependentPassportNumber: dependentPassportNumber ?? this.dependentPassportNumber,
      dependentPassportExpiy: dependentPassportExpiy ?? this.dependentPassportExpiy,
      labourDepositPaidBy: labourDepositPaidBy ?? this.labourDepositPaidBy,
      labourDepositReceiptNumber: labourDepositReceiptNumber ?? this.labourDepositReceiptNumber,
      labourDepositAmount: labourDepositAmount ?? this.labourDepositAmount,
      passportLocation: passportLocation ?? this.passportLocation,
      reEntryVisaApplication: reEntryVisaApplication ?? this.reEntryVisaApplication,
      immigrationApprovalDate: immigrationApprovalDate ?? this.immigrationApprovalDate,
      reEntryVisaExpiry: reEntryVisaExpiry ?? this.reEntryVisaExpiry,
      relation: relation ?? this.relation);
  }
  
  LabourDependentPass copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? airTicketStatus,
    ModelFieldValue<String>? dependentName,
    ModelFieldValue<String>? dependentPassportNumber,
    ModelFieldValue<String>? dependentPassportExpiy,
    ModelFieldValue<String>? labourDepositPaidBy,
    ModelFieldValue<String>? labourDepositReceiptNumber,
    ModelFieldValue<String>? labourDepositAmount,
    ModelFieldValue<String>? passportLocation,
    ModelFieldValue<String>? reEntryVisaApplication,
    ModelFieldValue<String>? immigrationApprovalDate,
    ModelFieldValue<String>? reEntryVisaExpiry,
    ModelFieldValue<String>? relation
  }) {
    return LabourDependentPass._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      airTicketStatus: airTicketStatus == null ? this.airTicketStatus : airTicketStatus.value,
      dependentName: dependentName == null ? this.dependentName : dependentName.value,
      dependentPassportNumber: dependentPassportNumber == null ? this.dependentPassportNumber : dependentPassportNumber.value,
      dependentPassportExpiy: dependentPassportExpiy == null ? this.dependentPassportExpiy : dependentPassportExpiy.value,
      labourDepositPaidBy: labourDepositPaidBy == null ? this.labourDepositPaidBy : labourDepositPaidBy.value,
      labourDepositReceiptNumber: labourDepositReceiptNumber == null ? this.labourDepositReceiptNumber : labourDepositReceiptNumber.value,
      labourDepositAmount: labourDepositAmount == null ? this.labourDepositAmount : labourDepositAmount.value,
      passportLocation: passportLocation == null ? this.passportLocation : passportLocation.value,
      reEntryVisaApplication: reEntryVisaApplication == null ? this.reEntryVisaApplication : reEntryVisaApplication.value,
      immigrationApprovalDate: immigrationApprovalDate == null ? this.immigrationApprovalDate : immigrationApprovalDate.value,
      reEntryVisaExpiry: reEntryVisaExpiry == null ? this.reEntryVisaExpiry : reEntryVisaExpiry.value,
      relation: relation == null ? this.relation : relation.value
    );
  }
  
  LabourDependentPass.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _airTicketStatus = json['airTicketStatus'],
      _dependentName = json['dependentName'],
      _dependentPassportNumber = json['dependentPassportNumber'],
      _dependentPassportExpiy = json['dependentPassportExpiy'],
      _labourDepositPaidBy = json['labourDepositPaidBy'],
      _labourDepositReceiptNumber = json['labourDepositReceiptNumber'],
      _labourDepositAmount = json['labourDepositAmount'],
      _passportLocation = json['passportLocation'],
      _reEntryVisaApplication = json['reEntryVisaApplication'],
      _immigrationApprovalDate = json['immigrationApprovalDate'],
      _reEntryVisaExpiry = json['reEntryVisaExpiry'],
      _relation = json['relation'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'airTicketStatus': _airTicketStatus, 'dependentName': _dependentName, 'dependentPassportNumber': _dependentPassportNumber, 'dependentPassportExpiy': _dependentPassportExpiy, 'labourDepositPaidBy': _labourDepositPaidBy, 'labourDepositReceiptNumber': _labourDepositReceiptNumber, 'labourDepositAmount': _labourDepositAmount, 'passportLocation': _passportLocation, 'reEntryVisaApplication': _reEntryVisaApplication, 'immigrationApprovalDate': _immigrationApprovalDate, 'reEntryVisaExpiry': _reEntryVisaExpiry, 'relation': _relation, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'airTicketStatus': _airTicketStatus,
    'dependentName': _dependentName,
    'dependentPassportNumber': _dependentPassportNumber,
    'dependentPassportExpiy': _dependentPassportExpiy,
    'labourDepositPaidBy': _labourDepositPaidBy,
    'labourDepositReceiptNumber': _labourDepositReceiptNumber,
    'labourDepositAmount': _labourDepositAmount,
    'passportLocation': _passportLocation,
    'reEntryVisaApplication': _reEntryVisaApplication,
    'immigrationApprovalDate': _immigrationApprovalDate,
    'reEntryVisaExpiry': _reEntryVisaExpiry,
    'relation': _relation,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<LabourDependentPassModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<LabourDependentPassModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final AIRTICKETSTATUS = amplify_core.QueryField(fieldName: "airTicketStatus");
  static final DEPENDENTNAME = amplify_core.QueryField(fieldName: "dependentName");
  static final DEPENDENTPASSPORTNUMBER = amplify_core.QueryField(fieldName: "dependentPassportNumber");
  static final DEPENDENTPASSPORTEXPIY = amplify_core.QueryField(fieldName: "dependentPassportExpiy");
  static final LABOURDEPOSITPAIDBY = amplify_core.QueryField(fieldName: "labourDepositPaidBy");
  static final LABOURDEPOSITRECEIPTNUMBER = amplify_core.QueryField(fieldName: "labourDepositReceiptNumber");
  static final LABOURDEPOSITAMOUNT = amplify_core.QueryField(fieldName: "labourDepositAmount");
  static final PASSPORTLOCATION = amplify_core.QueryField(fieldName: "passportLocation");
  static final REENTRYVISAAPPLICATION = amplify_core.QueryField(fieldName: "reEntryVisaApplication");
  static final IMMIGRATIONAPPROVALDATE = amplify_core.QueryField(fieldName: "immigrationApprovalDate");
  static final REENTRYVISAEXPIRY = amplify_core.QueryField(fieldName: "reEntryVisaExpiry");
  static final RELATION = amplify_core.QueryField(fieldName: "relation");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LabourDependentPass";
    modelSchemaDefinition.pluralName = "LabourDependentPasses";
    
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
      key: LabourDependentPass.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.AIRTICKETSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.DEPENDENTNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.DEPENDENTPASSPORTNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.DEPENDENTPASSPORTEXPIY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.LABOURDEPOSITPAIDBY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.LABOURDEPOSITRECEIPTNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.LABOURDEPOSITAMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.PASSPORTLOCATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.REENTRYVISAAPPLICATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.IMMIGRATIONAPPROVALDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.REENTRYVISAEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDependentPass.RELATION,
      isRequired: true,
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

class _LabourDependentPassModelType extends amplify_core.ModelType<LabourDependentPass> {
  const _LabourDependentPassModelType();
  
  @override
  LabourDependentPass fromJson(Map<String, dynamic> jsonData) {
    return LabourDependentPass.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'LabourDependentPass';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [LabourDependentPass] in your schema.
 */
class LabourDependentPassModelIdentifier implements amplify_core.ModelIdentifier<LabourDependentPass> {
  final String id;

  /** Create an instance of LabourDependentPassModelIdentifier using [id] the primary key. */
  const LabourDependentPassModelIdentifier({
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
  String toString() => 'LabourDependentPassModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is LabourDependentPassModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}