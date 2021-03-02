//
//  PostData.swift
//  HackerNews
//
//  Created by Chithian on 16/2/21.
//

import UIKit


struct Results: Decodable {
    let hits: [News]

}


struct News: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}


// hits[0].title

//hits[0].url

//hits[0].points
