//
//  ButtonQuestion.swift
//  MultiTypeCollectionViewCellExample
//
//  Created by aayaz Khan on 23/08/19.
//  Copyright © 2019 aayaz Khan. All rights reserved.
//

import UIKit

class ButtonQuestion: Question {
    var yesButton: String
    var noButton: String
    
    init(question: String, yesButton: String, noButton: String) {
        self.yesButton = yesButton
        self.noButton = noButton
        super.init(question: question)
    }
}
