//
//  NewsAPIResponse.swift
//  MSNews
//
//  Created by visionet on 11/07/23.
//

import Foundation

struct NewsAPIResponse: Decodable {
    
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
    
}

