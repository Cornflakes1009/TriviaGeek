//
//  CategoryViewController.swift
//  TriviaGeek
//
//  Created by Harold on 10/29/18.
//  Copyright © 2018 harold. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

   
    @IBOutlet weak var harryPotterCategoryLabel: UIButton!
    @IBOutlet weak var gameOfThronesCategoryLabel: UIButton!
    @IBOutlet weak var starWarsCategoryLabel: UIButton!
    @IBOutlet weak var comicBookMoviesCategoryLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func harryPotterBtnClicked(_ sender: Any) {
        
        if(harryPotterCategoryLabel.backgroundColor == #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)) {
            harryPotterCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        } else{
            harryPotterCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        }
    }
    
    @IBAction func gameOfThronesBtnClicked(_ sender: Any) {
        if(gameOfThronesCategoryLabel.backgroundColor == #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)) {
            gameOfThronesCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        } else{
            gameOfThronesCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        }
    }
    
    @IBAction func starWarsBtnClicked(_ sender: Any) {
        if(starWarsCategoryLabel.backgroundColor == #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)) {
            starWarsCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        } else{
            starWarsCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        }
    }
    
    @IBAction func comicBookMoviesBtnClicked(_ sender: Any) {
        if(comicBookMoviesCategoryLabel.backgroundColor == #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)) {
            comicBookMoviesCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        } else{
            comicBookMoviesCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        }
    }
    
    
    
}
