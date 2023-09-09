//
//  ViewController.swift
//  Destini-iOS13
//
// Mark Arias
// 9.7.23

import UIKit

class ViewController: UIViewController {
    
    var userStoryPosition = 0  // user starts a story point 0, the beggining.
    
    let stories = [
        Story(title: "You see a fork in the road.",
                           choice1: "Take a left.",
                           choice2: "Take a right."
        ),
        Story(title: "You see a tiger.",
                           choice1: "Shout for help.",
                           choice2: "Play dead."
        ),
        Story(title: "You find a treasure chest.",
                           choice1: "Open it.",
                           choice2: "Check for traps."
        )
    ]

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choice1Button.tag = 1
        choice2Button.tag = 2
        
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.tag == 1 {    // user chose left choice
            userStoryPosition = 1
            updateUI(for: userStoryPosition)
        } else if sender.tag == 2 {     // user chose right choice
            userStoryPosition = 2
            updateUI(for: userStoryPosition)
        }
    }
    
    func updateUI(for userLocation: Int) {
        storyLabel.text = stories[userLocation].title
        choice1Button.setTitle(stories[userLocation].choice1, for: .normal)
        choice2Button.setTitle(stories[userLocation].choice2, for: .normal)
    }
    


}

