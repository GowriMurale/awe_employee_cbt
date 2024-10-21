import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/Screens/change_password_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import '../models/LeaveStatus.dart';
import '../models/TicketRequest.dart';
import 'apply_leave_screen.dart';
import 'login_screen.dart';
class DashBoardScreeen extends StatefulWidget {
  @override
  State<DashBoardScreeen> createState() => _DashBoardScreeenState();
}

class _DashBoardScreeenState extends State<DashBoardScreeen> {

  //NAV BAR METHODS
  DateTime now = DateTime.now(); // Get the current date and time
  String formattedDate = DateFormat(' dd/MM/yyyy    HH:mm:ss').format(DateTime.now());

  // late  int notificationCount;
  final TextEditingController userIdController = TextEditingController();
  final box = GetStorage();

  String employeeName = 'Nur Hafiza';
  String employeeEmail = 'adinin@gmail.com';
  String dateOfJoin = 'Date of Join not found';
  String department = 'Department not found';
  String workPosition = 'Work Position not found';

  String? fileName; // Variable to hold the file name

  void _pickFile() async {
    print('File picker started...');
    try {
      // Specify allowed file types (images and PDFs)
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
      );

      if (result != null) {
        PlatformFile file = result.files.first;

        setState(() {
          fileName = file.name; // Update the file name state
        });

        print('File name: ${file.name}');
        print('File size: ${file.size}');
        print('File extension: ${file.extension}');
        print('File path: ${file.path}');
      } else {
        print('No file selected');
      }
    } catch (e) {
      print('Error occurred while picking file: $e');
    }
  }


  Future<void> _confirmSignOut(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Log Out'),
        content: Text('Are you sure you want to Log out?'),
        actions: <Widget>[
          TextButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(ctx).pop(); // Just close the dialog
            },
          ),
          TextButton(
            child: Text('Yes'),
            onPressed: () async {
              Navigator.of(ctx).pop(); // Close the dialog before signing out
              await _signOut(context); // Call the sign out method
            },
          ),
        ],
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await Amplify.Auth.signOut();
      Get.offAll(() => LoginScreen()); // Redirect to login screen
    } on AuthException catch (e) {
      _showErrorDialog(context, e.message);
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    showMenu(
      color: Colors.white,
      context: context,
      position: RelativeRect.fromLTRB(100, 70, 5, 300), // Position of the menu
      items: [
        PopupMenuItem<int>(
          value: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height:size.height * 0.010,),
              Container(
                height:size.height * 0.070,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user image.png'),
                  radius: 25,
                  child: Container(
                    width:size.width * 0.110, // Width of the button
                    height:size.height *  0.050, // Height of the button
                    padding: EdgeInsets.symmetric(vertical:size.height * 0.010,horizontal:size.width * 0.008) ,
                    child: IconButton(
                        color: Colors.black,
                        iconSize: 15,
                        padding: EdgeInsets.all(20),
                        onPressed: () {
                            _pickFile();
                        }, icon: Icon(Icons.photo_camera_outlined,)
                    ),
                  ),
                ),
              ),
              SizedBox(height:size.height * 0.005,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height:size.height * 0.030,
                        padding: EdgeInsets.only(left: 12),
                        child:Text('Personal Info',
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              fontStyle: FontStyle.normal),)
                    ),
                    SizedBox(width:size.width * 0.060,),
                    GestureDetector(
                      onTap: (){
                        _showEditDialog(context);
                      },
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Edit',
                                style: TextStyle(fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                // Use GestureRecognizer to detect taps
                              ),
                            ]),),
                    )]),
              SizedBox(height:size.height * 0.007,),
              Divider(
                thickness: 1.5,
                color: Colors.black45,
              ),
              SizedBox(height:size.height * 0.003,),
              Container(
                height:size.height * 0.040,
                width:size.width * 0.270,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1, // Border width
                  ),
                  borderRadius: BorderRadius.circular(5), // Optional: rounded corners
                ),

                child: Row(
                    children: [
                      SizedBox(width:size.width * 0.015,),
                      Text(employeeName,
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),),]),
              ),
              SizedBox(height:size.height * 0.010,),
              Container(
                height:size.height * 0.040,
                width:size.width * 0.270,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1, // Border width
                  ),
                  borderRadius: BorderRadius.circular(5), // Optional: rounded corners
                ),
                child: Row(children: [
                  SizedBox(width:size.width * 0.015,),
                  Text(
                    '8056863355',
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),),
                ]),),
              SizedBox(height:size.height * 0.010,),
              Container(
                height:size.height * 0.040,
                width:size.width * 0.270,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1, // Border width
                  ),
                  borderRadius: BorderRadius.circular(5), // Optional: rounded corners
                ),
                child:Row(children: [
                  SizedBox(width:size.width * 0.015,),
                  Text(
                    employeeEmail,
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),
                  ),
                ]),),

              SizedBox(height:size.height * 0.010),
              Row(
                  children: [
                    Container(
                      height:size.height * 0.040,
                      width:size.width * 0.085,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(() => changePasswordScreen(username: userIdController.text.trim()));
                        },
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(color: Colors.yellow, width: 3), // Change border color and width
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // Rounded corners
                            ),
                          ),
                        ),
                        child: Text('Change Password',style: TextStyle(
                            fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                      ),
                    ),
                    SizedBox(width:size.width * 0.010,),
                    Container(
                      height:size.height * 0.038,
                      width:size.height * 0.150,
                      child: TextButton(
                        onPressed: () {
                          _confirmSignOut(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(5), // Rounded corners
                          ),
                        ),
                        child: Row(
                            children: [
                              SizedBox(width:size.width * 0.015,) ,
                              Text('Logout',style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black)),
                              SizedBox(width:size.width * 0.005,) ,
                              Icon(Icons.logout_outlined,size: 15,color: black,),
                            ]),
                      ),),
                    SizedBox(height: 50)
                  ]),
            ],
          ),
        ),
      ],
    );
  }

  void _showEditDialog(BuildContext context) {
    TextEditingController fullName=TextEditingController();
    TextEditingController email=TextEditingController();
    TextEditingController mobile=TextEditingController();

    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          padding: EdgeInsets.all(8),
          width:  size.width * 0.410,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width * 0.025,),
                  Text(
                    "Personal Information",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: size.width * 0.230,),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.cancel_outlined,size: 25,color: black,))
                ],
              ),
              Divider(),
              SizedBox(height: size.height * 0.012,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.08,),
                  Text('Full Name', style: TextStyle(fontSize: 14)),
                  SizedBox(width: size.width * 0.093,),
                  // Text('Last Name', style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: size.height * 0.007,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width* 0.080,),
                  newContainer(context, fullName,employeeName,16),
                  // myContainer(context, lastName),
                ],
              ),
              SizedBox(height:size.height * 0.020,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  Text('Mobile Number', style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: size.height *0.007,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  newContainer(context, mobile,'8056863355',16)
                ],
              ),
              SizedBox(height:size.height * 0.020,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  Text('Email Address', style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: size.height *0.007,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  newContainer(context, email,employeeEmail,16)
                ],
              ),
              SizedBox(height:size.height * 0.040,),
              MaterialButton(
                minWidth: size.width * .06,
                height: size.height * 0.03,
                onPressed: () {
                  Get.back(); // Close the dialog
                },
                child: Text('Save',style: TextStyle(fontSize: 16,fontFamily: 'Inter',),),
                color: Colors.yellow,
                textColor: Colors.black,
              )
            ],
          ),
        ),
      ),
      barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
    );
  }



  TextEditingController departure=TextEditingController();
  TextEditingController arrival=TextEditingController();
  TextEditingController destination=TextEditingController();
  TextEditingController remarks=TextEditingController();

  DateTime? _fromDate;
  DateTime? _toDate;

  Future<void> _selectedDate(BuildContext context, TextEditingController controller, bool isFromDate) async {
    // Set the initial date based on whether it's the "From Date" or "To Date"
    DateTime initialDate = DateTime.now(); // Default to current date for initial selection

    if (!isFromDate && _fromDate == null) {
      // If trying to select "To Date" without having set "From Date" first
      _showErrorDialog(context, "Please select the From Date first.");
      return; // Exit early as "To Date" should not be selected before "From Date"
    }

    if (!isFromDate) {
      // If selecting "To Date", ensure it starts from "From Date"
      initialDate = _fromDate!; // Default initial date is the selected "From Date"
    }

    // Set the first date for the date picker based on whether it's "From Date" or "To Date"
    DateTime firstDate = isFromDate ? DateTime.now() : _fromDate!; // Allow "To Date" from the selected "From Date" onwards

    // Show the date picker
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate, // Disable all dates before the selected "From Date"
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      setState(() {
        String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
        controller.text = formattedDate;

        if (isFromDate) {
          _fromDate = pickedDate; // Update the "From Date"
        } else {
          // Validate if "To Date" is selected before "From Date"
          if (pickedDate.isBefore(_fromDate!)) {
            _showErrorDialog(context, "To Date must be on or after From Date.");
            return; // Exit early if the date is invalid
          }
          _toDate = pickedDate; // Update the "To Date"
        }

        // Optionally calculate days between dates if both are selected

      });
    }
  }


  Widget requestContainer(BuildContext context, TextEditingController controller, double width, double height, StateSetter setDialogState) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400, width: 1),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 13),
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 10, color: Colors.grey.shade400),
          contentPadding: EdgeInsets.all(5),
          isDense: true, // Make the field more compact
          border: InputBorder.none,
        ),
        textAlignVertical: TextAlignVertical.center,


      ),
    );
  }

  List<TicketRequest> ticketRequests = [];
  List<TicketRequest?> filteredTicketRequests = [];
  bool isLoading = true;

  Future<void> applyTicketRequest(String departureText, String arrivalText, String destinationText, String remarksText) async {
    // Get current user's ID
    final box = GetStorage();
    String empId = box.read('userId') ?? ''; // Use the value from the userIdController
    print(empId);

    // Validate input fields
    if (departureText.isEmpty || arrivalText.isEmpty || destinationText.isEmpty || remarksText.isEmpty) {
      // Show validation error dialog
      Get.defaultDialog(
        title: 'Error',
        content: Text('Please fill all required fields.'),
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back(); // Close the dialog
        },
      );
      return;
    }

    DateTime? fromDate;
    DateTime? toDate;
    try {
      fromDate = DateFormat('dd/MM/yyyy').parse(departureText);
      toDate = DateFormat('dd/MM/yyyy').parse(arrivalText); // Ensure this matches your input field
    } catch (e) {
      Get.defaultDialog(
        title: 'Error',
        content: Text('Invalid date format. Please use dd/MM/yyyy.'),
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back();
        },
      );
      return;
    }

    if (fromDate == null || toDate == null || fromDate.isAfter(toDate)) {
      Get.defaultDialog(
        title: 'Error',
        content: Text('Invalid date selection. Please check the from and to dates.'),
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back(); // Close the dialog
        },
      );
      return;
    }


    // Submit the ticket request
    final ticketRequest = TicketRequest(
      empID: empId, // Use current user's ID
      departureDate: TemporalDate(fromDate),
      arrivalDate: TemporalDate(toDate),
      destination: destinationText,
      remarks: remarksText,
      hrStatus: null,
    );

    final request = ModelMutations.create(ticketRequest);
    final response = await Amplify.API.mutate(request: request).response;
    print(response);

    // Close loading dialog
    Get.back(); // Close loading dialog

    if (response.errors.isNotEmpty || response.data == null) {
      // Show error dialog if mutation failed
      Get.defaultDialog(
        title: 'Error',
        content: Text('Failed to submit the ticket request. Please try again.'),
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back();
        },
      );
    } else {
      // Success feedback
      Get.defaultDialog(
        title: 'Success',
        content: Text('Ticket request submitted successfully.'),
        confirmTextColor: Colors.white,
        onConfirm: () {
          // Clear the fields or take other actions as needed
          // For example, you might want to reset the input fields here.
          Get.back(); // Close the dialog
        },
      );
    }
  }

  Future<void> fetchTicketRequests() async {
    try {
      // Get the current user's ticket requests
      final box = GetStorage();
      String empId = box.read('userId') ?? '';
      print(empId);

      final request = ModelQueries.list(
        TicketRequest.classType,
        where: TicketRequest.EMPID.eq(empId), // Fetch tickets for the current user
      );

      final response = await Amplify.API.query(request: request).response;
       print(response);

      // Check for errors in the response
      if (response.errors.isNotEmpty || response.data == null) {
        Get.defaultDialog(
          title: 'Error',
          content: Text('Failed to fetch the ticket requests. Please try again.'),
          confirmTextColor: Colors.white,
          onConfirm: () => Get.back(),
        );
        return;
      }

      // If successful, process the data
      setState(() {
        ticketRequests = response.data!.items.where((ticket) => ticket != null).cast<TicketRequest>().toList();
        filteredTicketRequests = List.from(ticketRequests); // Initially show all ticket requests
        isLoading = false;
      });

      if (ticketRequests.isEmpty) {
        Get.defaultDialog(
          title: 'No Requests',
          content: Text('No ticket requests found.'),
          confirmTextColor: Colors.white,
          onConfirm: () => Get.back(),
        );
      }
    } catch (e) {
      // Handle general errors
      setState(() {
        isLoading = false;
      });
      Get.defaultDialog(
        title: 'Error',
        content: Text('An error occurred. Please try again.'),
        confirmTextColor: Colors.white,
        onConfirm: () => Get.back(),
      );
    }
  }




  void _requestDialog(BuildContext context) {
    // Define TextEditingControllers for each field
    TextEditingController departure = TextEditingController();
    TextEditingController arrival = TextEditingController();
    TextEditingController destination = TextEditingController();
    TextEditingController remarks = TextEditingController();

    // Define variables to hold error messages for each field
    String? departureError;
    String? arrivalError;
    String? destinationError;
    String? remarksError;

    final Size size = MediaQuery.of(context).size;

    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setDialogState) {
            // Function to validate all fields
            void validateFields() {
              setDialogState(() {
                departureError = departure.text.isEmpty ? 'This field is required' : null;
                arrivalError = arrival.text.isEmpty ? 'This field is required' : null;
                destinationError = destination.text.isEmpty ? 'This field is required' : null;
                remarksError = remarks.text.isEmpty ? 'This field is required' : null;
              });
            }

            // Function to clear error when user starts typing
            void clearErrorOnChange(TextEditingController controller, String? errorField, String fieldName) {
              controller.addListener(() {
                setDialogState(() {
                  if (controller.text.isNotEmpty) {
                    switch (fieldName) {
                      case 'departure':
                        departureError = null;
                        break;
                      case 'arrival':
                        arrivalError = null;
                        break;
                      case 'destination':
                        destinationError = null;
                        break;
                      case 'remarks':
                        remarksError = null;
                        break;
                    }
                  }
                });
              });
            }

            // Attach listeners to each field to dynamically clear the error
            clearErrorOnChange(departure, departureError, 'departure');
            clearErrorOnChange(arrival, arrivalError, 'arrival');
            clearErrorOnChange(destination, destinationError, 'destination');
            clearErrorOnChange(remarks, remarksError, 'remarks');

            return Container(
              padding: EdgeInsets.all(8),
              width: size.width * 0.425,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width * 0.165),
                      Text(
                        "Request Ticket",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: size.height * 0.012),
                 Container(
                   width: size.width * 0.35,
                   height: size.height * 0.45,
                   decoration: BoxDecoration(
                       color: ticket
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: size.height * 0.030),
                       Row(
                         children: [
                           SizedBox(width: size.width * 0.042,),
                           Text('Departure Date ',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                           SizedBox(width: size.width * 0.016,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               if ( departureError!= null)
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                   child: Text(
                                     departureError!,
                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                   ),
                                 ),
                               Container(
                                 width: size.width * 0.097,
                                 height: size.height * 0.036,
                                 decoration: BoxDecoration(
                                     color: Colors.white,
                                     border: Border.all(color: Colors.grey.shade400,width: 1)
                                 ),
                                 child: Material(
                                   color: Colors.transparent,
                                   child: TextField(
                                     controller: departure,
                                     style: TextStyle(
                                       fontSize: 11, // Set a smaller font size for the picked date
                                       color: Colors.black, // You can also control the color of the text
                                     ),
                                     textAlignVertical: TextAlignVertical.center,
                                     decoration: InputDecoration(
                                       border: InputBorder.none,
                                       contentPadding: EdgeInsets.only(left: 5, bottom: 19),
                                       hintText: 'dd/mm/yy',
                                       hintStyle: TextStyle(fontSize: 11),
                                       suffixIcon: IconButton(
                                         padding: EdgeInsets.only(bottom: 0.5,left: 10),
                                         onPressed: () => _selectedDate(context, departure,true), // Correct the onPressed
                                         icon: Icon(
                                           Icons.calendar_month,
                                           size: 12,
                                           color: Colors.black,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                       SizedBox(height: size.height * 0.020),

                       // Arrival Date Field with Error
                       Row(
                         children: [
                           SizedBox(width: size.width * 0.042,),
                           Text('Arrival  Date ',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                           SizedBox(width: size.width * 0.028,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               if ( arrivalError!= null)
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                   child: Text(
                                     arrivalError!,
                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                   ),
                                 ),
                               Container(
                                 width: size.width * 0.097,
                                 height: size.height * 0.036,
                                 decoration: BoxDecoration(
                                     color: Colors.white,
                                     border: Border.all(color: Colors.grey.shade400,width: 1)
                                 ),
                                 child: Material(
                                   color: Colors.transparent,
                                   child: TextField(
                                     controller: arrival,
                                     style: TextStyle(
                                       fontSize: 11, // Set a smaller font size for the picked date
                                       color: Colors.black, // You can also control the color of the text
                                     ),
                                     textAlignVertical: TextAlignVertical.center,
                                     decoration: InputDecoration(
                                       border: InputBorder.none,
                                       contentPadding: EdgeInsets.only(left: 5, bottom: 19),
                                       hintText: 'dd/mm/yy',
                                       hintStyle: TextStyle(fontSize: 11),
                                       suffixIcon: IconButton(
                                         padding: EdgeInsets.only(bottom: 0.5,left: 10),
                                         onPressed: () => _selectedDate(context, arrival,false), // Correct the onPressed
                                         icon: Icon(
                                           Icons.calendar_month,
                                           size: 12,
                                           color: Colors.black,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                       SizedBox(height: size.height * 0.020),

                       // Destination Field with Error
                       Row(
                         children: [
                           SizedBox(width: size.width * 0.042,),
                           Text('Destination',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                           SizedBox(width: size.width * 0.034,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               if ( destinationError!= null)
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                   child: Text(
                                     destinationError!,
                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                   ),
                                 ),
                               requestContainer(context, destination, size.width * 0.097, size.height * 0.036,setDialogState),
                             ],
                           ),
                         ],
                       ),
                       SizedBox(height: size.height * 0.020),

                       // Remarks Field with Error
                       Row(
                         children: [
                           SizedBox(width: size.width * 0.042,),
                           Text('Remarks',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                           SizedBox(width: size.width * 0.045,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               if ( remarksError!= null)
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                   child: Text(
                                     remarksError!,
                                     style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                   ),
                                 ),
                               Container(
                                 width: size.width * 0.170,
                                 height:size.height * 0.075,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   border: Border.all(color: Colors.grey.shade400,width: 1),
                                 ),
                                 child: TextField(
                                   controller: remarks,
                                   style: TextStyle(fontSize: 13),
                                   // contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007),
                                   decoration: InputDecoration(
                                     hintText: 'Text Here',
                                     hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400),
                                     contentPadding: EdgeInsets.all(5),
                                     isDense: true, // Make the field more compact
                                     border: InputBorder.none,
                                   ),
                                   textAlignVertical: TextAlignVertical.center,
                                 ),
                               ),
                             ],
                           ),
                         ],

                       ),
                       SizedBox(height: size.height * 0.035),

                       // Apply and Cancel Buttons
                       Row(
                         children: [
                           SizedBox(width: size.width * 0.125),
                           Container(
                             decoration: BoxDecoration(
                               border: Border.all(color: grey), // Outline border color
                               borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                             ),
                             child: MaterialButton(
                               onPressed: () {
                                 Navigator.pop(context);
                               },
                               minWidth: size.width * 0.052, // Adjust width as needed
                               height: size.height * 0.043, // Adjust height as needed
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(0), // Keep border radius consistent
                               ),
                               child: Text(
                                 'Cancel',
                                 style: TextStyle(
                                   fontFamily: 'Inter',
                                   fontSize: 14,
                                   fontWeight: FontWeight.bold,
                                   color: black,
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: size.width * 0.025),
                           MaterialButton(
                             minWidth: size.width * 0.060, // Adjust width as needed
                             height: size.height * 0.046,
                             onPressed: () {
                               validateFields(); // Validate fields before submitting
                               if (departureError == null &&
                                   arrivalError == null &&
                                   destinationError == null &&
                                   remarksError == null) {
                                 // Show confirmation dialog before applying
                                 showDialog(
                                   context: context,
                                   builder: (BuildContext context) {
                                     return AlertDialog(
                                       title: Text('Confirm Submission'),
                                       content: Text('Are you sure you want to apply?'),
                                       actions: [
                                         TextButton(
                                           onPressed: () {
                                             Navigator.of(context).pop(); // Dismiss the dialog
                                           },
                                           child: Text('No', style: TextStyle(color: Colors.red)),
                                         ),
                                         TextButton(
                                           onPressed: () async {

                                            await applyTicketRequest(departure.text, arrival.text, destination.text, remarks.text);

                                             // Call your apply function here with the provided input
                                           },
                                           child: Text('Yes', style: TextStyle(color: Colors.green)),
                                         ),
                                       ],
                                     );
                                   },
                                 );
                               }
                             },
                             child: Text('Apply', style: TextStyle(fontSize: 14, color:black,fontWeight: FontWeight.bold, fontFamily: 'Inter')),
                             color: Colors.yellow,
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                  SizedBox(height: size.height * 0.025),
                ],
              ),
            );
          },
        ),
      ),
    );
  }




  void _tabrequestDialog(BuildContext context) {
    TextEditingController departure=TextEditingController();
    TextEditingController arrival=TextEditingController();
    TextEditingController destination=TextEditingController();
    TextEditingController remarks=TextEditingController();

    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: StatefulBuilder(
          builder: (BuildContext context,StateSetter setDialogState ){
            return Container(
              padding: EdgeInsets.all(8),
              width:  size.width * 0.455,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width * 0.155,),
                      Text(
                        "Request Ticket",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily:  'Inter'),
                      ),
                      // SizedBox(width: size.width * 0.130,),
                      // IconButton(onPressed: (){
                      //   Navigator.pop(context);
                      // }, icon: Icon(Icons.cancel_outlined,size: 25,color: black,))
                    ],
                  ),
                  Divider(),
                  SizedBox(height: size.height * 0.012,),
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.43,
                    decoration: BoxDecoration(
                        color: ticket
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.030,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.032,),
                            Text('Departure Date ',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                            SizedBox(width: size.width * 0.012,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if ( departureError!= null)
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                    child: Text(
                                      departureError!,
                                      style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                    ),
                                  ),
                                Container(
                                  width: size.width * 0.105,
                                  height: size.height * 0.0340,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey.shade400,width: 1)
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: TextField(
                                      controller: departure,
                                      style: TextStyle(
                                        fontSize: 09, // Set a smaller font size for the picked date
                                        color: Colors.black, // You can also control the color of the text
                                      ),
                                      textAlignVertical: TextAlignVertical.center,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 5, bottom: 19),
                                        hintText: 'dd/mm/yy',
                                        hintStyle: TextStyle(fontSize: 10),
                                        suffixIcon: IconButton(
                                          padding: EdgeInsets.only(bottom: 0.5,left: 10),
                                          onPressed: () => _selectDate(context, departure), // Correct the onPressed
                                          icon: Icon(
                                            Icons.calendar_month,
                                            size: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.020,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.030,),
                            Text('Arrival  Date ',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                            SizedBox(width: size.width * 0.032,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if ( arrivalError!= null)
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                    child: Text(
                                      arrivalError!,
                                      style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                    ),
                                  ),
                                Container(
                                  width: size.width * 0.105,
                                  height: size.height * 0.030,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey.shade400,width: 1)
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: TextField(
                                      controller: arrival,
                                      style: TextStyle(
                                        fontSize: 09, // Set a smaller font size for the picked date
                                        color: Colors.black, // You can also control the color of the text
                                      ),
                                      textAlignVertical: TextAlignVertical.center,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 5, bottom: 19),
                                        hintText: 'dd/mm/yy',
                                        hintStyle: TextStyle(fontSize: 10),
                                        suffixIcon: IconButton(
                                          padding: EdgeInsets.only(bottom: 0.5,left: 10),
                                          onPressed: () => _selectDate(context, arrival), // Correct the onPressed
                                          icon: Icon(
                                            Icons.calendar_month,
                                            size: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.020,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.030,),
                            Text('Destination',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                            SizedBox(width: size.width * 0.040,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if ( destinationError!= null)
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                    child: Text(
                                      destinationError!,
                                      style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                    ),
                                  ),
                                requestContainer(context, destination, size.width * 0.105, size.height * 0.032,setDialogState),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.020,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.030,),
                            Text('Remarks',style: TextStyle(color: black,fontSize: 14, fontFamily: 'Inter'),),
                            SizedBox(width: size.width * 0.055,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if ( remarksError!= null)
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                    child: Text(
                                      remarksError!,
                                      style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                    ),
                                  ),
                                Container(
                                  width: size.width * 0.170,
                                  height:size.height * 0.075,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey.shade400,width: 1),
                                  ),
                                  child: TextField(
                                    controller: remarks,
                                    // contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007),
                                    decoration: InputDecoration(
                                      hintText: 'Text Here',
                                      hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400),
                                      contentPadding: EdgeInsets.all(5),
                                      isDense: true, // Make the field more compact
                                      border: InputBorder.none,
                                    ),
                                    textAlignVertical: TextAlignVertical.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.035,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.125,),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: grey), // Outline border color
                                borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                minWidth: size.width * 0.052, // Adjust width as needed
                                height: size.height * 0.043, // Adjust height as needed
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0), // Keep border radius consistent
                                ),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: size.width * 0.020,),
                            MaterialButton(
                              minWidth: size.width * 0.068,
                              height: size.height * 0.048,
                              onPressed: (){},
                              child: Text('Apply',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Inter',),),
                              color: Colors.yellow,
                              textColor: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  SizedBox(height:size.height * 0.040,),

                ],
              ),
            );
          },
        ),
      ),
      barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
    );
  }

  void _phonerequestDialog(BuildContext context) {
    TextEditingController departure=TextEditingController();
    TextEditingController arrival=TextEditingController();
    TextEditingController destination=TextEditingController();
    TextEditingController remarks=TextEditingController();

    String? departureError;
    String? arrivalError;
    String? destinationError;
    String? remarksError;

    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: StatefulBuilder(
            builder: (BuildContext context,StateSetter setDialogState ){
              void validateFields() {
                setDialogState(() {
                  departureError = departure.text.isEmpty ? 'This field is required' : null;
                  arrivalError = arrival.text.isEmpty ? 'This field is required' : null;
                  destinationError = destination.text.isEmpty ? 'This field is required' : null;
                  remarksError = remarks.text.isEmpty ? 'This field is required' : null;
                });
              }

              // Function to clear error when user starts typing
              void clearErrorOnChange(TextEditingController controller, String? errorField, String fieldName) {
                controller.addListener(() {
                  setDialogState(() {
                    if (controller.text.isNotEmpty) {
                      switch (fieldName) {
                        case 'departure':
                          departureError = null;
                          break;
                        case 'arrival':
                          arrivalError = null;
                          break;
                        case 'destination':
                          destinationError = null;
                          break;
                        case 'remarks':
                          remarksError = null;
                          break;
                      }
                    }
                  });
                });
              }

              // Attach listeners to each field to dynamically clear the error
              clearErrorOnChange(departure, departureError, 'departure');
              clearErrorOnChange(arrival, arrivalError, 'arrival');
              clearErrorOnChange(destination, destinationError, 'destination');
              clearErrorOnChange(remarks, remarksError, 'remarks');

              return Container(
                padding: EdgeInsets.all(8),
                width:  size.width * 0.545,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width:size.width * 0.155,),
                        Text(
                          "Request Ticket",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,fontFamily:  'Inter'),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: size.height * 0.012,),
                    Container(
                      width: size.width * 0.48,
                      height: size.height * 0.40,
                      decoration: BoxDecoration(
                          color: ticket
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.030,),
                          Row(
                            children: [
                              SizedBox(width: size.width * 0.032,),
                              Text('Departure Date ',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
                              SizedBox(width: size.width * 0.012,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ( departureError!= null)
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                      child: Text(
                                        departureError!,
                                        style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                      ),
                                    ),
                                  Container(
                                    width: size.width * 0.172,
                                    height: size.height * 0.032,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey.shade400,width: 1)
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: TextField(
                                        controller: departure,
                                        style: TextStyle(
                                          fontSize: 09, // Set a smaller font size for the picked date
                                          color: Colors.black, // You can also control the color of the text
                                        ),
                                        textAlignVertical: TextAlignVertical.center,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(left: 5, bottom: 19),
                                          hintText: 'dd/mm/yy',
                                          hintStyle: TextStyle(fontSize: 10),
                                          suffixIcon: IconButton(
                                            padding: EdgeInsets.only(bottom: 0.5,left: 10),
                                            onPressed: () => _selectDate(context, departure), // Correct the onPressed
                                            icon: Icon(
                                              Icons.calendar_month,
                                              size: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.020,),
                          Row(
                            children: [
                              SizedBox(width: size.width * 0.030,),
                              Text('Arrival  Date ',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
                              SizedBox(width: size.width * 0.042,),
                              Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if ( arrivalError!= null)
                            Padding(
                              padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                              child: Text(
                                arrivalError!,
                                style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                              ),
                            ),
                          Container(
                            width: size.width * 0.172,
                            height: size.height * 0.032,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade400,width: 1)
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: TextField(
                                controller: arrival,
                                style: TextStyle(
                                  fontSize: 09, // Set a smaller font size for the picked date
                                  color: Colors.black, // You can also control the color of the text
                                ),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 5, bottom: 19),
                                  hintText: 'dd/mm/yy',
                                  hintStyle: TextStyle(fontSize: 10),
                                  suffixIcon: IconButton(
                                    padding: EdgeInsets.only(bottom: 0.5,left: 10),
                                    onPressed: () => _selectDate(context, arrival), // Correct the onPressed
                                    icon: Icon(
                                      Icons.calendar_month,
                                      size: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.020,),
                          Row(
                            children: [
                              SizedBox(width: size.width * 0.030,),
                              Text('Destination',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
                              SizedBox(width: size.width * 0.056,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ( destinationError!= null)
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                      child: Text(
                                        destinationError!,
                                        style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                      ),
                                    ),
                                  requestContainer(context, destination, size.width * 0.172, size.height * 0.032,setDialogState),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.020,),
                          Row(
                            children: [
                              SizedBox(width: size.width * 0.030,),
                              Text('Remarks',style: TextStyle(color: black,fontSize: 12, fontFamily: 'Inter'),),
                              SizedBox(width: size.width * 0.080,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ( remarksError!= null)
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                                      child: Text(
                                        remarksError!,
                                        style: TextStyle(color: Colors.red, fontSize: 9), // Error text styling
                                      ),
                                    ),
                                  Container(
                                    width: size.width * 0.200,
                                    height:size.height * 0.055,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey.shade400,width: 1),
                                    ),
                                    child: TextField(
                                      controller: remarks,
                                      // contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007),
                                      decoration: InputDecoration(
                                        hintText: 'Text Here',
                                        hintStyle: TextStyle(fontSize: 10,color: Colors.grey.shade400),
                                        contentPadding: EdgeInsets.all(5),
                                        isDense: true, // Make the field more compact
                                        border: InputBorder.none,
                                      ),
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.035,),
                          Row(
                            children: [
                              SizedBox(width: size.width * 0.135,),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: grey), // Outline border color
                                  borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                                ),
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  minWidth: size.width * 0.050, // Adjust width as needed
                                  height: size.height * 0.040, // Adjust height as needed
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0), // Keep border radius consistent
                                  ),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * 0.030,),
                              MaterialButton(
                                minWidth: size.width * 0.125,
                                height: size.height * 0.048,
                                onPressed: () {
                                  validateFields(); // Validate fields before submitting
                                  if (departureError == null &&
                                      arrivalError == null &&
                                      destinationError == null &&
                                      remarksError == null) {
                                    // Show confirmation dialog before applying
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('Confirm Submission'),
                                          content: Text('Are you sure you want to apply?'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(); // Dismiss the dialog
                                              },
                                              child: Text('No', style: TextStyle(color: Colors.red)),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                // Call your apply function here with the provided input
                                              },
                                              child: Text('Yes', style: TextStyle(color: Colors.green)),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Text('Apply',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'Inter',),),
                                color: Colors.yellow,
                                textColor: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    SizedBox(height:size.height * 0.010,),

                  ],
                ),
              );
            },
          )
      ),
      barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
    );
  }

  //DASHBOARD METHODS
  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();
  List<LeaveStatus?> allLeaveData = []; // Your leave data
  List<LeaveStatus?> filteredLeaveData = [];
  TextStyle headerTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Colors.black,
  );

  TextStyle rowTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    color: Colors.black,
  );
  // Filtered leave data based on date range

  @override
  void initState() {
    super.initState();
    final box = GetStorage();
    employeeName = box.read('name') ?? 'Nur Hafiza';
    employeeEmail = box.read('email') ?? 'adinin@gmail.com';
    dateOfJoin = box.read('dateOfJoin') ?? 'Date of Join not found';
    department = box.read('department') ?? 'Department not found';
    workPosition = box.read('workPosition') ?? 'Work Position not found';
    fetchLeaveData();  // Assuming you have a method to fetch leave data
    fetchTicketRequests();
  }

  @override
  void dispose() {
    from.dispose();
    to.dispose();
    super.dispose();
  }

  DateTime? selectedFromDate; // Variable to hold the selected date from the "From" field

  void _selectDate(BuildContext context, TextEditingController controller, {bool isFromField = false}) {
    DateTime initialDate = DateTime.now(); // Default initial date

    if (isFromField) {
      // Selecting date for "From" field
      showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(2000), // Set a reasonable start date for selection
        lastDate: DateTime(2100),
      ).then((selectedDate) {
        if (selectedDate != null) {
          controller.text = DateFormat('dd/MM/yyyy').format(selectedDate);
          selectedFromDate = selectedDate; // Store the selected "From" date
        }
      });
    } else {
      // Selecting date for "To" field
      showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: selectedFromDate ?? initialDate, // Set the first selectable date based on selected "From" date
        lastDate: DateTime(2100),
      ).then((selectedDate) {
        if (selectedDate != null) {
          controller.text = DateFormat('dd/MM/yyyy').format(selectedDate);
          filterLeaveData();
        }
      });
    }
  }



  Future<void> fetchLeaveData() async {
    try {
      // Fetch the current user's ID
      final box = GetStorage();
      String empId = box.read('userId') ?? '';
      print(empId);

      // Define the GraphQL query to get all leave data
      final request = ModelQueries.list<LeaveStatus>(LeaveStatus.classType); // Explicitly specify the type
      final response = await Amplify.API.query(request: request).response;
       print(response);

      // Check for errors
      if (response.errors.isNotEmpty) {
        print('Errors: ${response.errors}');
        _showAlertDialog('Error', 'Failed to fetch leave data.');
        return;
      }

      // Parse the leave data
      List<LeaveStatus?> leaveStatuses = response.data?.items ?? [];

      // Filter leave statuses based on the current user's ID
      List<LeaveStatus?> userLeaveStatuses = leaveStatuses.where((leave) => leave?.empID == empId).toList();

      setState(() {
        allLeaveData = userLeaveStatuses; // Store only the current user's leave data
      });

      // Initially, show all data
      filterLeaveData();
    } catch (e) {
      print('Failed to fetch leave data: $e');
      _showAlertDialog('Error', 'An unexpected error occurred.');
    }
  }




  void filterLeaveData() {
    // Check if both from and to date fields are empty
    if (from.text.isEmpty && to.text.isEmpty) {
      setState(() {
        // Reset both leave data and ticket requests when no filter is applied
        filteredLeaveData = allLeaveData;
        filteredTicketRequests = ticketRequests;
      });
      return; // Exit the function since no filtering is needed
    }

    // Variables to store parsed dates
    DateTime? fromDate;
    DateTime? toDate;

    try {
      // Parse the 'from' date if it's not empty
      if (from.text.isNotEmpty) {
        fromDate = DateFormat('dd/MM/yyyy').parse(from.text);
      }
      // Parse the 'to' date if it's not empty
      if (to.text.isNotEmpty) {
        toDate = DateFormat('dd/MM/yyyy').parse(to.text);
      }
    } catch (e) {
      // Handle invalid date format errors
      print('Error parsing dates: $e');
      _showAlertDialog('Error', 'Invalid date format.');
      return;
    }

    // Filter LeaveStatus data based on the from and to dates
    List<LeaveStatus?> tempFilteredLeave = allLeaveData.where((leave) {
      if (leave == null || leave.fromDate == null || leave.toDate == null) return false;

      final leaveFromDate = leave.fromDate!.getDateTime();
      final leaveToDate = leave.toDate!.getDateTime();

      bool afterFrom = fromDate != null
          ? leaveFromDate.isAfter(fromDate) || leaveFromDate.isAtSameMomentAs(fromDate)
          : true; // Include all data if no 'from' date
      bool beforeTo = toDate != null
          ? leaveToDate.isBefore(toDate.add(Duration(days: 1)))
          : true; // Include all data if no 'to' date

      return afterFrom && beforeTo; // Return true if within the date range
    }).toList();

    // Filter TicketRequest data based on the from and to dates
    List<TicketRequest?> tempFilteredTickets = ticketRequests.where((ticket) {
      if (ticket == null || ticket.departureDate == null || ticket.arrivalDate == null) return false;

      final ticketDepartureDate = ticket.departureDate!.getDateTime();
      final ticketArrivalDate = ticket.arrivalDate!.getDateTime();

      bool afterFrom = fromDate != null
          ? ticketDepartureDate.isAfter(fromDate) || ticketDepartureDate.isAtSameMomentAs(fromDate)
          : true; // Include all data if no 'from' date
      bool beforeTo = toDate != null
          ? ticketArrivalDate.isBefore(toDate.add(Duration(days: 1)))
          : true; // Include all data if no 'to' date

      return afterFrom && beforeTo; // Return true if within the date range
    }).toList();

    // Update the filtered data in the state
    setState(() {
      filteredLeaveData = tempFilteredLeave; // Update filtered leave data
      filteredTicketRequests = tempFilteredTickets; // Update filtered ticket request data
    });
  }



  Future<void> deleteLeave(String empId) async {
    try {
      // Fetch leave records for the given empId
      final request = ModelQueries.list<LeaveStatus>(LeaveStatus.classType);
      final response = await Amplify.API.query(request: request).response;

      // Check for errors in the query
      if (response.errors.isNotEmpty) {
        print('Errors fetching leave records: ${response.errors}');
        _showAlertDialog('Error', 'Failed to fetch leave records for deletion.');
        return;
      }

      // Get all leave records for the specified empId
      List<LeaveStatus?> leaveRecords = response.data?.items ?? [];
      List<LeaveStatus?> leavesToDelete = leaveRecords.where((leave) => leave?.empID == empId).toList();

      if (leavesToDelete.isEmpty) {
        print('No leave records found for empId: $empId');
        _showAlertDialog('Error', 'No leave records found for this employee ID.');
        return;
      }

      // Loop through the leaves and delete each one
      for (LeaveStatus? leave in leavesToDelete) {
        if (leave != null) {
          print('Attempting to delete leave with ID: ${leave.id}');

          final deleteRequest = ModelMutations.delete(leave);
          final deleteResponse = await Amplify.API.mutate(request: deleteRequest).response;

          // Check for errors during deletion
          if (deleteResponse.errors.isNotEmpty) {
            print('Errors deleting leave ID ${leave.id}: ${deleteResponse.errors}');
            continue; // Skip this leave and try the next one
          }

          // Successfully deleted
          print('Leave deleted successfully: ${leave.toString()}');

          // Remove from the local state
          setState(() {
            allLeaveData.removeWhere((l) => l?.id == leave.id);
            filteredLeaveData.removeWhere((l) => l?.id == leave.id);
          });
        }
      }

      // Show success message
      _showAlertDialog('Success', 'Leave requests deleted successfully.');
    } catch (e) {
      print('Failed to delete leave: $e');
      _showAlertDialog('Error', 'An unexpected error occurred.');
    }
  }




  /// Show an AlertDialog using GetX
  void _showAlertDialog(String title, String content) {
    Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(content),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
            },
            child: Text('OK'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  void _ticketpendingDialog(BuildContext context, int rowIndex,TicketRequest request ) {
    final Size size = MediaQuery.of(context).size;
    String status = 'Pending'; // Initialize the status locally

    Get.dialog(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              width: size.width * 0.260,
              decoration: BoxDecoration(
                color: dialog,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height:  size.height * 0.057,
                    color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: size.width * 0.108),
                        Text(
                          'Pending',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 22,fontWeight: FontWeight.bold ,color: Colors.black),
                        ),
                        SizedBox(width: size.width * 0.065),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_outlined, size: 26, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.014),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.057,),
                      Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.055,),
                      Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.044,),
                      Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Position',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.047,),
                      Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Destination',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.032,),
                      Text( 'Singapore',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Departure Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.016,),
                      Text('16/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Arrival Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.033,),
                      Text( '19/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.024),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.106),
                      MaterialButton(
                        minWidth: size.width * 0.062,
                        height: size.height * 0.052,
                        onPressed: () {
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16, fontFamily: 'Inter'),
                        ),
                        color: Colors.yellow,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.030),
                ],
              ),
            ),
          );
        },
      ),
      barrierDismissible: false,
    );
  }

  void _ticketapprovedDialog(BuildContext context,int rowIndex,TicketRequest request ) {
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: size.width * 0.260,
          decoration: BoxDecoration(
            color: dialog,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height:  size.height * 0.057,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: size.width * 0.105),
                    Text(
                      'Approved',
                      style: TextStyle(fontFamily: 'Inter', fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    SizedBox(width: size.width * 0.050),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel_outlined, size: 26, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.014),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.057,),
                  Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.055,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.044,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Position',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.047,),
                  Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Destination',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.032,),
                  Text( 'Singapore',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Departure Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.016,),
                  Text('16/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Arrival Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.033,),
                  Text( '19/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.024),
              Row(
                children: [
                  SizedBox(width: size.width * 0.107),
                  MaterialButton(
                    minWidth: size.width * 0.062,
                    height: size.height * 0.047,
                    onPressed: () {
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 16, fontFamily: 'Inter'),
                    ),
                    color: Colors.yellow,
                    textColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.025),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  void _ticketrejectedDialog(BuildContext context,int rowIndex,TicketRequest request ) {
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: size.width * 0.260,
          decoration: BoxDecoration(
            color: dialog,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height:  size.height * 0.057,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: size.width * 0.110),
                    Text(
                      'Rejected',
                      style: TextStyle(fontFamily: 'Inter', fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    SizedBox(width: size.width * 0.055),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel_outlined, size: 26, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.014),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.057,),
                  Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.055,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.044,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Position',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.047,),
                  Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Destination',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.032,),
                  Text( 'Singapore',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Departure Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.016,),
                  Text('16/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Arrival Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.033,),
                  Text( '19/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.022),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Remarks',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.045,),
                  Container(
                    width: size.width * 0.10,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: grey,width: 1)
                    ),
                    child: Text('  Busy Schedule ',style: TextStyle(color: black,fontSize: 14,fontFamily: 'Inter'),),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.030),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  void _phoneticketpendingDialog(BuildContext context, int rowIndex,TicketRequest request ) {
    final Size size = MediaQuery.of(context).size;
    String status = 'Pending'; // Initialize the status locally

    Get.dialog(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              width: size.width * 0.260,
              decoration: BoxDecoration(
                color: dialog,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height:  size.height * 0.057,
                    color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: size.width * 0.108),
                        Text(
                          'Pending',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 22,fontWeight: FontWeight.bold ,color: Colors.black),
                        ),
                        SizedBox(width: size.width * 0.065),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_outlined, size: 26, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.014),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.057,),
                      Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.055,),
                      Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.044,),
                      Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Position',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.047,),
                      Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Destination',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.032,),
                      Text( 'Singapore',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Departure Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.016,),
                      Text('16/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Arrival Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.033,),
                      Text( '19/10/2024',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.024),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.106),
                      MaterialButton(
                        minWidth: size.width * 0.062,
                        height: size.height * 0.052,
                        onPressed: () {
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16, fontFamily: 'Inter'),
                        ),
                        color: Colors.yellow,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.030),
                ],
              ),
            ),
          );
        },
      ),
      barrierDismissible: false,
    );
  }

  Future<void> updateLeaveStatus(String leaveId, String newStatus) async {
    try {
      final request = ModelMutations.update<LeaveStatus>(LeaveStatus.classType as LeaveStatus , apiName: leaveId, headers: {
        'empStatus': newStatus,
      });
      final response = await Amplify.API.mutate(request: request).response;

      if (response.errors.isNotEmpty) {
        print('Errors: ${response.errors}');
        _showAlertDialog('Error', 'Failed to update leave status.');
      } else {
        print('Leave status updated successfully.');
      }
    } catch (e) {
      print('Failed to update leave status: $e');
      _showAlertDialog('Error', 'An unexpected error occurred.');
    }
  }


  void _pendingDialog(BuildContext context, int rowIndex, LeaveStatus leave, ) {
    final Size size = MediaQuery.of(context).size;
    String status = 'Pending'; // Initialize the status locally
    final box = GetStorage();
    String empId = box.read('userId') ?? '';

    Get.dialog(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              width: size.width * 0.305,
              decoration: BoxDecoration(
                color: dialog,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height:  size.height * 0.057,
                    color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: size.width * 0.128),
                        Text(
                          'Pending',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 22,fontWeight: FontWeight.bold ,color: Colors.black),
                        ),
                        SizedBox(width: size.width * 0.075),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_outlined, size: 26, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.014),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.058,),
                      Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.045,),
                      Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.057,),
                      Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.048,),
                      Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.035,),
                      Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.016,),
                      Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.048,),
                      Text(
                        leave.applyTo != null && leave.applyTo is List
                            ? (leave.applyTo as List).join(', ')
                            : leave.applyTo?.toString() ?? '',
                        style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),)
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.035,),
                      Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.050,),
                      Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                      SizedBox(width:size.width *  0.050,),
                      Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.024),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.121),
                      MaterialButton(
                        minWidth: size.width * 0.062,
                        height: size.height * 0.052,
                        onPressed: () async {
                          await updateLeaveStatus(leave.id, 'Cancelled');
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16, fontFamily: 'Inter'),
                        ),
                        color: Colors.yellow,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.030),
                ],
              ),
            ),
          );
        },
      ),
      barrierDismissible: false,
    );
  }

  void _showCancelConfirmation(BuildContext context, Function onConfirmed) {
    Get.dialog(
      AlertDialog(
        title: Text('Confirm Cancel'),
        content: Text('Are you sure you want to cancel this leave request?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the confirmation dialog
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              onConfirmed(); // Perform the cancellation
              Navigator.pop(context); // Close the confirmation dialog
            },
            child: Text('Yes'),
          ),
        ],
      ),
    );
  }


  void _tabpendingDialog(BuildContext context, int rowIndex, LeaveStatus leave,Function(String) onStatusChanged) {
    final Size size = MediaQuery.of(context).size;
    String status = 'Pending'; // Initialize the status locally

    Get.dialog(
      StatefulBuilder( // Use StatefulBuilder to manage state within the dialog
        builder: (BuildContext context, StateSetter setState) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: dialog,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height:  size.height * 0.057,
                    color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: size.width * 0.160),
                        Text(
                          'Pending',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        SizedBox(width: size.width * 0.110),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_outlined, size: 24, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.014),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.074,),
                      Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.058,),
                      Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.074,),
                      Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.060,),
                      Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.046,),
                      Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.020,),
                      Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.062,),
                      //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.047,),
                      Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.057,),
                      Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                      SizedBox(width:size.width *  0.066,),
                      Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.025),
                  Row(
                    children: [
                      SizedBox(width:size.width *  0.152,),
                      MaterialButton(
                        minWidth: size.width * .085,
                        height: size.height * 0.050,
                        onPressed: () {
                          _showCancelConfirmation(context, onStatusChanged);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 15, fontFamily: 'Inter'),
                        ),
                        color: Colors.yellow,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.028),
                ],
              ),
            ),
          );
        },
      ),
      barrierDismissible: false,
    );

    // Refresh the DataTable to reflect the updated status in UI (if necessary)
  }

  void _tabapprovedDialog(BuildContext context, int rowIndex, LeaveStatus leave,Function(String) onStatusChanged) {
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: size.width * 0.39,
          decoration: BoxDecoration(
            color: dialog,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height:  size.height * 0.057,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: size.width * 0.165),
                    Text(
                      'Approved',
                      style: TextStyle(fontFamily: 'Inter', fontSize: 20,fontWeight: FontWeight.bold ,color: Colors.black),
                    ),
                    SizedBox(width: size.width * 0.090),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel_outlined, size: 24, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.016),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.075,),
                  Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.058,),
                  Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.073,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.057,),
                  Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.042,),
                  Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.016,),
                  Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.059,),
                  //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.043,),
                  Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.061,),
                  Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                  SizedBox(width:size.width *  0.062,),
                  Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.015),
              Row(
                children: [
                  SizedBox(width:size.width *  0.152,),
                  MaterialButton(
                    minWidth: size.width * .085,
                    height: size.height * 0.050,
                    onPressed: () {
                      _showCancelConfirmation(context, onStatusChanged);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 15, fontFamily: 'Inter'),
                    ),
                    color: Colors.yellow,
                    textColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.015),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  void _phoneapprovedDialog(BuildContext context, int rowIndex, LeaveStatus leave,Function(String) onStatusChanged) {
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: size.width * 0.65,
          decoration: BoxDecoration(
            color: dialog,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height:  size.height * 0.057,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: size.width * 0.235),
                    Text(
                      'Approved',
                      style: TextStyle(fontFamily: 'Inter', fontSize: 18,fontWeight: FontWeight.bold ,color: Colors.black),
                    ),
                    SizedBox(width: size.width * 0.150),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel_outlined, size: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.016),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.130,),
                  Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.097,),
                  Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.122,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.095,),
                  Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.068,),
                  Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.020,),
                  Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.096,),
                  //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.064,),
                  Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.080,),
                  Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                  SizedBox(width:size.width *  0.099,),
                  Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.015),
              Row(
                children: [
                  SizedBox(width:size.width *  0.212,),
                  MaterialButton(
                    minWidth: size.width * .080,
                    height: size.height * 0.040,
                    onPressed: () {
                      _showCancelConfirmation(context, onStatusChanged);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 15, fontFamily: 'Inter'),
                    ),
                    color: Colors.yellow,
                    textColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.015),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  void _phonependingDialog(BuildContext context, int rowIndex, LeaveStatus leave,) {
    final Size size = MediaQuery.of(context).size;
    String status = 'Pending'; // Initialize the status locally

    Get.dialog(
      StatefulBuilder( // Use StatefulBuilder to manage state within the dialog
        builder: (BuildContext context, StateSetter setState) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              width: size.width * 0.65,
              decoration: BoxDecoration(
                color: dialog,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height:  size.height * 0.052,
                    color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: size.width * 0.245),
                        Text(
                          'Pending',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 18,fontWeight: FontWeight.bold ,color: Colors.black),
                        ),
                        SizedBox(width: size.width * 0.135),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_outlined, size: 22, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.014),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.126),
                      Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.094,),
                      Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.122,),
                      Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.098,),
                      Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.064,),
                      Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.021,),
                      Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.098,),
                      Text(
                        leave.applyTo != null && leave.applyTo is List
                            ? (leave.applyTo as List).join(', ')
                            : leave.applyTo?.toString() ?? '',
                        style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),)
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.066,),
                      Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width:size.width *  0.063,),
                      Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                      SizedBox(width:size.width *  0.102,),
                      Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                    ],
                  ),
                  SizedBox(height: size.height * 0.025),
                  Row(
                    children: [
                      SizedBox(width:size.width *  0.220,),
                      MaterialButton(
                        minWidth: size.width * .150,
                        height: size.height * 0.047,
                        onPressed: () {

                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 14, fontFamily: 'Inter'),
                        ),
                        color: Colors.yellow,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.028),
                ],
              ),
            ),
          );
        },
      ),
      barrierDismissible: false,
    );

    // Refresh the DataTable to reflect the updated status in UI (if necessary)
  }

