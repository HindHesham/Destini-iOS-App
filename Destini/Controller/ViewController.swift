

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //new instance from story brain
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    @IBAction func choiceMade(_ sender: UIButton!){
        
        let userChoice = sender.currentTitle
        storyBrain.nextStory(userChoice: userChoice!)
        updateUI()
//        let userChoice = sender.currentTitle!
//        print(userChoice)
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }


}

