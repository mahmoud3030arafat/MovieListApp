

import Foundation



struct Movie:Codable {
     let userId : Int?
       let id : Int?
       let title : String?
       let body : String?

       enum CodingKeys: String, CodingKey {

           case userId = "userId"
           case id = "id"
           case title = "title"
           case body = "body"
       }

       init(from decoder: Decoder) throws {
           let values = try decoder.container(keyedBy: CodingKeys.self)
           userId = try values.decodeIfPresent(Int.self, forKey: .userId)
           id = try values.decodeIfPresent(Int.self, forKey: .id)
           title = try values.decodeIfPresent(String.self, forKey: .title)
           body = try values.decodeIfPresent(String.self, forKey: .body)
       }
    
    
    //struct Movie:Codable {
    //    var  status : String?
    //    var totalResults:Int?
    //    var articles : [articles]
    //    private enum CodingKeys:String,CodingKey{
    //
    //        case status = "status"
    //        case totalResults = "totalResults"
    //        case articles = "articles"
    //
    //
    //
    //    }
    //}
    //
    //
    //
    //struct articles:Codable {
    //    var  source : source
    //    var  author : String?
    //    var  title : String?
    //    var  description : String?
    //    var  url : String?
    //     var  urlToImage: String?
    //    var  publishedAt : String?
    //    var  content : String?
    //    private enum CodingKeys:String,CodingKey{
    //
    //        case source = "source"
    //        case author = "author"
    //        case title = "title"
    //        case description = "description"
    //        case url = "url"
    //        case urlToImage  = "urlToImage"
    //        case publishedAt = "publishedAt"
    //        case content = "content"
    //
    //
    //    }
    //
    //}
    //
    //struct source: Codable {
    //    var name : String?
    //    var id : String?
    //    private enum CodingKeys:String,CodingKey{
    //        case name = "name"
    //        case id = "id"
    //    }
    //}


    
    

}