// Confirmation dialog before canceling the request


// Success dialog after cancellation
  void _showCancelSuccess(BuildContext context) {
    Get.dialog(
      AlertDialog(
        title: Text('Success'),
        content: Text('Leave request canceled successfully.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the success dialog
              Navigator.pop(context); // Close the pending dialog
            },
            child: Text('OK'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  void _rejectedDialog(BuildContext context, int rowIndex, LeaveStatus leave) {
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: size.width * 0.305,
          decoration: BoxDecoration(
            color: dialog,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height:  size.height * 0.057,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: size.width * 0.120),
                    Text(
                      'Rejected',
                      style: TextStyle(fontFamily: 'Inter', fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    SizedBox(width: size.width * 0.085),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel_outlined, size: 26, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.014),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.052,),
                  Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.038,),
                  Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.050,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.039,),
                  Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.028,),
                  Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.047,),
                  Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.013,),
                  Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.044,),
                  //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.029,),
                  Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.045,),
                  Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.022),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Comments',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.028,),
                 Container(
                   width: size.width * 0.15,
                   height: size.height * 0.07,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     border: Border.all(color: grey,width: 1)
                   ),
                   child: Text('  Rejected we have production \n   please planing leave latter',style: TextStyle(color: black,fontSize: 14,fontFamily: 'Inter'),),
                 )
                ],
              ),
              SizedBox(height: size.height * 0.030),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  void _approvedDialog(BuildContext context, int rowIndex, LeaveStatus leave, Function(String) onStatusChanged) {
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: size.width * 0.305,
          decoration: BoxDecoration(
            color: dialog,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height:  size.height * 0.057,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: size.width * 0.123),
                    Text(
                      'Approved',
                      style: TextStyle(fontFamily: 'Inter', fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    SizedBox(width: size.width * 0.080),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel_outlined, size: 26, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.016),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.052,),
                  Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.039,),
                  Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.050,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.041,),
                  Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.027,),
                  Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.047,),
                  Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.013,),
                  Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.044,),
                  //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.031,),
                  Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.047,),
                  Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.020),
              Row(
                children: [
                  SizedBox(width: size.width * 0.121),
                  MaterialButton(
                    minWidth: size.width * 0.062,
                    height: size.height * 0.050,
                    onPressed: () {
                      _showCancelConfirmation(context, onStatusChanged);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 16, fontFamily: 'Inter'),
                    ),
                    color: Colors.yellow,
                    textColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.020),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  bool isRecentLeaveSelected = true; // Tracks the selected tab

  void _toggleTab(bool isRecent) {
    setState(() {
      isRecentLeaveSelected = isRecent;
    });
  }

  String status1 = 'Pending';
  String status2 = 'Approved';
  String status3 = 'Rejected';

  Widget _buildRecentLeaveTable(Size size) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.175, top: size.height * 0.025),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: filteredLeaveData.isNotEmpty
            ? SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingRowHeight: filteredLeaveData.isEmpty ? 0 : size.height * 0.050,
            dataRowHeight: size.height * 0.048,
            columnSpacing: size.width * 0.047,
            columns: [
              DataColumn(label: Text('Leave Type', style: headerTextStyle)),
              DataColumn(label: Text('From', style: headerTextStyle)),
              DataColumn(label: Text('To', style: headerTextStyle)),
              DataColumn(label: Text('Days', style: headerTextStyle)),
              DataColumn(label: Text('Reason', style: headerTextStyle)),
              DataColumn(label: Text('Approver', style: headerTextStyle)),
              DataColumn(label: Text('Status', style: headerTextStyle)),
            ],
            rows: filteredLeaveData.map((leave) {
              int index = filteredLeaveData.indexOf(leave);

              return DataRow(
                cells: [
                  DataCell(Text(leave!.leaveType ?? '', style: rowTextStyle)),
                  DataCell(Text(
                    leave.fromDate != null
                        ? DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())
                        : '',
                    style: rowTextStyle,
                  )),
                  DataCell(Text(
                    leave.toDate != null
                        ? DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())
                        : '',
                    style: rowTextStyle,
                  )),
                  DataCell(Text('${leave.days ?? 0} days', style: rowTextStyle)),
                  DataCell(Text(leave.reason ?? '', style: rowTextStyle)),
                  DataCell(Text(
                    leave.applyTo != null && leave.applyTo is List
                        ? (leave.applyTo as List).join(', ')
                        : leave.applyTo?.toString() ?? '',
                    style: rowTextStyle,
                  )),
                  DataCell(GestureDetector(
                    onTap: (){
                        _pendingDialog(context, index, leave);
                    },
                      child: Text(leave?.empStatus?.toString() ?? 'Pending', style: rowTextStyle))),
                ],
              );
            }).toList(),
          ),
        )
            : SizedBox(),
      ),
    );
  }
  void _ticketCancelConfirmation(BuildContext context, Function onStatusChanged) {
    Get.dialog(
      AlertDialog(
        title: Text('Cancel'),
        content: Text('Are you sure you want to cancel the ticket request?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the confirmation dialog
            },
            child: Text('No', style: TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the confirmation dialog
              onStatusChanged();
            },
            child: Text('Yes', style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  Widget _buildReviewTicketTable(Size size) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.170, top: size.height * 0.025),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: filteredTicketRequests.isNotEmpty // Ensure proper condition check
            ? SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingRowHeight: filteredTicketRequests.isEmpty ? 0 : size.height * 0.050,
            dataRowHeight: size.height * 0.050,
            columnSpacing: size.width * 0.032,
            columns: [
              DataColumn(label: Text('Name', style: headerTextStyle)),
              DataColumn(label: Text('Badge Number', style: headerTextStyle)),
              DataColumn(label: Text('Department', style: headerTextStyle)),
              DataColumn(label: Text('Position', style: headerTextStyle)),
              DataColumn(label: Text('Destination', style: headerTextStyle)),
              DataColumn(label: Text('Departure Date', style: headerTextStyle)),
              DataColumn(label: Text('Arrival Date', style: headerTextStyle)),
              DataColumn(label: Text('Status', style: headerTextStyle)),
            ],
            rows: filteredTicketRequests.map((request) {
              int index = filteredTicketRequests.indexOf(request);
              return DataRow(cells: [
                DataCell(Text('Rahul', style: rowTextStyle)), // Static Name
                DataCell(Text('50598', style: rowTextStyle)), // Static Badge Number
                DataCell(Text('Welding', style: rowTextStyle)), // Static Department
                DataCell(Text('Trainer', style: rowTextStyle)), // Static Position
                DataCell(Text(request?.destination ?? 'Unknown', style: rowTextStyle)), // Dynamic Destination
                DataCell(Text(request?.departureDate != null
                    ? DateFormat('dd/MM/yyyy').format(request!.departureDate!.getDateTime())
                    : 'N/A', style: rowTextStyle)), // Dynamic Departure Date
                DataCell(Text(request!.arrivalDate != null
                    ? DateFormat('dd/MM/yyyy').format(request.arrivalDate!.getDateTime())
                    : 'N/A', style: rowTextStyle)),
                // Dynamic Arrival Date
                DataCell(
                  GestureDetector(
                    onTap: (){
                      _ticketpendingDialog(context, index, request);
                    },
                    child: Text(
                      request?.hrStatus ?? 'Pending',  // Show status text (default to 'Pending' if null)
                      style: rowTextStyle,
                    ),
                  ),
                )

              ]);
            }).toList(),
          ),
        )
            : SizedBox(), // Correctly handling empty state
      ),
    );
  }



  Widget _tabRecentLeaveTable(Size size) {
    return Padding(
      padding:  EdgeInsets.only(left: size.width * 0.115,top: size.height * 0.02),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: filteredLeaveData.isNotEmpty
            ? SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingRowHeight: filteredLeaveData.isEmpty ? 0 : size.height * 0.050,
            dataRowHeight: size.height * 0.048,
            columnSpacing: size.width * 0.038,
            columns: [
              DataColumn(label: Text('Leave Type', style: tabheaderTextStyle)),
              DataColumn(label: Text('From', style: tabheaderTextStyle)),
              DataColumn(label: Text('To', style: tabheaderTextStyle)),
              DataColumn(label: Text('Days', style: tabheaderTextStyle)),
              DataColumn(label: Text('Reason', style: tabheaderTextStyle)),
              DataColumn(label: Text('Approver', style: tabheaderTextStyle)),
              DataColumn(label: Text('Status', style: tabheaderTextStyle)),
            ],
            rows: filteredLeaveData.map((leave) {
              int index = filteredLeaveData.indexOf(leave);

              return DataRow(
                cells: [
                  DataCell(Text(leave!.leaveType ?? '', style: tabrowTextStyle)),
                  DataCell(Text(
                    leave.fromDate != null
                        ? DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())
                        : '',
                    style: tabrowTextStyle,
                  )),
                  DataCell(Text(
                    leave.toDate != null
                        ? DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())
                        : '',
                    style: tabrowTextStyle,
                  )),
                  DataCell(Text('${leave.days ?? 0} days', style: tabrowTextStyle)),
                  DataCell(Text(leave.reason ?? '', style: tabrowTextStyle)),
                  DataCell(Text(leave?.applyTo?.toString() ?? '', style: rowTextStyle)),
                  DataCell(Text(leave?.empStatus?.toString() ?? '', style: rowTextStyle)),
                   // Display the status dynamically
                ],
              );
            }).toList(),
          ),
        )
            : SizedBox(),
      ),
    );
  }

  Widget _tabReviewTicketTable(Size size) {
    // Implement the table for Employee Review Ticket similarly
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.120, top: size.height * 0.025),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingRowHeight:  size.height * 0.050,
                dataRowHeight: size.height * 0.048,
                columnSpacing: size.width * 0.020,
                columns: [
                  DataColumn(label: Text('Name', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Badge Number', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Department', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Position', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Destination', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Departure Date', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Arrival Date', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Status', style: tabheaderTextStyle)),
                  DataColumn(label: Text('Remarks', style: tabheaderTextStyle)),

                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Rahul',style: tabrowTextStyle,)),
                    DataCell(Text('50598',style: tabrowTextStyle,)),
                    DataCell(Text('Welding',style: tabrowTextStyle,)),
                    DataCell(Text('Trainer',style: tabrowTextStyle,)),
                    DataCell(Text('Singapore',style: tabrowTextStyle,)),
                    DataCell(Text('16/10/2024',style: tabrowTextStyle,)),
                    DataCell(Text('19/10/2024',style: tabrowTextStyle,)),
                    DataCell(
                      GestureDetector(
                        onTap: () {
                          _ticketCancelConfirmation(context, () {
                            setState(() {
                              status1 = 'Cancelled';
                            });
                          } );
                        },
                        child: Text(status1, style: tabrowTextStyle),
                      ),
                    ),
                    DataCell(Text('',style: tabrowTextStyle,)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Rahul',style: tabrowTextStyle,)),
                    DataCell(Text('50598',style:  tabrowTextStyle,)),
                    DataCell(Text('Welding',style:  tabrowTextStyle,)),
                    DataCell(Text('Trainer',style:  tabrowTextStyle,)),
                    DataCell(Text('Singapore',style:  tabrowTextStyle,)),
                    DataCell(Text('16/08/2024',style:  tabrowTextStyle,)),
                    DataCell(Text('19/08/2024',style:  tabrowTextStyle,)),
                    DataCell(Text('Approved',style:  tabrowTextStyle,)),
                    DataCell(Text('',style:  tabrowTextStyle,)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Rahul',style:  tabrowTextStyle,)),
                    DataCell(Text('50598',style:  tabrowTextStyle,)),
                    DataCell(Text('Welding',style:  tabrowTextStyle,)),
                    DataCell(Text('Trainer',style:  tabrowTextStyle,)),
                    DataCell(Text('Singapore',style:  tabrowTextStyle,)),
                    DataCell(Text('16/08/2024',style:  tabrowTextStyle,)),
                    DataCell(Text('19/08/2024',style:  tabrowTextStyle,)),
                    DataCell(Text('Approved',style:  tabrowTextStyle,)),
                    DataCell(Text('Reason for \n that',style:  tabrowTextStyle,)),
                  ]),
                ],
              ),
            ),
          )
      ),
    );
  }

  Widget _phoneRecentLeaveTable(Size size) {
    return  Padding(
      padding:  EdgeInsets.only(left: size.width * 0.027,top: size.height * 0.02),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: filteredLeaveData.isNotEmpty
            ? SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowHeight: filteredLeaveData.isEmpty ? 0 : size.height * 0.042,
              dataRowHeight: size.height * 0.040,
              columnSpacing: size.width * 0.022,
              columns: [
                DataColumn(label: Text('Leave Type', style: phoneheaderTextStyle)),
                DataColumn(label: Text('From', style: phoneheaderTextStyle)),
                DataColumn(label: Text('To', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Days', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Reason', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Approver', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Status', style: phoneheaderTextStyle)),
              ],
              rows: filteredLeaveData.map((leave) {
                int index = filteredLeaveData.indexOf(leave);
                return DataRow(
                  cells: [
                    DataCell(Text(leave!.leaveType ?? '', style: phonerowTextStyle)),
                    DataCell(Text(
                      leave.fromDate != null
                          ? DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())
                          : '',
                      style: phonerowTextStyle,
                    )),
                    DataCell(Text(
                      leave.toDate != null
                          ? DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())
                          : '',
                      style: phonerowTextStyle,
                    )),
                    DataCell(Text('${leave.days ?? 0} days', style: phonerowTextStyle)),
                    DataCell(Text(leave.reason ?? '', style: phonerowTextStyle)),
                    DataCell(Text(
                      leave.applyTo != null && leave.applyTo is List
                          ? (leave.applyTo as List).join(', ')
                          : leave.applyTo?.toString() ?? '',
                      style: phonerowTextStyle,
                    )),
                    DataCell(GestureDetector(
                        onTap: (){
                          _phonependingDialog(context, index, leave);
                        },
                        child: Text(leave?.empStatus?.toString() ?? 'Pending', style: phonerowTextStyle))),
                  ],
                );
              }).toList(),
            ),
          ),
        )
            : SizedBox(),
      ),

    );
  }

  Widget _phoneReviewTicketTable(Size size) {
    // Implement the table for Employee Review Ticket similarly
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.015, top: size.height * 0.02),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: filteredTicketRequests.isNotEmpty
           ? SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              headingRowHeight: filteredTicketRequests.isEmpty ? 0 : size.height * 0.042,
              dataRowHeight: size.height * 0.040,
              columnSpacing: size.width * 0.015,
              columns: [
                DataColumn(label: Text('Name', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Badge Number', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Department', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Position', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Destination', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Departure Date', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Arrival Date', style: phoneheaderTextStyle)),
                DataColumn(label: Text('Status', style: phoneheaderTextStyle)),
              ],
              rows: filteredTicketRequests.map((request) {
                int index = filteredTicketRequests.indexOf(request);
                return DataRow(cells: [
                  DataCell(Text('Rahul', style: phonerowTextStyle)), // Static Name
                  DataCell(Text('50598', style: phonerowTextStyle)), // Static Badge Number
                  DataCell(Text('Welding', style: phonerowTextStyle)), // Static Department
                  DataCell(Text('Trainer', style: phonerowTextStyle)), // Static Position
                  DataCell(Text(request?.destination ?? 'Unknown', style: phonerowTextStyle)), // Dynamic Destination
                  DataCell(Text(request?.departureDate != null
                      ? DateFormat('dd/MM/yyyy').format(request!.departureDate!.getDateTime())
                      : 'N/A', style: phonerowTextStyle)), // Dynamic Departure Date
                  DataCell(Text(request!.arrivalDate != null
                      ? DateFormat('dd/MM/yyyy').format(request.arrivalDate!.getDateTime())
                      : 'N/A', style: phonerowTextStyle)), // Dynamic Arrival Date
                  DataCell(GestureDetector(
                      onTap: (){
                        _phoneticketpendingDialog(context, index, request);
                      },
                      child: Text(request?.hrStatus ?? 'Pending', style: phonerowTextStyle))),
                ]);
              }).toList(),
            ),
          )
              : SizedBox(),
      )
    );

  }



  void _tabCancelDialog(BuildContext context, int rowIndex, LeaveStatus leave) {
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          padding: EdgeInsets.all(8),
          width: size.width * 0.360,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: size.height * 0.012),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.100),
                  Text(
                    'View Form',
                    style: TextStyle(fontFamily: 'Inter', fontSize: 22, color: Colors.black),
                  ),
                  SizedBox(width: size.width * 0.095),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel_outlined, size: 22, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.014),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.043,),
                  Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.030,),
                  Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.041,),
                  Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.032,),
                  Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.020,),
                  Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Select Date',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.020,),
                  Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.037,),
                  //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.022,),
                  Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.014,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.050,),
                  Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  SizedBox(width:size.width *  0.040,),
                  Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                ],
              ),
              SizedBox(height: size.height * 0.022),
              MaterialButton(
                minWidth: size.width * .065,
                height: size.height * 0.03,
                onPressed: () {
                  print(leave);
                  // deleteLeave(emp); // Delete leave from AWS DynamoDB
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancel Leave',
                  style: TextStyle(fontSize: 16, fontFamily: 'Inter'),
                ),
                color: Colors.yellow,
                textColor: Colors.black,
              ),
              SizedBox(height: size.height * 0.014),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        desktop: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0), // Height of the border
              child: Container(
                color: Colors.black12, // Border color
                height: 1.0, // Height of the border
              ),
            ),
            actions: [
              Row(
                  children: [
                    SizedBox(width:size.width * 0.015,),
                    Center(
                      child: Container(
                        height:size.height * 0.140,
                        width:size.width * 0.140,
                        child: Image.asset('assets/images/awe logo.png',fit: BoxFit.contain),),),
                  ]),
              Spacer(), // Pushes the next widgets to the right
              // Icon(Icons.mail_outline_outlined),
              SizedBox(width: size.width * 0.30), // spacing between icons
                Badge(
                  label: Text('1',style: TextStyle(color: black),),
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.notifications,size: 26,color: Colors.black,)),
              SizedBox(width:size.width * 0.070), // spacing between icons
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome Nur Hafiza',
                    style: TextStyle(fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal), // Reduce height between lines
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontStyle: FontStyle.normal), // Same height to ensure no spacing
                  ),
                ],
              ),
              SizedBox(width:size.width * 0.030,),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 23,
                    child: Image.asset('assets/images/user image.png'),
                  ),
                  Positioned(
                    top:size.height * 0.040,
                    bottom: 0,
                    right:size.width * 0.003,
                    child: GestureDetector(
                      onTap: (){
                        _showPopupMenu(context);
                        },
                      child: Container(
                        width: size.width * 0.012,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: pink,
                          border: Border.all(color:white ,width: 1),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: black,
                          size: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width:size.width * 0.030), // spacing between the profile and app bar end
            ],
            toolbarHeight:size.height * 0.090,
          ),
          backgroundColor: Colors.white,
          body:
          SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width* 0.19,),
                      // IconButton(onPressed: (){
                      //   Get.back();
                      // }, icon: Icon(Icons.arrow_back,size: 20,color: Colors.black,)),
                      // SizedBox(width: size.width* 0.14,),
                      Text('Welcome',style: TextStyle(color: black,fontSize:24 ,fontWeight: FontWeight.bold,fontFamily: 'Inter'),),
                      SizedBox(width: size.width * 0.01,),
                      Text('Nur Hafiza',style: TextStyle(color: griesh,fontFamily:'Inter',fontSize: 26,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: size.height * 0.025,),
                  Row(
                    children: [
                      SizedBox(width: size.width* 0.180,),
                      employeeInfoCard(
                        context,
                        'Trainer',          // Employee Type
                        '12/10/2024',       // Date of Joining
                        'Permanent',        // Contract Type
                        'Engineer',         // Department
                        'Offshore',
                        size.width * 0.60,
                        size.height * 0.105,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.046,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.188),
                      Text('OffShore',style: TextStyle(color: dashgrey,fontFamily: 'Inter',fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.183),
                      Container(
                        width: size.width * 0.6,
                        height: size.height * 0.21,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300,width: 1),
                          borderRadius: BorderRadius.circular(5),
                          color: white
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.010,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.205),
                                Text('Total AL/SL/UA',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.040),
                                Text('Leave Taken',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.040),
                                Text('Remaining',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.040),
                                Text('Leave Request',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: size.height * 0.010,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.095),
                                Text('Annual Leave',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.060),
                                Container(
                                  width: size.width * 0.042,
                                  height: size.height * 0.035,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade300,width: 1),
                                    color: Colors.white,
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                      child: Text('7',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black,fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(width: size.width * 0.052),
                                shoreContainer(context, '4',15),
                                SizedBox(width: size.width * 0.052),
                                shoreContainer(context, '3',15),
                                SizedBox(width: size.width * 0.052),
                                shoreContainer(context, '1',15),
                              ],
                            ),
                            SizedBox(height: size.height * 0.010,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.095),
                                Text('Sick Leave',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.072),
                                shoreContainer(context, '7',15),
                                SizedBox(width: size.width * 0.052),
                                shoreContainer(context, '4',15),
                                SizedBox(width: size.width * 0.052),
                                shoreContainer(context, '3',15),
                                SizedBox(width: size.width * 0.052),
                                shoreContainer(context, '1',15),
                              ],
                            ),
                            SizedBox(height: size.height * 0.012,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.095),
                                Text('Unpaid Authorize',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.046),
                                shoreContainer(context, '0',15),
                                SizedBox(width: size.width * 0.030),
                              ],
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.060,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.180),
                      GestureDetector(
                        onTap: () => _toggleTab(true),
                        child: Column(
                          children: [
                            Text(
                              'My Recent Leave',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (isRecentLeaveSelected)
                              Container(
                                height: 3.5,
                                width: size.width * 0.08,
                                color: Colors.yellow,
                              ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.015),
                      GestureDetector(
                        onTap: () => _toggleTab(false),
                        child: Column(
                          children: [
                            Text(
                              'Employee Review Ticket',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (!isRecentLeaveSelected)
                              Container(
                                height: 3.5,
                                width: size.width * 0.11,
                                color: Colors.yellow,
                              ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.215),
                      Container(
                        width: size.width * 0.078,
                        height: size.height * 0.034,
                        color: Colors.white,
                        child: Material(
                          color: Colors.transparent,
                          child: TextField(
                            controller: from,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: size.width * 0.005, bottom: size.height * 0.006),
                              hintText: 'From',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: IconButton(
                                onPressed: () => _selectDate(context, from, isFromField: true), // Call with isFromField = true
                                icon: Icon(Icons.calendar_month, size: 15, color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey, width: 1),
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.018),
                      Container(
                        width: size.width * 0.078,
                        height: size.height * 0.034,
                        color: Colors.white,
                        child: Material(
                          color: Colors.transparent,
                          child: TextField(
                            controller: to,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: size.width * 0.005, bottom: size.height * 0.006),
                              hintText: 'To',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: IconButton(
                                onPressed: () => _selectDate(context, to), // Call without isFromField
                                icon: Icon(Icons.calendar_month, size: 15, color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey, width: 1),
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      isRecentLeaveSelected ? _buildRecentLeaveTable(size) : _buildReviewTicketTable(size),
                    ],
                  ),
                  SizedBox(height: size.height * 0.032,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.45),
                      if (isRecentLeaveSelected)
                      // Show "Apply Leave" button when on the "My Recent Leave" tab
                        MaterialButton(
                          onPressed: () {
                            Get.to(() => ApplyLeaveScreen());
                          },
                          minWidth: size.width * 0.080,
                          height: size.height * 0.055,
                          color: yellow,
                          child: Text(
                            'Apply Leave',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                        ),
                      if (!isRecentLeaveSelected)
                      // Show "Request Ticket" button when on the "Employee Review Ticket" tab
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                              onPressed: () {
                                _requestDialog(context);
                              },
                              child: Text(
                                "Request Ticket",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  color: blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none, // Remove default underline
                                ),
                              ),
                            ),
                            // Add space between text and line
                            Container(
                              height: 1,
                              color: blue, // Custom underline color
                              width: size.width * 0.065, // Set the underline width as needed
                            ),
                          ],
                        ),
                    ],
                  ),

                  SizedBox(height: size.height * 0.022,),
                ],
              ),
            ),
        ),

        //TAB VIEW
        tablet: Scaffold(
          appBar: AppBar(
            backgroundColor:bgColor,
            flexibleSpace: Container(
              decoration: BoxDecoration(
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0), // Height of the border
              child: Container(
                color: Colors.black12, // Border color
                height: 1.0, // Height of the border
              ),
            ),
            actions: [
              Row(
                  children: [
                    SizedBox(width:size.width * 0.020,),
                    Center(
                      child: Container(
                        height:size.height * 0.165,
                        width:size.width * 0.165,
                        child: Image.asset('assets/images/awe logo.png',fit: BoxFit.contain),),),
                  ]),
              Spacer(), // Pushes the next widgets to the right
              // Icon(Icons.mail_outline_outlined),
              SizedBox(width:size.width* 0.030), // spacing between icons
              Badge(
                  label: Text('1',style: TextStyle(color: black),),
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.notifications,size: 23,color: Colors.black,)),
              SizedBox(width:size.width * 0.070), // spacing between icons
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome Nur Hafiza',
                    style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal), // Reduce height between lines
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontStyle: FontStyle.normal), // Same height to ensure no spacing
                  ),
                ],
              ),
              SizedBox(width:size.width * 0.030,),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 21,
                    child: Image.asset('assets/images/user image.png'),
                  ),
                  Positioned(
                    top:size.height * 0.040,
                    bottom: 0,
                    right:size.width * 0.008,
                    child: GestureDetector(
                      onTap: (){
                        _tabPopupMenu(context);
                      },
                      child: Container(
                        width: size.width * 0.014,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: pink,
                          border: Border.all(color:white ,width: 1),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: black,
                          size: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width:size.width * 0.030), // spacing between the profile and app bar end
            ],
            toolbarHeight:size.height * 0.080,
          ),
          backgroundColor: Colors.white,
          body:
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width* 0.15,),
                      // IconButton(onPressed: (){
                      //   Get.back();
                      // }, icon: Icon(Icons.arrow_back,size: 20,color: Colors.black,)),
                      // SizedBox(width: size.width* 0.14,),
                      Text('Welcome',style: TextStyle(color: black,fontSize:24 ,fontWeight: FontWeight.bold,fontFamily: 'Inter'),),
                      SizedBox(width: size.width * 0.01,),
                      Text('Nur Hafiza',style: TextStyle(color: griesh,fontFamily:'Inter',fontSize: 26,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: size.height * 0.025,),
                  Row(
                    children: [
                      SizedBox(width: size.width* 0.13,),
                      tabemployeeInfoCard(context, 'Trainer', '12/10/2024', 'Permanent', 'Engineer', 'Offshore',  size.width * 0.72,
                         size.height * 0.110,),
                    ],
                  ),
                  SizedBox(height: size.height * 0.034,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.148),
                      Text('Off Shore',style: TextStyle(color: dashgrey,fontFamily: 'Inter',fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: size.height * 0.014,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.128),
                      Container(
                        width: size.width * 0.72,
                        height: size.height * 0.21,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300,width: 1),
                            borderRadius: BorderRadius.circular(7),
                            color: white
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.018,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.205),
                                Text('Total AL/SL/UA',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.040),
                                Text('Leave Taken',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.040),
                                Text('Remaining',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.040),
                                Text('Leave Request',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 12,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: size.height * 0.010,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.095),
                                Text('Annual Leave',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.063),
                                Container(
                                  width: size.width * 0.042,
                                  height: size.height * 0.035,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade300,width: 1),
                                    color: Colors.white,
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('7',style: TextStyle(fontFamily: 'Inter',fontSize: 13,color: black,fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(width: size.width * 0.063),
                                shoreContainer(context, '4',13),
                                SizedBox(width: size.width * 0.062),
                                shoreContainer(context, '3',13),
                                SizedBox(width: size.width * 0.058),
                                shoreContainer(context, '1',13),
                              ],
                            ),
                            SizedBox(height: size.height * 0.010,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.095),
                                Text('Sick Leave',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.078),
                                shoreContainer(context, '7',13),
                                SizedBox(width: size.width * 0.063),
                                shoreContainer(context, '4',13),
                                SizedBox(width: size.width * 0.062),
                                shoreContainer(context, '3',13),
                                SizedBox(width: size.width * 0.059),
                                shoreContainer(context, '1',13),
                              ],
                            ),
                            SizedBox(height: size.height * 0.012,),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.095),
                                Text('Unpaid Authorize',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(width: size.width * 0.044),
                                shoreContainer(context, '0',13),
                                SizedBox(width: size.width * 0.052),

                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.057,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.145),
                      GestureDetector(
                        onTap: () => _toggleTab(true),
                        child: Column(
                          children: [
                            Text(
                              'My Recent Leave',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (isRecentLeaveSelected)
                              Container(
                                height: 3.5,
                                width: size.width * 0.10,
                                color: Colors.yellow,
                              ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.015),
                      GestureDetector(
                        onTap: () => _toggleTab(false),
                        child: Column(
                          children: [
                            Text(
                              'Employee Review Ticket',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (!isRecentLeaveSelected)
                              Container(
                                height: 3.5,
                                width: size.width * 0.14,
                                color: Colors.yellow,
                              ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.210),
                      Container(
                        width: size.width * 0.106,
                        height: size.height * 0.030,
                        color: Colors.white,
                        child: Material(
                          color: Colors.transparent,
                          child: TextField(
                            controller: from,
                            style: TextStyle(
                              fontSize: 09, // Set a smaller font size for the picked date
                              color: Colors.black, // You can also control the color of the text
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 5, bottom: 6),
                              hintText: 'From',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: IconButton(
                                padding: EdgeInsets.only(bottom: 0.5,left: 14),
                                onPressed: () => _selectDate(context, from), // Correct the onPressed
                                icon: Icon(
                                  Icons.calendar_month,
                                  size: 14,
                                  color: Colors.black,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey, width: 1), // Keep border color grey
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.016),
                      Container(
                        width: size.width * 0.106,
                        height: size.height * 0.030,
                        color: Colors.white,
                        child: Material(
                          color: Colors.transparent,
                          child: TextField(
                            controller: to,
                            style: TextStyle(
                              fontSize: 09, // Set a smaller font size for the picked date
                              color: Colors.black, // You can also control the color of the text
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 5, bottom: 6),
                              hintText: 'To',
                              hintStyle: TextStyle(fontSize: 12),
                              suffixIcon: IconButton(
                              padding:   EdgeInsets.only(bottom: 0.5,left: 14),
                                onPressed: () => _selectDate(context, to), // Correct the onPressed
                                icon: Icon(
                                  Icons.calendar_month,
                                  size: 14,
                                  color: Colors.black,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey, width: 1), // Keep border color grey
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      isRecentLeaveSelected ? _tabRecentLeaveTable(size) : _tabReviewTicketTable(size),
                    ],
                  ),
                  SizedBox(height: size.height * 0.032,),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.42,),
                      if (isRecentLeaveSelected)
                      MaterialButton(
                        onPressed: (){
                          Get.to(()=>ApplyLeaveScreen());
                        },
                        minWidth: size.width * 0.085,
                        height: size.height * 0.060,
                        color: yellow,
                        child: Text('Apply Leave',style: TextStyle(fontFamily: 'Inter,',fontSize: 15,fontWeight: FontWeight.bold,color: black),),
                      ),
                      SizedBox(width: size.width * (isRecentLeaveSelected ? 0.010 : 0.002)),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {
                              _tabrequestDialog(context);
                            },
                            child: Text(
                              "Request Ticket",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15,
                                color: blue,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none, // Remove default underline
                              ),
                            ),
                          ),
                          // Add space between text and line
                          Container(
                            height: 1,
                            color: blue, // Custom underline color
                            width: size.width * 0.065, // Set the underline width as needed
                          ),
                        ],
                      )

                    ],
                  ),
                  SizedBox(height: size.height * 0.026),
                ],
              ),
            ),
        ),

        //MOBILE VIEW
        mobile:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0), // Height of the border
              child: Container(
                color: Colors.black12, // Border color
                height: 1.0, // Height of the border
              ),),
            actions: [
              Row(
                  children: [
                    SizedBox(width:size.width * 0.012,),
                    Center(
                      child: Container(
                        height:size.height * 0.260,
                        width:size.width * 0.260,
                        child: Image.asset('assets/images/awe logo.png',fit: BoxFit.contain),),),
                  ]),
              Spacer(),
              SizedBox(width:size.width * 0.010), // spacing between icons
              Badge(
                  label: Text('1',style: TextStyle(color: black),),
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.notifications,size: 21,color: Colors.black,)),
              SizedBox(width:size.width * 0.045), // spacing between icons
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome Nur Hafiza',
                    style: TextStyle(fontSize: 10,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal), // Reduce height between lines
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontStyle: FontStyle.normal), // Same height to ensure no spacing
                  ),
                ],
              ),
              SizedBox(width:size.width * 0.010,),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 18,
                    child: Image.asset('assets/images/user image.png'),
                  ),
                  Positioned(
                    top:size.height * 0.036,
                    bottom: 0,
                    right:size.width * 0.012,
                    child: GestureDetector(
                      onTap: (){
                        _phonePopupMenu(context);
                      },
                      child: Container(
                        width: size.width * 0.032,
                        height: size.height * 0.09,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: pink,
                          border: Border.all(color:white ,width: 1),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: black,
                          size: 8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width:size.width * 0.010),
            ],
            toolbarHeight:size.height * 0.080,
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(height: size.height * 0.025,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width* 0.10,),
                  Text('Welcome',style: TextStyle(color: black,fontSize:18 ,fontWeight: FontWeight.bold,fontFamily: 'Inter'),),
                  SizedBox(width: size.width * 0.01,),
                  Text('Nur Hafiza',style: TextStyle(color: griesh,fontFamily:'Inter',fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: size.height * 0.015,),
              Row(
                children: [
                  SizedBox(width: size.width* 0.045,),
                  mobileInfoCard(context,'12/10/2024','Engineer', 'offshore'),
                ],
              ),
              SizedBox(height: size.height * 0.04,),
              Row(
                children: [
                  SizedBox(width: size.width * 0.08),
                  Text('OffShore',style: TextStyle(color: dashgrey,fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: size.height * 0.015,),
              Row(
                children: [
                  SizedBox(width: size.width * 0.060),
                  Container(
                    width: size.width * 0.88,
                    height: size.height * 0.175,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300,width: 1),
                        borderRadius: BorderRadius.circular(7),
                        color: white
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.016,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.215),
                            Text('Total AL/SL/UA',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 10,fontWeight: FontWeight.bold),),
                            SizedBox(width: size.width * 0.040),
                            Text('Leave Taken',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 10,fontWeight: FontWeight.bold),),
                            SizedBox(width: size.width * 0.040),
                            Text('Remaining',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 10,fontWeight: FontWeight.bold),),
                            SizedBox(width: size.width * 0.040),
                            Text('Leave Request',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 10,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: size.height * 0.012,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.065),
                            Text('Annual Leave',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 10,fontWeight: FontWeight.bold),),
                            SizedBox(width: size.width * 0.065),
                            Container(
                              width: size.width * 0.062,
                              height: size.height * 0.025,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300,width: 1),
                                color: Colors.white,
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('7',style: TextStyle(fontFamily: 'Inter',fontSize: 10,color: black,fontWeight: FontWeight.bold),)),
                            ),
                            SizedBox(width: size.width * 0.104),
                            mobileContainer(context, '4', 10),
                            SizedBox(width: size.width * 0.090),
                            mobileContainer(context, '3', 10),
                            SizedBox(width: size.width * 0.090),
                            mobileContainer(context, '1', 10),
                          ],
                        ),
                        SizedBox(height: size.height * 0.012,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.065),
                            Text('Sick Leave',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 10,fontWeight: FontWeight.bold),),
                            SizedBox(width: size.width * 0.090),
                            mobileContainer(context, '7', 10),
                            SizedBox(width: size.width * 0.104),
                            mobileContainer(context, '4', 10),
                            SizedBox(width: size.width * 0.090),
                            mobileContainer(context, '3', 10),
                            SizedBox(width: size.width * 0.090),
                            mobileContainer(context, '1', 10),
                          ],
                        ),
                        SizedBox(height: size.height * 0.013,),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.065),
                            Text('Unpaid Authorize',style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 10,fontWeight: FontWeight.bold),),
                            SizedBox(width: size.width * 0.032),
                            mobileContainer(context, '', 10),

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.04,),
              Row(
                children: [
                  SizedBox(width: size.width * 0.052),
                  GestureDetector(
                    onTap: () => _toggleTab(true),
                    child: Column(
                      children: [
                        Text(
                          'My Recent Leave',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (isRecentLeaveSelected)
                          Container(
                            height: 3.5,
                            width: size.width * 0.09,
                            color: Colors.yellow,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: size.width * 0.015),
                  GestureDetector(
                    onTap: () => _toggleTab(false),
                    child: Column(
                      children: [
                        Text(
                          'Employee Review Ticket',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (!isRecentLeaveSelected)
                          Container(
                            height: 3.5,
                            width: size.width * 0.12,
                            color: Colors.yellow,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: size.width * 0.150),
                  Container(
                    width: size.width * 0.173,
                    height: size.height * 0.024,
                    color: Colors.white,
                    child: Material(
                      color: Colors.transparent,
                      child: TextField(
                        controller: from,
                        style: TextStyle(
                          fontSize: 7, // Set a smaller font size for the picked date
                          color: Colors.black, // You can also control the color of the text
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 5, bottom: 6),
                          hintText: 'From',
                          hintStyle: TextStyle(fontSize: 9),
                          suffixIcon: IconButton(
                            padding: EdgeInsets.only(bottom: 0.05,left: 18),
                            onPressed: () => _selectDate(context, from, isFromField: true),  // Correct the onPressed
                            icon: Icon(
                              Icons.calendar_month,
                              size: 11,
                              color: Colors.black,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: grey, width: 1), // Keep border color grey
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.018),
                  Container(
                    width: size.width * 0.173,
                    height: size.height * 0.024,
                    color: Colors.white,
                    child: Material(
                      color: Colors.transparent,
                      child: TextField(
                        controller: to,
                        style: TextStyle(
                          fontSize: 7, // Set a smaller font size for the picked date
                          color: Colors.black, // You can also control the color of the text
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 5, bottom: 6),
                          hintText: 'To',
                          hintStyle: TextStyle(fontSize: 9),
                          suffixIcon: IconButton(
                            padding: EdgeInsets.only(bottom: 0.05,left: 18),
                            onPressed: () => _selectDate(context, to), // Correct the onPressed
                            icon: Icon(
                              Icons.calendar_month,
                              size: 11,
                              color: Colors.black,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: grey, width: 1), // Keep border color grey
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  isRecentLeaveSelected ? _phoneRecentLeaveTable(size) : _phoneReviewTicketTable(size),
                ],
              ),

              SizedBox(height: size.height * 0.028,),
              Row(
                children: [
                  SizedBox(width: size.width * 0.3,),
                  if (isRecentLeaveSelected)
                  MaterialButton(
                    onPressed: (){
                      Get.to(()=>ApplyLeaveScreen());
                    },
                    minWidth: size.width * 0.070,
                    height: size.height * 0.050,
                    color: yellow,
                    child: Text('Apply Leave',style: TextStyle(fontFamily: 'Inter,',fontSize: 15,fontWeight: FontWeight.bold,color: black),),
                  ),
                  if (isRecentLeaveSelected)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          _phonerequestDialog(context);
                        },
                        child: Text(
                          "Request Ticket",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            color: blue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none, // Remove default underline
                          ),
                        ),
                      ),
                      // Add space between text and line
                      Container(
                        height: 1,
                        color: blue, // Custom underline color
                        width: size.width * 0.065, // Set the underline width as needed
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        paddingWidth: size.width * 0.1,
        bgColor: bgColor);
  }
}

Widget newContainer(BuildContext context, TextEditingController controller,String text, double no){
  final Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.24,
    height: size.height * 0.038, // Increase the height for better alignment
    child: Material(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 16), // Adjust font size if necessary
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(fontSize: no),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: grey, width: 1),
            borderRadius: BorderRadius.circular(0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007), // Adjust vertical padding
        ),
      ),
    ),
  );

}

Widget myContainer(BuildContext context, TextEditingController controller,){
  final Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.10,
    height: size.height * 0.038,
    child: Material(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: grey,width: 1),
            borderRadius: BorderRadius.circular(0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007),
        ),

      ),
    ),
  );
}




String? departureError;
String? arrivalError;
String? destinationError;
String? remarksError;

TextEditingController departure=TextEditingController();
TextEditingController arrival=TextEditingController();
TextEditingController destination=TextEditingController();
TextEditingController remarks=TextEditingController();

bool validateField(StateSetter setDialogState) {
  bool isValid = true;

  // Reset all error messages
  setDialogState(() {
    departureError = null;
    arrivalError = null;
    destinationError = null;
    remarksError = null;
  });

  // Validate each field
  if (departure.text.isEmpty) {
    setDialogState(() => departureError = '* This field is required');
    isValid = false;
  }
  if (arrival.text.isEmpty) {
    setDialogState(() => arrivalError = '* This field is required');
    isValid = false;
  }
  if (destination.text.isEmpty) {
    setDialogState(() => destinationError = '* This field is required');
    isValid = false;
  }
  if (remarks.text.isEmpty) {
    setDialogState(() => remarksError = '* This field is required');
    isValid = false;
  }

  return isValid;
}

Widget employeeInfoCard(BuildContext context, String employeeType, String joiningDate, String contractType, String department, String location,double width, double height) {
  final Size size = MediaQuery.of(context).size;

  return
      Container(
      width: width,
        height: height,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(5),
         border: Border.all(color: Colors.grey.shade300,width: 1),
         color: white
       ), // Custom color
        child: Column(
          children: [
            SizedBox(height: size.height * 0.015),
            Row(
              children: [
                SizedBox(width: size.width * 0.124),
                Text(
                  'Date of joining',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    color: Colors.black,

                  ),
                ),
                SizedBox(width: size.width * 0.085),
                Text(
                  'Department',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    color: Colors.black,

                  ),
                ),
                SizedBox(width: size.width * 0.074),
                Text(
                  'Location',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    color: Colors.black,

                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.010),
            Row(
              children: [
                SizedBox(width: size.width * 0.124),
                Text(
                  joiningDate,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: size.width * 0.108),
                Text(
                  department,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: size.width * 0.092),
                Text(
                  location,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(), // Pushes the line to the bottom
            Divider(
              color: Colors.yellow, // Yellow line color
              thickness: 3, // Thickness of the yellow line
              height: 0, // No spacing above or below the line
            ),
          ],
        ),
      );
}

Widget shoreContainer(BuildContext context, String text,double font){
  final Size size = MediaQuery.of(context).size;
  return  Container(
    width: size.width * 0.042,
    height: size.height * 0.035,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300,width: 1),
      color: Colors.white,
    ),
    child: Align(
        alignment: Alignment.center,
        child: Text(text,style: TextStyle(fontFamily: 'Inter',fontSize: font,color: black,fontWeight: FontWeight.bold),)),
  );
}

Widget tabemployeeInfoCard(BuildContext context, String employeeType, String joiningDate, String contractType, String department, String location,double width, double height) {
  final Size size = MediaQuery.of(context).size;

  return
      Container(
       width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey.shade300,width: 1),
          color: white
        ), // Custom color
        child: Column(
          children: [
            SizedBox(height: size.height * 0.015),
            Row(
              children: [
                SizedBox(width: size.width * 0.074),

                SizedBox(width: size.width * 0.055),
                Text(
                  'Date of joining',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: size.width * 0.115),
                Text(
                  'Department',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: size.width * 0.115),
                Text(
                  'Location',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.010),
            Row(
              children: [
                SizedBox(width: size.width * 0.130),
                Text(
                  joiningDate,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: size.width * 0.125),
                Text(
                  department,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: size.width * 0.127),
                Text(
                  location,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(), // Pushes the line to the bottom
            Divider(
              color: Colors.yellow, // Yellow line color
              thickness: 3, // Thickness of the yellow line
              height: 0, // No spacing above or below the line
            ),
          ],
        ),
      );
}




void _tabrejectedDialog(BuildContext context, int rowIndex, LeaveStatus leave) {
  final Size size = MediaQuery.of(context).size;
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        width: size.width * 0.4,
        decoration: BoxDecoration(
            color: dialog,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height:  size.height * 0.057,
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.165),
                  Text(
                    'Rejected',
                    style: TextStyle(fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  SizedBox(width: size.width * 0.090),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel_outlined, size: 24, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.014),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.074,),
                Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.056,),
                Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.070,),
                Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.055,),
                Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.040,),
                Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.016,),
                Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 15,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.058,),
                //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.041,),
                Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.062,),
                Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.022),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.060,),
                Text('Comments',style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
                SizedBox(width:size.width *  0.039,),
                Container(
                  width: size.width * 0.175,
                  height: size.height * 0.057,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: grey,width: 1)
                  ),
                  child: Text('  Rejected we have production \n   please planing leave latter',style: TextStyle(color: black,fontSize: 12,fontFamily: 'Inter'),),
                )
              ],
            ),
            SizedBox(height: size.height * 0.028),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}



