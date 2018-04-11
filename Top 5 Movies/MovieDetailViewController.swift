//
//  MovieDetailViewController.swift
//  Top 5 Movies
//
//  Created by Parikh Dhruvin S. on 4/11/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var releasingYearLabel: UILabel!
    @IBOutlet weak var directedByLabel: UILabel!
    @IBOutlet weak var runtimeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting values to label
        let movie = movies[myIndex]
        titleLabel.text = movie.title
        imageView.image = UIImage(named: movie.imageAddress)
        releasingYearLabel.text = String(movie.releaseYear)
        directedByLabel.text = "Directed by "+movie.directedBy
        runtimeLabel.text = String(movie.runtime) + " mins long"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
