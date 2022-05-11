class WpConfig {


  // YOUR WEBISTE URL
  static const String websiteUrl = "https://appservernet.com/ijawnation";
  static const String companyUrl = "https://o3interactive.ng";
  static const String companyContact = "https://o3interactive.ng/contact.html";


  //FEATURE TAG ID
  static const int featuredTagID = 21;

  //VIDEO TAG ID
  static const int videoTagId = 22;


  

  // Hometab 4 categories
  // -- 'Serial Number' : [Category Id, 'Category Name'] -- Length should be 4.
  static const Map selectedCategories = {
    '1': [14, "News Updates"],
    '2': [5, "Interviews"],
    '3': [6, "Discussions"],
    '4': [23, "The INC"],
/*    '5': [15, "The IYC"],
    '8': [18, "Politics"],
    '7': [13, "Opinion"],
    '6': [16, "The IWC"],*/
  };


  /*
  List of blocked categories. Do nothing if you don't want to block any categories.
  If you want to bloc any category and it's posts then enter values like these:

  Example: If you want to block category id 10 & 12, then it will be look like this:

    static const String blockedCategoryIds = "10,12";
    static const String blockedCategoryIdsforPopularPosts = "-10,-12";

  */

  static const String blockedCategoryIds = "1";
  static const String blockedCategoryIdsforPopularPosts = "";


  

  // FEATURE IMGAE -  IF YOUR POSTS DON"T HAVE A FEATURE IMAGE
  static const String randomPostFeatureImage = "https://innov8tiv.com/wp-content/uploads/2017/10/blank-screen-google-play-store-1280x720.png";

  // FEATURE CATEGORY IMGAE -  IF YOU HAVEN'T DEFINE A COVER IMAGE FOR A CATEGORY IN THE LIST BELOW
  static const String randomCategoryThumbnail = "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cmFuZG9tfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";


  // ENTER CATERGORY ID AND ITS COVERS IMAGE 
  static const Map categoryThumbnails = {
    // categoryID : 'category thumbnail url'
    6 : "https://appservernet.com/ijawnation/cat_images/Discussion.png",
    4 : "https://appservernet.com/ijawnation/cat_images/Editorial.png",
    5 : "https://appservernet.com/ijawnation/cat_images/Interview.png",
    14 : "https://appservernet.com/ijawnation/cat_images/News_Update.png",
    13 : "https://appservernet.com/ijawnation/cat_images/Opinion.png",
    19 : "https://appservernet.com/ijawnation/cat_images/Our_History.png",
    18 : "https://appservernet.com/ijawnation/cat_images/Politics.png",
    8 : "https://appservernet.com/ijawnation/cat_images/Publications.png",
    23 : "https://appservernet.com/ijawnation/cat_images/The_INC.png",
    16 : "https://appservernet.com/ijawnation/cat_images/The_IWC.png",
    15 : "https://appservernet.com/ijawnation/cat_images/The_IYC.png",
    10 : "https://appservernet.com/ijawnation/cat_images/Video.png",
  };
}