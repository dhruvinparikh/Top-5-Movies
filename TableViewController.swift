//
//  TableViewController.swift
//  Top 5 Movies
//
//  Created by Parikh Dhruvin S. on 4/11/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import UIKit
//Array of movies
var movies = [Movie(title:"The Shawshank Redemption", releaseYear: 1994, directedBy: "Frank Darabont", runtime: 142, imageAddress: "m1.jpg"),
Movie(title:"The GodFather", releaseYear: 1972, directedBy: "Francis Ford Coppola", runtime: 175, imageAddress: "m2.jpg"),
Movie(title:"The Godfather: Part: II", releaseYear: 1974, directedBy: "Francis Ford Coppola", runtime: 202, imageAddress: "m3.jpg"),
Movie(title:"The Dark Knight", releaseYear: 2008, directedBy: "Christopher Nolan", runtime: 192, imageAddress: "m4.jpg")]

//Index Counter
var myIndex=0
class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning size of array
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    //Method for adding stuff in cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell" , for : indexPath) as! TableViewCell
        let movie = movies[indexPath.row]
        cell.title?.text = movie.title
        cell.releaseYear?.text = String(movie.releaseYear)
        cell.imageImg?.image = UIImage(named: movie.imageAddress)

        return cell
    }
 
    //Method to select a cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Setting myIndex to row number
        myIndex = indexPath.row
        //Performing segue
        performSegue(withIdentifier: "segue", sender: self)
    }
}
