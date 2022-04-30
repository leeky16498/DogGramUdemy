//
//  MessageModel.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import Foundation
import SwiftUI

struct CommentModel : Identifiable, Hashable, Codable {
    
    var id = UUID()
    var commentID : String // id from the comment in the db
    var userID : String
    var username : String
    var content : String // actuan comment
    var dateCreated : Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

