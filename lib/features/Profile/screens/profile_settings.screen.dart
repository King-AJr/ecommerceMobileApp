import 'package:ecommerce_app/common/widgets/customTextField.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart'; // Import Cupertino library for CupertinoSwitch

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingsScreen> {
  bool _enableSalesNotification = true;
  bool _enableNewArrivalsNotification = false;
  bool _enableDeliveryStatusNotification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBottomAppBar(context, "Settings"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/smilingwoman.jpeg'),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('Change Profile picture',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 16),
            const SectionHeading(
              title: "Profile information",
              showActionButton: false,
            ),
            const SizedBox(height: 16),
            const profileRow(field: 'Name: ', value: 'King AJ'),
            const SizedBox(height: 16),
            const profileRow(field: 'Email: ', value: 'talk2ata@gmail.com'),
            const SizedBox(height: 16),
            const profileRow(field: 'Phone number ', value: '070756839557'),
            const SizedBox(height: 30),
            const SectionHeading(
              title: "Notification",
              showActionButton: false,
            ),
            _buildNotificationRow(
              label: "Sales",
              value: _enableSalesNotification,
              onChanged: (value) {
                setState(() {
                  _enableSalesNotification = value;
                });
              },
            ),
            _buildNotificationRow(
              label: "New arrivals",
              value: _enableNewArrivalsNotification,
              onChanged: (value) {
                setState(() {
                  _enableNewArrivalsNotification = value;
                });
              },
            ),
            _buildNotificationRow(
              label: "Delivery status change",
              value: _enableDeliveryStatusNotification,
              onChanged: (value) {
                setState(() {
                  _enableDeliveryStatusNotification = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationRow({
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        CupertinoSwitch(
          value: value,
          onChanged: onChanged,
          activeColor: const Color(0xFF2AA952),
        ),
      ],
    );
  }
}

class profileRow extends StatelessWidget {
  final String field;
  final String value;

  const profileRow({
    super.key,
    required this.field,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            field,
            style: Theme.of(context).textTheme.displaySmall,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            value,
            style: Theme.of(context).textTheme.displaySmall,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Expanded(
          child: Icon(Iconsax.arrow_right_34, size: 18),
        ),
      ],
    );
  }
}