void _showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text('Error'),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          child: Text('Okay'),
          onPressed: () {
            Navigator.of(ctx).pop();
          },
        ),
      ],
    ),
  );
}
Future<void> _signOut(BuildContext context) async {
  try {
    await Amplify.Auth.signOut();
    Get.offAll(() => LoginScreen()); // Redirect to login screen
  } on AuthException catch (e) {
    _showErrorDialog(context, e.message);
  }
}
Future<void> _confirmSignOut(BuildContext context) async {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text('Log Out'),
      content: Text('Are you sure you want to Log out?'),
      actions: <Widget>[
        TextButton(
          child: Text('No'),
          onPressed: () {
            Navigator.of(ctx).pop(); // Just close the dialog
          },
        ),
        TextButton(
          child: Text('Yes'),
          onPressed: () async {
            Navigator.of(ctx).pop(); // Close the dialog before signing out
            await _signOut(context); // Call the sign out method
          },
        ),
      ],
    ),
  );
}

void _tabEditDialog(BuildContext context) {
  TextEditingController fullName=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController mobile=TextEditingController();

  final Size size = MediaQuery.of(context).size;
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        padding: EdgeInsets.all(8),
        width:  size.width * 0.415,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width * 0.025,),
                Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: size.width * 0.190,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.cancel_outlined,size: 23,color: black,))
              ],
            ),
            Divider(),
            SizedBox(height: size.height * 0.012,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.08,),
                Text('Full Name', style: TextStyle(fontSize: 14)),
                SizedBox(width: size.width * 0.093,),
                // Text('Last Name', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: size.height * 0.007,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width* 0.080,),
                newContainer(context, fullName,'Nur Hafiza',14),
                // myContainer(context, lastName),
              ],
            ),
            SizedBox(height:size.height * 0.020,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.080,),
                Text('Mobile Number', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: size.height *0.007,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.080,),
                newContainer(context, mobile,'8056863355',14)
              ],
            ),
            SizedBox(height:size.height * 0.020,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.080,),
                Text('Email Address', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: size.height *0.007,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.080,),
                newContainer(context, email,'adinin@gmail.com',14)
              ],
            ),
            SizedBox(height:size.height * 0.040,),
            MaterialButton(
              minWidth: size.width * .06,
              height: size.height * 0.03,
              onPressed: () {
                Get.back(); // Close the dialog
              },
              child: Text('Save',style: TextStyle(fontSize: 16,fontFamily: 'Inter',),),
              color: Colors.yellow,
              textColor: Colors.black,
            )
          ],
        ),
      ),
    ),
    barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
  );
}
final TextEditingController userIdController = TextEditingController();
void _tabPopupMenu(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  showMenu(
    color: Colors.white,
    context: context,
    position: RelativeRect.fromLTRB(100, 70, 5, 300), // Position of the menu
    items: [
      PopupMenuItem<int>(
        value: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height:size.height * 0.010,),
            Container(
              height:size.height * 0.070,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user image.png'),
                radius: 25,
                child: Container(
                  width:size.width * 0.110, // Width of the button
                  height:size.height *  0.050, // Height of the button
                  padding: EdgeInsets.symmetric(vertical:size.height * 0.010,horizontal:size.width * 0.008) ,
                  child: IconButton(
                      color: Colors.black,
                      iconSize: 15,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        // _showPopupMenu(context);
                      }, icon: Icon(Icons.photo_camera_outlined,)
                  ),
                ),
              ),
            ),

            SizedBox(height:size.height * 0.005,),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height:size.height * 0.030,
                      padding: EdgeInsets.only(left: 12),
                      child:Text('Personal Info',
                        style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontStyle: FontStyle.normal),)
                  ),
                  SizedBox(width:size.width * 0.090,),
                  GestureDetector(
                    onTap: (){
                      _tabEditDialog(context);
                    },
                    child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Edit',
                              style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              // Use GestureRecognizer to detect taps
                            ),
                          ]),),
                  )]),
            SizedBox(height:size.height * 0.007,),
            Divider(
              thickness: 1.5,
              color: Colors.black45,
            ),
            SizedBox(height:size.height * 0.003,),
            Container(
              height:size.height * 0.036,
              width:size.width * 0.220,
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(5), // Optional: rounded corners
              ),

              child: Row(
                  children: [
                    SizedBox(width:size.width * 0.015,),
                    Text('Nur Hafiza',
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),),]),
            ),
            SizedBox(height:size.height * 0.010,),
            Container(
              height:size.height * 0.036,
              width:size.width * 0.220,
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(5), // Optional: rounded corners
              ),
              child: Row(children: [
                SizedBox(width:size.width * 0.015,),
                Text(
                  '8056863355',
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),),
              ]),),
            SizedBox(height:size.height * 0.010,),
            Container(
              height:size.height * 0.036,
              width:size.width * 0.220,
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(5), // Optional: rounded corners
              ),
              child:Row(children: [
                SizedBox(width:size.width * 0.015,),
                Text(
                  'adinin@gmail.com',
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),
                ),
              ]),),

            SizedBox(height:size.height * 0.010),
            Row(
                children: [
                  Container(
                    height:size.height * 0.038,
                    width:size.width * 0.125,
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => changePasswordScreen(username: userIdController.text.trim()));
                      },
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(color: Colors.yellow, width: 3), // Change border color and width
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Rounded corners
                          ),
                        ),
                      ),
                      child: Text('Change Password',style: TextStyle(
                          fontSize: 9.5,fontWeight: FontWeight.bold,color: Colors.black)),
                    ),
                  ),
                  SizedBox(width:size.width * 0.010,),
                  Container(
                    height:size.height * 0.037,
                    width:size.height * 0.150,
                    child: TextButton(
                      onPressed: () {
                        _confirmSignOut(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(5), // Rounded corners
                        ),
                      ),
                      child: Row(
                          children: [
                            SizedBox(width:size.width * 0.015,) ,
                            Text('Logout',style: TextStyle(
                                fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black)),
                            SizedBox(width:size.width * 0.005,) ,
                            Icon(Icons.logout_outlined,size: 15,color: black,),
                          ]),
                    ),),
                  SizedBox(height: 50)
                ]),
          ],
        ),
      ),
    ],
  );
}

