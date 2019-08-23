//
//  ViewController.swift
//  MultiTypeCollectionViewCellExample
//
//  Created by aayaz Khan on 23/08/19.
//  Copyright © 2019 aayaz Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var questions = [Question]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questions.append(ButtonQuestion(question: "Question: 1", type: "button", yesButton: "Yes", noButton: "No"))
        questions.append(TextQuestion(question: "Question: 2", type: "text",textResponseHint: "remark 2"))
        questions.append(ButtonQuestion(question: "Question: 3", type: "button", yesButton: "Available", noButton: "Not Available"))
        questions.append(TextQuestion(question: "Question: 4", type: "text",textResponseHint: "remark 4"))
        questions.append(ButtonQuestion(question: "Question: 5", type: "button", yesButton: "Working", noButton: "Not Working"))
        questions.append(TextQuestion(question: "Question: 6", type: "text",textResponseHint: "remark 6"))

        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questions.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(questions[indexPath.row] is ButtonQuestion) {
            
            let btnQuestion = questions[indexPath.row] as! ButtonQuestion
            
            let cell:ButtonCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! ButtonCollectionViewCell
            
            cell.lblQuestion.text = btnQuestion.question
            cell.btnYes.setTitle(btnQuestion.yesButton, for: .normal)
            cell.btnNo.setTitle(btnQuestion.noButton, for: .normal)

            return cell
        } else if (questions[indexPath.row] is TextQuestion) {
            
            let textQuestion = questions[indexPath.row] as! TextQuestion
            
            let cell:TextCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TextCell", for: indexPath) as! TextCollectionViewCell
            
            cell.lblQuestion.text = textQuestion.question
            cell.textResponse.placeholder = textQuestion.textResponseHint
            
            return cell
        } else {
            
            let cell:ButtonCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! ButtonCollectionViewCell
            
            cell.lblQuestion.text = questions[indexPath.row].question
            
            return cell

        }
        
    }
    
}

