class Job{
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String>req;
  Job(this.company,
      this.logoUrl,
      this.isMark,
      this.title,
      this.location,
      this.time,
      this.req
      );
  static List<Job>generateJobs(){
    return[
      Job('Google LLC', 'assets/google_logo.png', false, 'Principle Product Design', '417 Marion,New York \nUSA', 'Full Time',[ 'Creative with an eye for shape and color','Understand different materials and production methods','Interested in the way people choose and use products']),
      Job('Airbnb', 'assets/airbnb_logo.png', false, 'VP Business Intelligence', '50 Herminia Striven \nCANADA', 'Full Time',[ 'Creative with an eye for shape and color']),
      Job('Linkedin', 'assets/linkedin_logo.png', false, 'Software Engineer', '417 Marion,New York \nUSA', 'Full Time',[ 'Creative with an eye for shape and color']),
      Job('Google', 'assets/google_logo.png', false, 'Software Engineer', '417 Marion,New York \nUSA', 'Full Time',[ 'Creative with an eye for shape and color']),
    ];
  }
}