TextStyle tabheaderTextStyle = TextStyle(
  fontFamily: 'Inter',
  fontWeight: FontWeight.bold,
  fontSize: 13,
  color: Colors.black,
);

TextStyle tabrowTextStyle = TextStyle(
  fontFamily: 'Inter',
  fontSize: 12,
  color: Colors.black,
);

Widget mobileInfoCard(BuildContext context, String joinindate, String department, String location){
  final Size size = MediaQuery.of(context).size;
  return  Container(
    width: size.width * 0.90,
    height: size.height * 0.093,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade300,width: 1),
        color: Colors.white
    ),
    child: Column(
      children: [
        SizedBox(height: size.height * 0.015),
        Row(
          children: [
            SizedBox(width: size.width * 0.100),
            Text(
              'Date of joining',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.034),
       
            SizedBox(width: size.width * 0.100),
            Text(
              'Department',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.130),
            Text(
              'Location',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.010),
        Row(
          children: [
            SizedBox(width: size.width * 0.108),
            Text(
              joinindate,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 13,
                color: Colors.black,
              ),
            ),
            SizedBox(width: size.width * 0.150),
            Text(
              department,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 13,
                color: Colors.black,
              ),
            ),
            SizedBox(width: size.width * 0.148),
            Text(
             location,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 13,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Spacer(), // Pushes the line to the bottom
        Divider(
          color: Colors.yellow, // Yellow line color
          thickness: 3, // Thickness of the yellow line
          height: 0, // No spacing above or below the line
        ),
      ],
    ),
  );
}

Widget mobileContainer(BuildContext context, String text,double font){
  final Size size = MediaQuery.of(context).size;
  return  Container(
    width: size.width * 0.062,
    height: size.height * 0.025,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300,width: 1),
      color: Colors.white,
    ),
    child: Align(
        alignment: Alignment.center,
        child: Text(text,style: TextStyle(fontFamily: 'Inter',fontSize: font,color: black,fontWeight: FontWeight.bold),)),
  );
}



