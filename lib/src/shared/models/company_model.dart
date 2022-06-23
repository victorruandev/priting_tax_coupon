class CompanyModel {
  final String name;
  final String cpnj;
  final String street;
  final String state;
  final String city;
  final String stateShortenedName; // MA, BA..

  CompanyModel(this.cpnj, this.street, this.state, this.stateShortenedName,
      this.name, this.city);
}
