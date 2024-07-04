import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';

class Jitsemeeting extends StatefulWidget {
  const Jitsemeeting({super.key});

  @override
  State<Jitsemeeting> createState() => _JitsemeetingState();
}

class _JitsemeetingState extends State<Jitsemeeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              joinmeet();
            },
            child: const Text("Meet")),
      ),
    );
  }

  joinmeet() async { 
    var options = JitsiMeetingOptions(roomNameOrUrl: "https://meet.jit.si/FluuterTeam");
    await JitsiMeetWrapper.joinMeeting(options: options);
  }
}
