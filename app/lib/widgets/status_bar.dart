import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Time
          const Text(
            '16:04',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'League Spartan',
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          // Status icons
          Row(
            children: [
              _buildSignalIcons(),
              const SizedBox(width: 8),
              _buildWifiIcon(),
              const SizedBox(width: 8),
              _buildBatteryIcon(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSignalIcons() {
    return Row(
      children: [
        Container(
          width: 3,
          height: 7,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        const SizedBox(width: 1),
        Container(
          width: 3,
          height: 9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        const SizedBox(width: 1),
        Container(
          width: 3,
          height: 11,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        const SizedBox(width: 1),
        Container(
          width: 3,
          height: 13,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
      ],
    );
  }

  Widget _buildWifiIcon() {
    return const Icon(Icons.wifi, color: Colors.white, size: 16);
  }

  Widget _buildBatteryIcon() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 22,
          height: 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(width: 2, height: 4, color: Colors.white),
        ),
        Positioned(
          left: 2,
          child: Container(width: 16, height: 6, color: Colors.white),
        ),
      ],
    );
  }
}
