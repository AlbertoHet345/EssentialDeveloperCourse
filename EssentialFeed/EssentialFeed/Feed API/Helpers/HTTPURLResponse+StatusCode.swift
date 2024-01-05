//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 28/12/23.
//

import Foundation

extension HTTPURLResponse {
    private static var ok200: Int {
        200
    }
    
    var isOK: Bool {
        statusCode == HTTPURLResponse.ok200
    }
}
