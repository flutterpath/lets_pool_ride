class StepModel {
  final String id;
  final String text;
  final String subText;

  StepModel( {this.id,this.subText, this.text});

  static List<StepModel> list = [
    StepModel(
      id: "assets/onBoarding/onBoarding1.png",
      text: "Request Ride",
      subText: "Request a ride get picked up by a nearby community driver"
    ),
    StepModel(
      id: "assets/onBoarding/onBoarding2.png",
      text: "Confirm Your Driver",
      subText: "Huge drivers network helps you find comfortable, safe and cheap ride"
    ),
    StepModel(
      id: "assets/onBoarding/onBoarding3.png",
      text: "Track Your Ride",
      subText: "Know your driver in advance and be able to view current location in real time on the map"
    ),
  ];
}