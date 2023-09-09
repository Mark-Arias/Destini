//
//  ViewController.swift
//  Destini-iOS13
//
// Mark Arias
// 9.7.23

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // story start is set at index 0 story point
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        print((sender.titleLabel?.text)!)
        storyBrain.nextStory(userChoice: (sender.titleLabel?.text)!)
        updateUI()
    }
    
    func updateUI() {
        let currentStoryPosition = storyBrain.storyNumber
        storyLabel.text = storyBrain.stories[currentStoryPosition].title
        choice1Button.setTitle(storyBrain.stories[currentStoryPosition].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[currentStoryPosition].choice2, for: .normal)
    }
    


}

