//
//  Movie.swift
//  Top 5 Movies
//
//  Created by Parikh Dhruvin S. on 4/11/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation

class Movie{
    var title:String
    var releaseYear:Int
    var directedBy:String
    var runtime:Int
    var imageAddress:String
    
    //Constructor
    init(title:String,releaseYear:Int,directedBy:String,runtime:Int,imageAddress:String){
        self.title=title
        self.releaseYear=releaseYear
        self.directedBy=directedBy
        self.runtime=runtime
        self.imageAddress=imageAddress
    }
}
