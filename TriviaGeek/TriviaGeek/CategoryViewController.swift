//
//  CategoryViewController.swift
//  TriviaGeek
//
//  Created by Harold on 10/29/18.
//  Copyright © 2018 harold. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    var harryPotterSelected = false
    var gameOfThronesSelected = false
    var starWarsSelected = false
    var comicBookMoviesSelected = false
    var numberOfCategories = 0
    
    func checkNumberOfCategories() {
        if(numberOfCategories > 0) {
            submitBtnLabel.isEnabled = true
            submitBtnLabel.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            submitBtnLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        } else {
            submitBtnLabel.isEnabled = false
            submitBtnLabel.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
            submitBtnLabel.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0.8821885851, alpha: 1)
        }
    }
   
    @IBOutlet weak var harryPotterCategoryLabel: UIButton!
    @IBOutlet weak var gameOfThronesCategoryLabel: UIButton!
    @IBOutlet weak var starWarsCategoryLabel: UIButton!
    @IBOutlet weak var comicBookMoviesCategoryLabel: UIButton!
    
    @IBOutlet weak var submitBtnLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitBtnLabel.isEnabled = false
        submitBtnLabel.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        submitBtnLabel.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0.8821885851, alpha: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func harryPotterBtnClicked(_ sender: Any) {
        
        if(harryPotterSelected == true) {
            harryPotterSelected = false
            harryPotterCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            numberOfCategories -= 1
        } else{
            harryPotterCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
            harryPotterSelected = true
            numberOfCategories += 1
        }
        checkNumberOfCategories()
    }
    
    @IBAction func gameOfThronesBtnClicked(_ sender: Any) {
        if(gameOfThronesSelected == true) {
            gameOfThronesSelected = false
            gameOfThronesCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            numberOfCategories -= 1
        } else{
            gameOfThronesCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
            gameOfThronesSelected = true
            numberOfCategories += 1
        }
        checkNumberOfCategories()
    }
    
    @IBAction func starWarsBtnClicked(_ sender: Any) {
        if(starWarsSelected == true) {
            starWarsSelected = false
            starWarsCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            numberOfCategories -= 1
        } else{
            starWarsCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
            starWarsSelected = true
            numberOfCategories += 1
        }
        checkNumberOfCategories()
    }
    
    @IBAction func comicBookMoviesBtnClicked(_ sender: Any) {
        if(comicBookMoviesSelected == true) {
            comicBookMoviesSelected = false
            comicBookMoviesCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            numberOfCategories -= 1
        } else{
            comicBookMoviesCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
            comicBookMoviesSelected = true
            numberOfCategories += 1
        }
        checkNumberOfCategories()
    }
    
    @IBAction func submitBtnClicked(_ sender: Any) {
        if(harryPotterSelected == true) {
            // run get HP JSON func
            print("hp selected")
        }
        if(gameOfThronesSelected) {
            print("got selected")
        }
        if(starWarsSelected) {
            print("sw selected")
        }
        if(comicBookMoviesSelected) {
            print("comic book selected")
        }
    }
    
    
}
