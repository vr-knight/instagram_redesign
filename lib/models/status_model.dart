class StatusModel {
  String name;
  String imagePath;

  StatusModel({n, iP}) {
    name = n;
    imagePath = iP;
  }
}

final List<StatusModel> status = [
  StatusModel(iP: 'images/a.jpg', n: 'Jack'),
  StatusModel(iP: 'images/b.jpg', n: 'Sophie'),
  StatusModel(iP: 'images/k.jpg', n: 'Martha'),
  StatusModel(iP: 'images/j.jpg', n: 'Vaanya'),
  StatusModel(iP: 'images/e.jpg', n: 'Elia'),
  StatusModel(iP: 'images/f.jpg', n: 'Uncle John'),
  StatusModel(iP: 'images/g.jpg', n: 'Jasmine'),
  StatusModel(iP: 'images/i.jpg', n: 'Noah')
];