void _phonerejectedDialog(BuildContext context, int rowIndex, LeaveStatus leave) {
  final Size size = MediaQuery.of(context).size;
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        width: size.width * 0.65,
        decoration: BoxDecoration(
          color: dialog,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height:  size.height * 0.057,
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.240),
                  Text(
                    'Rejected',
                    style: TextStyle(fontFamily: 'Inter', fontSize: 18,fontWeight: FontWeight.bold ,color: Colors.black),
                  ),
                  SizedBox(width: size.width * 0.150),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel_outlined, size: 22, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.014),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Name',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.118,),
                Text('Rahul Kumar',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Job Title',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.087,),
                Text('Trainer',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Badge',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.115,),
                Text('50598',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Dept/Div',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.090,),
                Text('5058',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Leave Type',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.063,),
                Text(leave.leaveType ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Selected Dates',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.017,),
                Text('${DateFormat('dd/MM/yyyy').format(leave.fromDate!.getDateTime())} to ${DateFormat('dd/MM/yyyy').format(leave.toDate!.getDateTime())}',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Apply to',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.092,),
                //Text(leave.applyTo ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.064,),
                Text('${leave.days ?? 0} days',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.014,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Reason',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.097,),
                Text(leave.reason ?? 'N/A',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
              ],
            ),
            SizedBox(height: size.height * 0.022),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.068,),
                Text('Comments',style: TextStyle(fontFamily: 'Inter',fontSize: 12,color: black),),
                SizedBox(width:size.width *  0.053,),
                Container(
                  width: size.width * 0.295,
                  height: size.height * 0.050,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: grey,width: 1)
                  ),
                  child: Text('  Rejected we have production \n   please planing leave latter',style: TextStyle(color: black,fontSize: 10,fontFamily: 'Inter'),),
                )
              ],
            ),
            SizedBox(height: size.height * 0.028),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}



