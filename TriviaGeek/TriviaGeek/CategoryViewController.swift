import UIKit
var categoryCount = 0

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
        
        
        //////// disabling buttons until I get more JSON
        comicBookMoviesCategoryLabel.isEnabled = false
        gameOfThronesCategoryLabel.isEnabled = false
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
            harryPotterSelected = true
            harryPotterCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
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
            gameOfThronesSelected = true
            gameOfThronesCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
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
            starWarsSelected = true
            starWarsCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
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
            comicBookMoviesSelected = true
            comicBookMoviesCategoryLabel.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
            numberOfCategories += 1
        }
        checkNumberOfCategories()
    }
    
    @IBAction func submitBtnClicked(_ sender: Any) {
        if(harryPotterSelected) {
            categoryCount += 1
            getJSON(jsonToRead: "harryPotterTriviaQuestions")
        }
        if(gameOfThronesSelected) {
            categoryCount += 1
            getJSON(jsonToRead: "gameOfThronesTriviaQuestions")
        }
        if(starWarsSelected) {
            categoryCount += 1
            getJSON(jsonToRead: "starWarsTriviaQuestions")
        }
        if(comicBookMoviesSelected) {
            categoryCount += 1
            getJSON(jsonToRead: "comicBookMovieTriviaQuestions")
        }
        
        getQuestionsFromConvertedJSON()
        performSegue(withIdentifier: "loadQuestionVC", sender: self)
    }
    
    
}
