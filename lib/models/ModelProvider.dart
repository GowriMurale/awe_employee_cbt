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

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'Blng.dart';
import 'CandIToEMP.dart';
import 'EducationDetails.dart';
import 'EmpPersonalInfo.dart';
import 'EmployeeNonLocalAcco.dart';
import 'EmployeeWorkInfo.dart';
import 'IDDetails.dart';
import 'InterviewScheduleSchema.dart';
import 'LabourDependentPass.dart';
import 'LabourMedicalInfo.dart';
import 'LabourWorkPass.dart';
import 'LeaveStatus.dart';
import 'LeaveWorkInfo.dart';
import 'LocalMobilization.dart';
import 'PersonalDetails.dart';
import 'SampleTest1.dart';
import 'TerminationWorkInfo.dart';
import 'TicketRequest.dart';
import 'User.dart';
import 'WPTracking.dart';

export 'Blng.dart';
export 'CandIToEMP.dart';
export 'EducationDetails.dart';
export 'EmpPersonalInfo.dart';
export 'EmployeeNonLocalAcco.dart';
export 'EmployeeWorkInfo.dart';
export 'IDDetails.dart';
export 'InterviewScheduleSchema.dart';
export 'LabourDependentPass.dart';
export 'LabourMedicalInfo.dart';
export 'LabourWorkPass.dart';
export 'LeaveStatus.dart';
export 'LeaveWorkInfo.dart';
export 'LocalMobilization.dart';
export 'PersonalDetails.dart';
export 'SampleTest1.dart';
export 'TerminationWorkInfo.dart';
export 'TicketRequest.dart';
export 'User.dart';
export 'WPTracking.dart';

class ModelProvider implements amplify_core.ModelProviderInterface {
  @override
  String version = "9d3610ceb5fdafbd8e2ea586a9b2cde1";
  @override
  List<amplify_core.ModelSchema> modelSchemas = [Blng.schema, CandIToEMP.schema, EducationDetails.schema, EmpPersonalInfo.schema, EmployeeNonLocalAcco.schema, EmployeeWorkInfo.schema, IDDetails.schema, InterviewScheduleSchema.schema, LabourDependentPass.schema, LabourMedicalInfo.schema, LabourWorkPass.schema, LeaveStatus.schema, LeaveWorkInfo.schema, LocalMobilization.schema, PersonalDetails.schema, SampleTest1.schema, TerminationWorkInfo.schema, TicketRequest.schema, User.schema, WPTracking.schema];
  @override
  List<amplify_core.ModelSchema> customTypeSchemas = [];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  amplify_core.ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Blng":
        return Blng.classType;
      case "CandIToEMP":
        return CandIToEMP.classType;
      case "EducationDetails":
        return EducationDetails.classType;
      case "EmpPersonalInfo":
        return EmpPersonalInfo.classType;
      case "EmployeeNonLocalAcco":
        return EmployeeNonLocalAcco.classType;
      case "EmployeeWorkInfo":
        return EmployeeWorkInfo.classType;
      case "IDDetails":
        return IDDetails.classType;
      case "InterviewScheduleSchema":
        return InterviewScheduleSchema.classType;
      case "LabourDependentPass":
        return LabourDependentPass.classType;
      case "LabourMedicalInfo":
        return LabourMedicalInfo.classType;
      case "LabourWorkPass":
        return LabourWorkPass.classType;
      case "LeaveStatus":
        return LeaveStatus.classType;
      case "LeaveWorkInfo":
        return LeaveWorkInfo.classType;
      case "LocalMobilization":
        return LocalMobilization.classType;
      case "PersonalDetails":
        return PersonalDetails.classType;
      case "SampleTest1":
        return SampleTest1.classType;
      case "TerminationWorkInfo":
        return TerminationWorkInfo.classType;
      case "TicketRequest":
        return TicketRequest.classType;
      case "User":
        return User.classType;
      case "WPTracking":
        return WPTracking.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}


class ModelFieldValue<T> {
  const ModelFieldValue.value(this.value);

  final T value;
}