void _phoneEditDialog(BuildContext context) {
  TextEditingController fullName=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController mobile=TextEditingController();

  final Size size = MediaQuery.of(context).size;
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        padding: EdgeInsets.all(8),
        width:  size.width * 0.425,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width * 0.028,),
                Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: size.width * 0.170,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.cancel_outlined,size: 21,color: black,))
              ],
            ),
            Divider(),
            SizedBox(height: size.height * 0.012,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:size.width *  0.10,),
                Text('Full Name', style: TextStyle(fontSize: 14)),
                SizedBox(width: size.width * 0.093,),
                // Text('Last Name', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: size.height * 0.007,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width* 0.088,),
                phonePopContainer(context, fullName,'Nur Hafiza',12),
                // myContainer(context, lastName),
              ],
            ),
            SizedBox(height:size.height * 0.020,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.088,),
                Text('Mobile Number', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: size.height *0.007,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.088,),
                phonePopContainer(context, mobile,'8056863355',12)
              ],
            ),
            SizedBox(height:size.height * 0.020,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.088,),
                Text('Email Address', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: size.height *0.007,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: size.width * 0.088,),
                phonePopContainer(context, email,'adinin@gmail.com',12)
              ],
            ),
            SizedBox(height:size.height * 0.040,),
            Row(
              children: [
                SizedBox(width: size.width * 0.198,),
                MaterialButton(
                  minWidth: size.width * .06,
                  height: size.height * 0.03,
                  onPressed: () {
                    Get.back(); // Close the dialog
                  },
                  child: Text('Save',style: TextStyle(fontSize: 14,fontFamily: 'Inter',),),
                  color: Colors.yellow,
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height:size.height * 0.010,),
          ],
        ),
      ),
    ),
    barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
  );
}

