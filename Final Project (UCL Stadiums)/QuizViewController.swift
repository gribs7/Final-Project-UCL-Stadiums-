
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
    
    
    let Qs: [String] = [
        "Who is the only player to have won silverware \n at both Manchester United and Liverpool?",
        "Who is the only player to have scored in a \n Champions League final, FA Cup final, \n UEFA Cup final and League \n Cup final?",
        "Who is the only manager to have managed \n teams in all three UEFA club competition finals \n (Champions League, UEFA Cup and Cup \n Winners' Cup), without winning any \n of them?",
        "Who is the only player to win a Man of the \n Match award in a World Cup, Euros, and \n Champions League final?",
        "Who is the only player to win back-to-back \n trebles (domestic title, domestic cup and \n Champions League) in European club football?",
        "How many Premier League titles has \n Steven Gerrard won?",
        "Which club has the most Champions \n League titles with 10?",
        "Which of the following players has \n been involved in the north London, Tyne-Wear, \n Merseyside and Manchester derbies?",
        "Which player scored the first \n hat-trick in the Premier League?",
        "Who are the oldest current \n Premier League club?",
        "Who was the first team to \n win the UCL?",
        "Who holds the record for the \n most Champions League appearances?",
        "Who missed Chelsea’s penalty in \n the 2012 Champions League final?",
        "What nation has the clubs with \n most UCL wins?",
        "Who is the only player to have \n won the UCL with 3 different teams?",
        "Real Madrid beat city rivals Atletico \n in 2014, but who scored in the 93rd \n minute to force extra time?",
        "What was the matchup in the first \n single nation UCL final in 2000?",
        "Who has scored the fastest goal in \n Champions League history?",
        "Who was the youngest player to score \n a hat trick in the Champions League?",
        "Who was the youngest Englishman to \n score a hatrick in the UCL?",
        "Against what team did he score \n his hat trick?",
        "Against what team did Liverpool make \n an improbable Champions League Final \n comeback in 2005?",
        "What team has the most consecutive \n UCL appearances?",
        "Which team in the 2015-2016 was the \n  unlikely team to win the Premier \n League title?"
        
        ]
    
    
    
    
    let As: [String] = [
        "Michael Owen",
        "Steven Gerrard",
        "Arsene Wenger",
        "Andres Iniesta",
        "Samuel Eto'o",
        "zero lol",
        "Real Madrid",
        "Louis Saha",
        "Eric Cantona",
        "Stoke City",
        "Marseille",
        "Xavi",
        "Juan Mata",
        "Spain",
        "Clarence Seedorf",
        "Sergio Ramos",
        "Real Madrid vs Valencia",
        "Roy Makaay for Bayern Munich",
        "Raul",
        "Wayne Rooney",
        "Fenerbahce",
        "AC Milan",
        "Real Madrid",
        "Leicester City"
        
        ]
    
    
    
    
    var currentQIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QLabel.text = Qs[currentQIndex]
    }
}