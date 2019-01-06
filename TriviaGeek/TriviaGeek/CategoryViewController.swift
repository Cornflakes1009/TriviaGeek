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
            submitBtnLabel.isHidden = false
        } else {
            submitBtnLabel.isHidden = true
        }
    }
   
    @IBOutlet weak var harryPotterCategoryLabel: UIButton!
    @IBOutlet weak var gameOfThronesCategoryLabel: UIButton!
    @IBOutlet weak var starWarsCategoryLabel: UIButton!
    @IBOutlet weak var comicBookMoviesCategoryLabel: UIButton!
    
    @IBOutlet weak var submitBtnLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitBtnLabel.isHidden = true
        
        // styling Harry Potter button
        harryPotterCategoryLabel.titleEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 0)
        setBorder(on: harryPotterCategoryLabel)

        // styling Star Wars button
        setBorder(on: starWarsCategoryLabel)
        starWarsCategoryLabel.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 7, 0)
        
        // styling Comic Book Movies button
        comicBookMoviesCategoryLabel.titleEdgeInsets = UIEdgeInsetsMake(5, 0, 0, 0)
        
        //////// disabling buttons until I get more JSON
        comicBookMoviesCategoryLabel.isEnabled = true
        gameOfThronesCategoryLabel.isEnabled = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func harryPotterBtnClicked(_ sender: Any) {
        
        if(harryPotterSelected == true) {
            harryPotterSelected = false
            harryPotterCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            numberOfCategories -= 1
            harryPotterCategoryLabel.setTitleColor(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1), for: .normal)
            setBorder(on: harryPotterCategoryLabel)
        } else{
            harryPotterSelected = true
            numberOfCategories += 1
            setBtnCheckedProperties(on: harryPotterCategoryLabel)
            removeBorder(on: harryPotterCategoryLabel)
        }
        checkNumberOfCategories()
    }
    
    @IBAction func gameOfThronesBtnClicked(_ sender: Any) {
        if(gameOfThronesSelected == true) {
            gameOfThronesSelected = false
            gameOfThronesCategoryLabel.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1) // hex 246590
            gameOfThronesCategoryLabel.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)

            numberOfCategories -= 1
        } else{
            gameOfThronesSelected = true
            setBtnCheckedProperties(on: gameOfThronesCategoryLabel)
            numberOfCategories += 1
        }
        checkNumberOfCategories()
    }
    
    @IBAction func starWarsBtnClicked(_ sender: Any) {
        if(starWarsSelected == true) {
            starWarsSelected = false
            starWarsCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            starWarsCategoryLabel.setTitleColor(#colorLiteral(red: 0, green: 0.5882352941, blue: 1, alpha: 1), for: .normal) // hex 0096FF
            numberOfCategories -= 1
            setBorder(on: starWarsCategoryLabel)
        } else{
            starWarsSelected = true
            setBtnCheckedProperties(on: starWarsCategoryLabel)
            numberOfCategories += 1
            removeBorder(on: starWarsCategoryLabel)
        }
        checkNumberOfCategories()
    }
    
    @IBAction func comicBookMoviesBtnClicked(_ sender: Any) {
        if(comicBookMoviesSelected == true) {
            comicBookMoviesSelected = false
            comicBookMoviesCategoryLabel.backgroundColor = #colorLiteral(red: 0.9725490196, green: 0.1607843137, blue: 0.03921568627, alpha: 1) // hex F8290A
            comicBookMoviesCategoryLabel.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            numberOfCategories -= 1
        } else{
            comicBookMoviesSelected = true
            setBtnCheckedProperties(on: comicBookMoviesCategoryLabel)
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
    
    
    // sets text and background color when a button is checked
    func setBtnCheckedProperties(on button: UIButton) {
        button.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.2039215686, blue: 0.2705882353, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), for: .normal)
    }
    
    // sets the border of the button - done for toggling if the button has been selected
    func setBorder(on button: UIButton) {
        if(button.currentTitle == "Harry Potter") {
            button.layer.borderWidth = 1.0
            button.layer.borderColor = UIColor.yellow.cgColor
        } else if(button.currentTitle == "Star Wars") {
            button.layer.borderWidth = 2.0
            button.layer.borderColor = UIColor.blue.cgColor
        }
        
    }
    // removes the borders - done for toggling if button has been selected
    func removeBorder(on button: UIButton) {
        button.layer.borderColor = nil
        button.layer.borderColor = nil
    }
    
}
