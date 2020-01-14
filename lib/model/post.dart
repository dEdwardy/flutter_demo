class Post {
  const Post({
    this.title,
    this.author,
    this.imgUrl
  });
  final String title;
  final String author;
  final String imgUrl;
}
final List<Post> posts = [
  Post(
    title:'AAA',
    author:'AAAA',
    imgUrl:'http://image.biaobaiju.com/uploads/20181223/21/1545570640-CtVFKQTvdI.jpg'
  ),
  Post(
    title:'BBB',
    author:'BBBB',
    imgUrl:'http://b-ssl.duitang.com/uploads/blog/201404/25/20140425131629_zmN2P.thumb.700_0.jpeg'
  ),
  Post(
    title:'CCC',
    author:'CCCC',
    imgUrl:'http://b-ssl.duitang.com/uploads/item/201609/04/20160904111916_CZHfn.thumb.700_0.jpeg'
  ),
  Post(
    title:'DDD',
    author:'DDDD',
    imgUrl:'http://img3.duitang.com/uploads/item/201601/03/20160103150641_s2trC.jpeg'
  )
];