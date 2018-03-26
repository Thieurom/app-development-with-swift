
import Foundation

class Book: NSObject, NSCoding {
    
    struct PropertyKeys {
        static let title = "title"
        static let author = "author"
        static let genre = "genre"
        static let length = "length"
    }
    
    let title: String
    let author: String
    let genre: String
    let length: String
    
    override var description: String {
        return "\(title) is written by \(author) in the \(genre) genre and is \(length) pages long"
    }
    
    init(title: String, author: String, genre: String, length: String) {
        self.title = title
        self.author = author
        self.genre = genre
        self.length = length
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let title = aDecoder.decodeObject(forKey: PropertyKeys.title) as? String,
            let author = aDecoder.decodeObject(forKey: PropertyKeys.author) as? String,
            let genre = aDecoder.decodeObject(forKey: PropertyKeys.genre) as? String,
            let length = aDecoder.decodeObject(forKey: PropertyKeys.length) as? String else {return nil}
        
        self.init(title: title, author: author, genre: genre, length: length)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(title, forKey: PropertyKeys.title)
        aCoder.encode(author, forKey: PropertyKeys.author)
        aCoder.encode(genre, forKey: PropertyKeys.genre)
        aCoder.encode(length, forKey: PropertyKeys.length)
    }
    
}
