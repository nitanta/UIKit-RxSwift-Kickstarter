//
//  APIResponbse.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/12/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation

struct APIResponbse: Codable {
    
    let Search: [Movie]?
    let totalResults: String?
    let Response: String?
    
    private enum CodingKeys: String, CodingKey {
        case Search = "Search"
        case totalResults = "totalResults"
        case Response = "Response"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        Search = try values.decodeIfPresent([Movie].self, forKey: .Search)
        totalResults = try values.decodeIfPresent(String.self, forKey: .totalResults)
        Response = try values.decodeIfPresent(String.self, forKey: .Response)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(Search, forKey: .Search)
        try container.encodeIfPresent(totalResults, forKey: .totalResults)
        try container.encodeIfPresent(Response, forKey: .Response)
    }
    
}
