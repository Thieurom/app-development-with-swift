//
//  URL+Helpers.swift
//  iTunesSearch
//
//  Created by Doan Le Thieu on 4/4/18.
//  Copyright © 2018 Caleb Hicks. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}
