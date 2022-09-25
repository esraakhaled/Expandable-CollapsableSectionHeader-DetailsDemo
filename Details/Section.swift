//
//  Section.swift
//  Details
//
//  Created by Esraa Khaled   on 09/08/2022.
//

import Foundation

struct Section{
    var genre: String!
    var movies: [String]!
    var expanded: Bool!
   
    init(genre: String,movies: [String],expanded: Bool){
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
    }
}
