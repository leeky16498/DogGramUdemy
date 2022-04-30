//
//  PostModel.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import Foundation
import SwiftUI

struct PostModel : Identifiable, Codable, Hashable {
    var id = UUID()
    var postID : String // postId for database
    var userID : String // userId for database
    var userName : String // Username of user in DB
    var caption : String?
    var dateCreated : Date
    var likeCount : Int
    var likedByUser : Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
