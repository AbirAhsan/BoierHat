class Showdata {
  String name;
  String imgUrl;
  String author;
  String url;
  String category;
  String description;

  Showdata({this.imgUrl, this.name, this.author, this.url, this.category, this.description});
}

List<Showdata> data = [
  Showdata(
      name: "Nobiji",
      author: "Humayun Ahmed",
      imgUrl: "assets/book_cover/Nobiji.png",
      url:
          "https://dl.bdebooks.com/Bangladeshi%20Writer/1.%20Humayun%20Ahmed/04%20Other/Nobiji%20By%20Humayun%20Ahmed%20(BDeBooks.Com).pdf",
      category: "Biography"),
  Showdata(
      name: "Mohapurush",
      author: "Humayun Ahmed",
      imgUrl: "assets/book_cover/Mohapurush.png",
      url:
          "https://dl.bdebooks.com/Bangladeshi%20Writer/1.%20Humayun%20Ahmed/04%20Other/Mohapurush%20by%20Humayun%20Ahmed%20(BDeBooks.Com).pdf",
      category: "Drama"),
  Showdata(
      name: "Deyal",
      author: "Humayun Ahmed",
      imgUrl: "assets/book_cover/Deyal.png",
      url:
          "https://dl.bdebooks.com/Bangladeshi%20Writer/1.%20Humayun%20Ahmed/04%20Other/Deyal%20by%20Humayun%20Ahmed%20%5BBDeBooks.Com%5D%20(BDeBooks.Com).pdf",
      category: "History"),
  Showdata(
      name: "Jochna O  Jononir Golpo",
      author: "Humayun Ahmed",
      imgUrl: "assets/book_cover/Jochna-O-Jononir-Golpo.png",
      url:
          "https://dl.bdebooks.com/Bangladeshi%20Writer/1.%20Humayun%20Ahmed/04%20Other/Jochna%20O%20Jononir%20Golpo%20By%20Humayun%20Ahmed%20(BDeBooks.Com).pdf",
      category: "Novels"),
  Showdata(
      name: "Ei Sob  Din Ratri",
      author: "Humayun Ahmed",
      imgUrl: "assets/book_cover/Ei Sob Din Ratri.png",
      url:
          "https://dl.bdebooks.com/Bangladeshi%20Writer/1.%20Humayun%20Ahmed/04%20Other/Ei%20Sob%20Din%20Ratri%20By%20Humayun%20Ahmed%20(BDeBooks.Com).pdf",
      category: "Novels"),
  Showdata(
      name: "Post Master",
      author: "Rabindranath Tagore",
      imgUrl: "assets/book_cover/Post Master.png",
      category: "Short Stories",
      url:
          "http://dl.bdebooks.com/Indian%20Writer/Rabindranath%20Tagore/Post%20Master%20By%20Rabindranath%20Tagore%20(BDeBooks.Com).pdf",
      description: "Post Master is a Bengali book which is written by Rabindranath Tagore. We found a pdf file ebook of Post Master. We are happy to share the Post Master pdf with everyone for free."
          )
];
