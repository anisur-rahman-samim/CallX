import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID, required this.uName}) : super(key: key);
  final String callID;
  final String uName;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 598072765, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: '7984bf78f5e7728e44a041542eb36c106c2363801a776c8d7e43fd3f9e6595d0', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: "${uName}123",
      userName: uName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
