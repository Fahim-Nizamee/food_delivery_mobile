class OnboardingContent{
  String image;
  String title;
  String description;
  OnboardingContent({
    required this.description,
    required this.image,
    required this.title,
  });
}

List<OnboardingContent>contents=[
  OnboardingContent(description: 'Pick your food from our menuAs much as you want.', image: 'images/screen1.png', title: 'Select from Our Best Menu'),
  OnboardingContent(description: "You can pay cash on delivery and Card payment is available.", image: 'images/screen2.png', title: "Easy and Online Payment"),
  OnboardingContent(description: "Deliver your food at your Doorstep.", image: "images/screen3.png", title: "Quick Delivery at your Doorstep")
];