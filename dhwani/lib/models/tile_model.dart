class tile {
  String name;
  String image;
  String description;
  tile(this.name, this.image, this.description);
}

List<tile> demo = [
  // tile('sleep', 'assets/images/slp.svg', 'I feel sleepy'),
  // tile('eat', 'assets/images/eat_,_to.svg', 'I am hungry'),
  tile('bird', 'assets/images/bird.svg', 'I want to see a bird'),
  tile('banana', 'assets/images/banana.svg', 'I want to eat a banana'),
  tile('bat', 'assets/images/bat.svg', 'I want to see a bat'),
  tile('beach', 'assets/images/beach.svg', 'I want to see a beach'),
];
