// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class PhoneNumberInput extends StatefulWidget {
//   final Function(String) onChanged;
//   final String? initialValue;

//   const PhoneNumberInput({
//     Key? key,
//     required this.onChanged,
//     this.initialValue,
//   }) : super(key: key);

//   @override
//   State<PhoneNumberInput> createState() => _PhoneNumberInputState();
// }

// class _PhoneNumberInputState extends State<PhoneNumberInput> {
//   String selectedCountryCode = '+966';
//   final TextEditingController _controller = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     if (widget.initialValue != null) {
//       _controller.text = widget.initialValue!;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey[300]!),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         children: [
//           // Country code dropdown
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             decoration: BoxDecoration(
//               border: Border(
//                 right: BorderSide(color: Colors.grey[300]!),
//               ),
//             ),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton<String>(
//                 value: selectedCountryCode,
//                 items: const [
//                   DropdownMenuItem(
//                     value: '+966',
//                     child: Text('+966'),
//                   ),
//                   DropdownMenuItem(
//                     value: '+1',
//                     child: Text('+1'),
//                   ),
//                   // Add more country codes as needed
//                 ],
//                 onChanged: (String? value) {
//                   if (value != null) {
//                     setState(() {
//                       selectedCountryCode = value;
//                     });
//                     widget.onChanged('$selectedCountryCode${_controller.text}');
//                   }
//                 },
//               ),
//             ),
//           ),
//           // Phone number input field
//           Expanded(
//             child: TextFormField(
//               controller: _controller,
//               keyboardType: TextInputType.phone,
//               decoration: const InputDecoration(
//                 hintText: 'Enter phone number',
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.symmetric(horizontal: 16),
//               ),
//               inputFormatters: [
//                 FilteringTextInputFormatter.digitsOnly,
//                 LengthLimitingTextInputFormatter(9),
//               ],
//               onChanged: (value) {
//                 widget.onChanged('$selectedCountryCode$value');
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