void _phonePopupMenu(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  showMenu(
    color: Colors.white,
    context: context,
    position: RelativeRect.fromLTRB(100, 70, 5, 300), // Position of the menu
    items: [
      PopupMenuItem<int>(
        value: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height:size.height * 0.010,),
            Container(
              height:size.height * 0.070,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user image.png'),
                radius: 24,
                child: Container(
                  width:size.width * 0.110, // Width of the button
                  height:size.height *  0.050, // Height of the button
                  padding: EdgeInsets.symmetric(vertical:size.height * 0.010,horizontal:size.width * 0.008) ,
                  child: IconButton(
                      color: Colors.black,
                      iconSize: 15,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        // _showPopupMenu(context);
                      }, icon: Icon(Icons.photo_camera_outlined,)
                  ),
                ),
              ),
            ),

            SizedBox(height:size.height * 0.005,),
            Row(
                children: [
                  SizedBox(width:size.width * 0.050,),
                  Container(
                      height:size.height * 0.030,
                      padding: EdgeInsets.only(left: 12),
                      child:Text('Personal Info',
                        style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontStyle: FontStyle.normal),)
                  ),
                  SizedBox(width:size.width * 0.150,),
                  GestureDetector(
                    onTap: (){
                      _phoneEditDialog(context);
                    },
                    child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Edit',
                              style: TextStyle(fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              // Use GestureRecognizer to detect taps
                            ),
                          ]),),
                  )]),
            SizedBox(height:size.height * 0.001,),
            Divider(
              thickness: 1.5,
              color: Colors.black45,
            ),
            SizedBox(height:size.height * 0.003,),
            Row(
              children: [
                SizedBox(width:size.width * 0.035,),
                Container(
                  height:size.height * 0.034,
                  width:size.width * 0.405,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 1, // Border width
                    ),
                    borderRadius: BorderRadius.circular(5), // Optional: rounded corners
                  ),

                  child: Row(
                      children: [
                        SizedBox(width:size.width * 0.015,),
                        Text('Nur Hafiza',
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),),]),
                ),
              ],
            ),
            SizedBox(height:size.height * 0.010,),
            Row(
              children: [
                SizedBox(width:size.width * 0.035,),
                Container(
                  height:size.height * 0.034,
                  width:size.width * 0.405,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 1, // Border width
                    ),
                    borderRadius: BorderRadius.circular(5), // Optional: rounded corners
                  ),
                  child: Row(children: [
                    SizedBox(width:size.width * 0.015,),
                    Text(
                      '8056863355',
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),),
                  ]),),
              ],
            ),
            SizedBox(height:size.height * 0.010,),
            Row(
              children: [
                SizedBox(width:size.width * 0.035,),
                Container(
                  height:size.height * 0.034,
                  width:size.width * 0.405,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 1, // Border width
                    ),
                    borderRadius: BorderRadius.circular(5), // Optional: rounded corners
                  ),
                  child:Row(children: [
                    SizedBox(width:size.width * 0.015,),
                    Text(
                      'adinin@gmail.com',
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),
                    ),
                  ]),),
              ],
            ),

            SizedBox(height:size.height * 0.010),
            Row(
                children: [
                  SizedBox(width:size.width * 0.025,),
                  Container(
                    height:size.height * 0.040,
                    width:size.width * 0.230,
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => changePasswordScreen(username: userIdController.text.trim()));
                      },
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(color: Colors.yellow, width: 3), // Change border color and width
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Rounded corners
                          ),
                        ),
                      ),
                      child: Text('Change Password',style: TextStyle(
                          fontSize: 8,fontWeight: FontWeight.bold,color: Colors.black)),
                    ),
                  ),
                  SizedBox(width:size.width * 0.015,),
                  Container(
                    height:size.height * 0.037,
                    width:size.height * 0.130,
                    child: TextButton(
                      onPressed: () {
                        _confirmSignOut(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(5), // Rounded corners
                        ),
                      ),
                      child: Row(
                          children: [
                            SizedBox(width:size.width * 0.015,) ,
                            Text('Logout',style: TextStyle(
                                fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                            SizedBox(width:size.width * 0.015,) ,
                            Icon(Icons.logout_outlined,size: 15,color: black,),
                          ]),
                    ),),
                  SizedBox(height: 50)
                ]),
          ],
        ),
      ),
    ],
  );
}

Widget phonePopContainer(BuildContext context, TextEditingController controller,String text, double no){
  final Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.30,
    height: size.height * 0.027, // Increase the height for better alignment
    child: Material(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 16), // Adjust font size if necessary
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(fontSize: no),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: grey, width: 1),
            borderRadius: BorderRadius.circular(0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007), // Adjust vertical padding
        ),
      ),
    ),
  );

}

TextStyle phoneheaderTextStyle = TextStyle(
  fontFamily: 'Inter',
  fontWeight: FontWeight.bold,
  fontSize: 8,
  color: Colors.black,
);

TextStyle phonerowTextStyle = TextStyle(
  fontFamily: 'Inter',
  fontSize: 8.5,
  color: Colors.black,
);

