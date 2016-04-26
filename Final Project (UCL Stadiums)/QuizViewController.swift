
import Foundation

import UIKit


class QuizViewController: UIViewController {
    
    @IBOutlet var QLabel: UILabel!
    @IBOutlet var ALabel: UILabel!
    
    
    @IBAction func showQ(sender: AnyObject) {
        ++currentQIndex
        if currentQIndex == Qs.count {
            currentQIndex = 0
        }
        let question: String = Qs[currentQIndex]
        QLabel.text = question
        ALabel.text = "???"
    }
    
    @IBAction func showA(sender: AnyObject) {
        let answer: String = As[currentQIndex]
        ALabel.text = answer
    }
    
    
    let Qs: [String] = ["Which team plays in Camp Nou?", "Which team plays in Estadio Da Luz?"]
    
    let As: [String] = ["Barcelona", "Benfica"]
    
    var currentQIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QLabel.text = Qs[currentQIndex]
    }
}