// iTunes Search - Part 1

import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}


let baseURL = URL(string: "https://itunes.apple.com/search")!

let query = [
    "term": "steve jobs",
    "media": "ebook",
    "limit": "20"
]

let url = baseURL.withQueries(query)!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data,
        let result = String(data: data, encoding: .utf8) {
        print(result)
        
        PlaygroundPage.current.finishExecution()
    }
}

task.resume()
