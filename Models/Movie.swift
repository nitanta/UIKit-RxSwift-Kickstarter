//
//  Movie.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let Poster: String?
    let Title: String?
    let TypeField: String?
    let Year: String?
    let imdbID: String?
    
    private enum CodingKeys: String, CodingKey {
        case Poster = "Poster"
        case Title = "Title"
        case TypeField = "Type"
        case Year = "Year"
        case imdbID = "imdbID"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        Poster = try values.decodeIfPresent(String.self, forKey: .Poster)
        Title = try values.decodeIfPresent(String.self, forKey: .Title)
        TypeField = try values.decodeIfPresent(String.self, forKey: .TypeField)
        Year = try values.decodeIfPresent(String.self, forKey: .Year)
        imdbID = try values.decodeIfPresent(String.self, forKey: .imdbID)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(Poster, forKey: .Poster)
        try container.encodeIfPresent(Title, forKey: .Title)
        try container.encodeIfPresent(TypeField, forKey: .TypeField)
        try container.encodeIfPresent(Year, forKey: .Year)
        try container.encodeIfPresent(imdbID, forKey: .imdbID)
    }
    
}
