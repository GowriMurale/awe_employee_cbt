import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DateField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final Function(BuildContext context) onTap;
  final Function? onFieldTapped; // New callback to clear error

  const DateField({
    Key? key,
    required this.controller,
    this.errorMessage,
    required this.onTap,
    this.onFieldTapped, // Add the new parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Error message
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4), // Adjust padding below error message
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 12), // Error text styling
            ),
          ),
        Container(
          width: size.width * 0.125, // Adjust width for better layout
          height: size.height * 0.038,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(1),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.text.isEmpty ? 'dd/mm/yyyy' : controller.text, // Display placeholder or entered date
                  style: TextStyle(
                    color: controller.text.isEmpty ? Colors.grey.shade500 : Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onFieldTapped?.call(); // Clear error if user taps the field
                    onTap(context); // Trigger the date picker on tap
                  },
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.grey.shade700,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class RequestDateField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final Function(BuildContext context) onTap;
  final Function? onFieldTapped;
  final double width;// New callback to clear error
  final double height;

  const RequestDateField({
    Key? key,
    required this.controller,
    this.errorMessage,
    required this.onTap,
    this.onFieldTapped, required this.width, required this.height, // Add the new parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Error message
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4), // Adjust padding below error message
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 12), // Error text styling
            ),
          ),
        Container(
          width: width, // Adjust width for better layout
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(1),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.text.isEmpty ? 'dd/mm/yyyy' : controller.text, // Display placeholder or entered date
                  style: TextStyle(
                    color: controller.text.isEmpty ? Colors.grey.shade500 : Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onFieldTapped?.call(); // Clear error if user taps the field
                    onTap(context); // Trigger the date picker on tap
                  },
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.grey.shade700,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PhoneField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final Function(BuildContext context) onTap;
  final Function? onFieldTapped; // New callback to clear error

  const PhoneField({
    Key? key,
    required this.controller,
    this.errorMessage,
    required this.onTap,
    this.onFieldTapped, // Add the new parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Error message
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4), // Adjust padding below error message
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 8), // Error text styling
            ),
          ),
        Container(
          width: size.width * 0.195, // Adjust width for better layout
          height: size.height * 0.033,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(1),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.text.isEmpty ? 'dd/mm/yyyy' : controller.text, // Display placeholder or entered date
                  style: TextStyle(
                    color: controller.text.isEmpty ? Colors.grey.shade500 : Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 10,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onFieldTapped?.call(); // Clear error if user taps the field
                    onTap(context); // Trigger the date picker on tap
                  },
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.grey.shade700,
                      size: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



// Future<void> applyForLeave() async {
//   if (_selectedLeaveType == null || from.text.isEmpty || to.text.isEmpty || days.text.isEmpty || reason.text.isEmpty) {
//     // Handle validation errors
//     return;
//   }
//
//   // Determine the 'applyTo' value based on isManager
//   final applyTo = isManager ? 'Manager' : 'Superior';
//
//   final leaveApplication = LeaveApplication(
//     leaveType: _selectedLeaveType!,
//     fromDate: DateTime.parse(from.text),
//     toDate: DateTime.parse(to.text),
//     numberOfDays: int.parse(days.text),
//     applyTo: applyTo, // Add the applyTo value
//     reason: reason.text,
//   );
//
//   try {
//     // Save the leave application to AWS
//     await saveToAWS(leaveApplication);
//     // Navigate or show success message
//   } catch (e) {
//     // Handle errors
//     print('Error applying for leave: $e');
//   }
// }
//
// Future<void> saveToAWS(LeaveApplication leaveApplication) async {
//   try {
//     // Pass the leaveApplication instance directly
//     // await Amplify.DataStore.save(leaveApplication);
//   } catch (e) {
//     // Handle save error
//     print('Error saving to AWS: $e');
//   }
// }

//
//
// void _tabrequestDialog(BuildContext context) {
//   TextEditingController departure=TextEditingController();
//   TextEditingController arrival=TextEditingController();
//   TextEditingController destination=TextEditingController();
//   TextEditingController remarks=TextEditingController();
//
//   final Size size = MediaQuery.of(context).size;
//   Get.dialog(
//     Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       child: StatefulBuilder(
//         builder: (BuildContext context,StateSetter setDialogState ){
//           return Container(
//             padding: EdgeInsets.all(8),
//             width:  size.width * 0.455,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius:BorderRadius.circular(5),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(width:size.width * 0.155,),
//                     Text(
//                       "Request Ticket",
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily:  'Inter'),
//                     ),
//                     // SizedBox(width: size.width * 0.130,),
//                     // IconButton(onPressed: (){
//                     //   Navigator.pop(context);
//                     // }, icon: Icon(Icons.cancel_outlined,size: 25,color: black,))
//                   ],
//                 ),
//                 Divider(),
//                 SizedBox(height: size.height * 0.012,),
//                 Container(
//                   width: size.width * 0.35,
//                   height: size.height * 0.43,
//                   decoration: BoxDecoration(
//                       color: ticket
//                   ),
//                   child: Column(
//                     children: [
//                       SizedBox(height: size.height * 0.030,),
//                       Row(
//                         children: [
//                           SizedBox(width: size.width * 0.032,),
//                           Text('Departure Date ',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
//                           SizedBox(width: size.width * 0.012,),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               if ( departureError!= null)
//                                 Padding(
//                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                   child: Text(
//                                     departureError!,
//                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                   ),
//                                 ),
//                               Container(
//                                 width: size.width * 0.105,
//                                 height: size.height * 0.0340,
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     border: Border.all(color: Colors.grey.shade400,width: 1)
//                                 ),
//                                 child: Material(
//                                   color: Colors.transparent,
//                                   child: TextField(
//                                     controller: departure,
//                                     style: TextStyle(
//                                       fontSize: 09, // Set a smaller font size for the picked date
//                                       color: Colors.black, // You can also control the color of the text
//                                     ),
//                                     textAlignVertical: TextAlignVertical.center,
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       contentPadding: EdgeInsets.only(left: 5, bottom: 19),
//                                       hintText: 'dd/mm/yy',
//                                       hintStyle: TextStyle(fontSize: 10),
//                                       suffixIcon: IconButton(
//                                         padding: EdgeInsets.only(bottom: 0.5,left: 10),
//                                         onPressed: () => _selectDate(context, departure), // Correct the onPressed
//                                         icon: Icon(
//                                           Icons.calendar_month,
//                                           size: 12,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: size.height * 0.020,),
//                       Row(
//                         children: [
//                           SizedBox(width: size.width * 0.030,),
//                           Text('Arrival  Date ',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
//                           SizedBox(width: size.width * 0.032,),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               if ( arrivalError!= null)
//                                 Padding(
//                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                   child: Text(
//                                     arrivalError!,
//                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                   ),
//                                 ),
//                               Container(
//                                 width: size.width * 0.105,
//                                 height: size.height * 0.030,
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     border: Border.all(color: Colors.grey.shade400,width: 1)
//                                 ),
//                                 child: Material(
//                                   color: Colors.transparent,
//                                   child: TextField(
//                                     controller: arrival,
//                                     style: TextStyle(
//                                       fontSize: 09, // Set a smaller font size for the picked date
//                                       color: Colors.black, // You can also control the color of the text
//                                     ),
//                                     textAlignVertical: TextAlignVertical.center,
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       contentPadding: EdgeInsets.only(left: 5, bottom: 19),
//                                       hintText: 'dd/mm/yy',
//                                       hintStyle: TextStyle(fontSize: 10),
//                                       suffixIcon: IconButton(
//                                         padding: EdgeInsets.only(bottom: 0.5,left: 10),
//                                         onPressed: () => _selectDate(context, arrival), // Correct the onPressed
//                                         icon: Icon(
//                                           Icons.calendar_month,
//                                           size: 12,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: size.height * 0.020,),
//                       Row(
//                         children: [
//                           SizedBox(width: size.width * 0.030,),
//                           Text('Destination',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
//                           SizedBox(width: size.width * 0.040,),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               if ( destinationError!= null)
//                                 Padding(
//                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                   child: Text(
//                                     destinationError!,
//                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                   ),
//                                 ),
//                               requestContainer(context, destination, size.width * 0.105, size.height * 0.032,setDialogState),
//                             ],
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: size.height * 0.020,),
//                       Row(
//                         children: [
//                           SizedBox(width: size.width * 0.030,),
//                           Text('Remarks',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
//                           SizedBox(width: size.width * 0.055,),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               if ( remarksError!= null)
//                                 Padding(
//                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                   child: Text(
//                                     remarksError!,
//                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                   ),
//                                 ),
//                               Container(
//                                 width: size.width * 0.170,
//                                 height:size.height * 0.075,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   border: Border.all(color: Colors.grey.shade400,width: 1),
//                                 ),
//                                 child: TextField(
//                                   controller: remarks,
//                                   // contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007),
//                                   decoration: InputDecoration(
//                                     hintText: 'Text Here',
//                                     hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400),
//                                     contentPadding: EdgeInsets.all(5),
//                                     isDense: true, // Make the field more compact
//                                     border: InputBorder.none,
//                                   ),
//                                   textAlignVertical: TextAlignVertical.center,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: size.height * 0.035,),
//                       Row(
//                         children: [
//                           SizedBox(width: size.width * 0.125,),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(color: grey), // Outline border color
//                               borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
//                             ),
//                             child: MaterialButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               minWidth: size.width * 0.052, // Adjust width as needed
//                               height: size.height * 0.043, // Adjust height as needed
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(0), // Keep border radius consistent
//                               ),
//                               child: Text(
//                                 'Cancel',
//                                 style: TextStyle(
//                                   fontFamily: 'Inter',
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.bold,
//                                   color: black,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: size.width * 0.020,),
//                           MaterialButton(
//                             minWidth: size.width * 0.068,
//                             height: size.height * 0.048,
//                             onPressed: () async {
//                               // Validate all fields before applying
//                               if (_validateField(setDialogState)) {
//                                 // Show confirmation popup with Yes and No buttons
//                                 Get.defaultDialog(
//                                   title: 'Confirm',
//                                   content: Text('Are you sure you want to apply?'),
//                                   actions: [
//                                     TextButton(
//                                       onPressed: () {
//                                         Get.back(); // Close the dialog
//                                       },
//                                       child: Text('No', style: TextStyle(color: Colors.red)),
//                                     ),
//                                     TextButton(
//                                       onPressed: ()  {
//                                         Get.back(); // Close the dialog first
//
//                                         // Proceed with creating the leave request
//                                         // This will show success/error dialogs based on the result
//                                       },
//                                       child: Text('Yes', style: TextStyle(color: Colors.green)),
//                                     ),
//                                   ],
//                                 );
//                               } else {
//                                 // Show error alert dialog if fields are missing
//                                 Get.defaultDialog(
//                                   title: 'Error',
//                                   content: Text('Please fill all required fields.'),
//                                   confirmTextColor: Colors.white,
//                                   onConfirm: () {
//                                     Get.back(); // Close the dialog
//                                   },
//                                 );
//                               }
//                             },
//                             child: Text('Apply',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Inter',),),
//                             color: Colors.yellow,
//                             textColor: Colors.black,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//
//                 SizedBox(height:size.height * 0.040,),
//
//               ],
//             ),
//           );
//         },
//       ),
//     ),
//     barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
//   );
// }
//
// void _phonerequestDialog(BuildContext context) {
//   TextEditingController departure=TextEditingController();
//   TextEditingController arrival=TextEditingController();
//   TextEditingController destination=TextEditingController();
//   TextEditingController remarks=TextEditingController();
//
//   final Size size = MediaQuery.of(context).size;
//   Get.dialog(
//     Dialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//         child: StatefulBuilder(
//           builder: (BuildContext context,StateSetter setDialogState ){
//             return Container(
//               padding: EdgeInsets.all(8),
//               width:  size.width * 0.545,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius:BorderRadius.circular(5),
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(width:size.width * 0.155,),
//                       Text(
//                         "Request Ticket",
//                         style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,fontFamily:  'Inter'),
//                       ),
//                       // SizedBox(width: size.width * 0.130,),
//                       // IconButton(onPressed: (){
//                       //   Navigator.pop(context);
//                       // }, icon: Icon(Icons.cancel_outlined,size: 25,color: black,))
//                     ],
//                   ),
//                   Divider(),
//                   SizedBox(height: size.height * 0.012,),
//                   Container(
//                     width: size.width * 0.48,
//                     height: size.height * 0.40,
//                     decoration: BoxDecoration(
//                         color: ticket
//                     ),
//                     child: Column(
//                       children: [
//                         SizedBox(height: size.height * 0.030,),
//                         Row(
//                           children: [
//                             SizedBox(width: size.width * 0.032,),
//                             Text('Departure Date ',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
//                             SizedBox(width: size.width * 0.012,),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 if ( departureError!= null)
//                                   Padding(
//                                     padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                     child: Text(
//                                       departureError!,
//                                       style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                     ),
//                                   ),
//                                 Container(
//                                   width: size.width * 0.172,
//                                   height: size.height * 0.032,
//                                   decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       border: Border.all(color: Colors.grey.shade400,width: 1)
//                                   ),
//                                   child: Material(
//                                     color: Colors.transparent,
//                                     child: TextField(
//                                       controller: arrival,
//                                       style: TextStyle(
//                                         fontSize: 7, // Set a smaller font size for the picked date
//                                         color: Colors.black, // You can also control the color of the text
//                                       ),
//                                       textAlignVertical: TextAlignVertical.center,
//                                       decoration: InputDecoration(
//                                         border: InputBorder.none,
//                                         contentPadding: EdgeInsets.only(left: 2, bottom: 20),
//                                         hintText: 'dd/mm/yy',
//                                         hintStyle: TextStyle(fontSize: 7),
//                                         suffixIcon: IconButton(
//                                           padding: EdgeInsets.only(bottom: 0.5,left: 14),
//                                           onPressed: () => _selectDate(context, arrival), // Correct the onPressed
//                                           icon: Icon(
//                                             Icons.calendar_month,
//                                             size: 10,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: size.height * 0.020,),
//                         Row(
//                           children: [
//                             SizedBox(width: size.width * 0.030,),
//                             Text('Arrival  Date ',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
//                             SizedBox(width: size.width * 0.042,),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 if ( arrivalError!= null)
//                                   Padding(
//                                     padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                     child: Text(
//                                       arrivalError!,
//                                       style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                     ),
//                                   ),
//                                 Container(
//                                   width: size.width * 0.172,
//                                   height: size.height * 0.032,
//                                   decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       border: Border.all(color: Colors.grey.shade400,width: 1)
//                                   ),
//                                   child: Material(
//                                     color: Colors.transparent,
//                                     child: TextField(
//                                       controller: departure,
//                                       style: TextStyle(
//                                         fontSize: 7, // Set a smaller font size for the picked date
//                                         color: Colors.black, // You can also control the color of the text
//                                       ),
//                                       textAlignVertical: TextAlignVertical.center,
//                                       decoration: InputDecoration(
//                                         border: InputBorder.none,
//                                         contentPadding: EdgeInsets.only(left: 2, bottom: 20),
//                                         hintText: 'dd/mm/yy',
//                                         hintStyle: TextStyle(fontSize: 7),
//                                         suffixIcon: IconButton(
//                                           padding: EdgeInsets.only(bottom: 0.5,left: 14),
//                                           onPressed: () => _selectDate(context, departure), // Correct the onPressed
//                                           icon: Icon(
//                                             Icons.calendar_month,
//                                             size: 10,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: size.height * 0.020,),
//                         Row(
//                           children: [
//                             SizedBox(width: size.width * 0.030,),
//                             Text('Destination',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
//                             SizedBox(width: size.width * 0.056,),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 if ( destinationError!= null)
//                                   Padding(
//                                     padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                     child: Text(
//                                       destinationError!,
//                                       style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                     ),
//                                   ),
//                                 requestContainer(context, destination, size.width * 0.170, size.height * 0.028,setDialogState),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: size.height * 0.020,),
//                         Row(
//                           children: [
//                             SizedBox(width: size.width * 0.030,),
//                             Text('Remarks',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
//                             SizedBox(width: size.width * 0.080,),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 if ( remarksError!= null)
//                                   Padding(
//                                     padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
//                                     child: Text(
//                                       remarksError!,
//                                       style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
//                                     ),
//                                   ),
//                                 Container(
//                                   width: size.width * 0.200,
//                                   height:size.height * 0.055,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     border: Border.all(color: Colors.grey.shade400,width: 1),
//                                   ),
//                                   child: TextField(
//                                     controller: remarks,
//                                     // contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007),
//                                     decoration: InputDecoration(
//                                       hintText: 'Text Here',
//                                       hintStyle: TextStyle(fontSize: 8,color: Colors.grey.shade400),
//                                       contentPadding: EdgeInsets.all(2),
//                                       isDense: true, // Make the field more compact
//                                       border: InputBorder.none,
//                                     ),
//                                     textAlignVertical: TextAlignVertical.center,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: size.height * 0.035,),
//                         Row(
//                           children: [
//                             SizedBox(width: size.width * 0.135,),
//                             Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: grey), // Outline border color
//                                 borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                                 minWidth: size.width * 0.050, // Adjust width as needed
//                                 height: size.height * 0.040, // Adjust height as needed
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(0), // Keep border radius consistent
//                                 ),
//                                 child: Text(
//                                   'Cancel',
//                                   style: TextStyle(
//                                     fontFamily: 'Inter',
//                                     fontSize: 11,
//                                     fontWeight: FontWeight.bold,
//                                     color: black,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: size.width * 0.030,),
//                             MaterialButton(
//                               minWidth: size.width * 0.125,
//                               height: size.height * 0.048,
//                               onPressed: () async {
//                                 // Validate all fields before applying
//                                 if (_validateField(setDialogState)) {
//                                   // Show confirmation popup with Yes and No buttons
//                                   Get.defaultDialog(
//                                     title: 'Confirm',
//                                     content: Text('Are you sure you want to apply?'),
//                                     actions: [
//                                       TextButton(
//                                         onPressed: () {
//                                           Get.back(); // Close the dialog
//                                         },
//                                         child: Text('No', style: TextStyle(color: Colors.red)),
//                                       ),
//                                       TextButton(
//                                         onPressed: ()  {
//                                           Get.back(); // Close the dialog first
//
//                                           // Proceed with creating the leave request
//                                           // This will show success/error dialogs based on the result
//                                         },
//                                         child: Text('Yes', style: TextStyle(color: Colors.green)),
//                                       ),
//                                     ],
//                                   );
//                                 } else {
//                                   // Show error alert dialog if fields are missing
//                                   Get.defaultDialog(
//                                     title: 'Error',
//                                     content: Text('Please fill all required fields.'),
//                                     confirmTextColor: Colors.white,
//                                     onConfirm: () {
//                                       Get.back(); // Close the dialog
//                                     },
//                                   );
//                                 }
//                               },
//                               child: Text('Apply',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'Inter',),),
//                               color: Colors.yellow,
//                               textColor: Colors.black,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//
//                   SizedBox(height:size.height * 0.010,),
//
//                 ],
//               ),
//             );
//           },
//         )
//     ),
//     barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
//   );
// }