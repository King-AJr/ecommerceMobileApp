import 'package:ecommerce_app/common/widgets/customTextField.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import Cupertino library for CupertinoSwitch

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
            Text(
              "Personal information",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                    labelText: 'Full name',
                    ),
              ),
            ),
            
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                    labelText: 'Date of Birth',
                    ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Password",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                    labelText: 'Full name',
                    ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Notification",
              style: Theme.of(context).textTheme.headlineSmall,
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
