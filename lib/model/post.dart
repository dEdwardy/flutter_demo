class Post {
  const Post(
      {this.id, this.title, this.author, this.imageUrl, this.description});
  Post.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        author = json['author'],
        imageUrl = json['imageUrl'];
  Map toJson() => {
        'id': id,
        'title': title,
        'author': author,
        'imageUrl': imageUrl,
        'descritpion': description,
      };
  final int id;
  final String title;
  final String author;
  final String imageUrl;
  final String description;
}

final List<Post> posts = [
  Post(
      id: 1,
      title: 'AAA',
      author: 'AAAA',
      imageUrl:
          'http://image.biaobaiju.com/uploads/20181223/21/1545570640-CtVFKQTvdI.jpg',
      description:
          'The book comprises an English description of environmental law in Germany and a bilingual compilation of the most important environmental statute texts.'),
  Post(
      id: 2,
      title: 'BBB',
      author: 'BBBB',
      imageUrl:
          'http://b-ssl.duitang.com/uploads/blog/201404/25/20140425131629_zmN2P.thumb.700_0.jpeg',
      description:
          'For the contract equipment that requires special storage, the Seller shall present English description in six copies stating special precautions in inland transportation and storage.'),
  Post(
      id: 3,
      title: 'CCC',
      author: 'CCCC',
      imageUrl:
          'http://b-ssl.duitang.com/uploads/item/201609/04/20160904111916_CZHfn.thumb.700_0.jpeg',
      description:
          'Limitations of Traditional Grammar in English Language Description.'),
  Post(
      id: 4,
      title: 'DDD',
      author: 'DDDD',
      imageUrl:
          'http://img3.duitang.com/uploads/item/201601/03/20160103150641_s2trC.jpeg',
      description:
          'Job Title: Sales Advisor ( English) Job Description: 1.Explain the special online service system and the setup process for the new customers.'),
  Post(
      id: 5,
      title: 'EEE',
      author: 'EEEE',
      imageUrl:
          'http://b-ssl.duitang.com/uploads/blog/201404/25/20140425131629_zmN2P.thumb.700_0.jpeg',
      description:
          'Job Title: Sales Advisor ( English) Job Description: 1.Explain the special online service system and the setup process for the new customers.'),
  Post(
      id: 6,
      title: 'FFF',
      author: 'FFFF',
      imageUrl:
          'http://b-ssl.duitang.com/uploads/item/201609/04/20160904111916_CZHfn.thumb.700_0.jpeg',
      description:
          'The comparative study is carried out in the framework of curriculum standards.'),
  Post(
      id: 7,
      title: 'GGG',
      author: 'GGGG',
      imageUrl:
          'http://img3.duitang.com/uploads/item/201601/03/20160103150641_s2trC.jpeg',
      description:
          'English competence level standards including the definition of English competence, description of cognitive objectives of English learners and the guiding principle behind the level standards, and curriculum rationale.'),
  Post(
      id: 8,
      title: 'HHH',
      author: 'HHHH',
      imageUrl:
          'http://img3.duitang.com/uploads/item/201601/03/20160103150641_s2trC.jpeg',
      description:
          'Short summary When Azlan is holidaying with his friends in Langkawi, he meets and falls for a beautiful girl named Suri. Soon he begins to realise that Suri isn’t human but a ghost that inhabits the island.Short summary When Azlan is holidaying with his friends in Langkawi, he meets and falls for a beautiful girl named Suri. Soon he begins to realise that Suri isn’t human but a ghost that inhabits the island.Short summary When Azlan is holidaying with his friends in Langkawi, he meets and falls for a beautiful girl named Suri. Soon he begins to realise that Suri isn’t human but a ghost that inhabits the island.Short summary When Azlan is holidaying with his friends in Langkawi, he meets and falls for a beautiful girl named Suri. Soon he begins to realise that Suri isn’t human but a ghost that inhabits the island.Short summary When Azlan is holidaying with his friends in Langkawi, he meets and falls for a beautiful girl named Suri. Soon he begins to realise that Suri isn’t human but a ghost that inhabits the island.'),
];
