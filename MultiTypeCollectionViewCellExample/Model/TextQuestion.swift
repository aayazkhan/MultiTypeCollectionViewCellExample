//
//  TextQuestion.swift
//  MultiTypeCollectionViewCellExample
//
//  Created by aayaz Khan on 23/08/19.
//  Copyright © 2019 aayaz Khan. All rights reserved.
//

import UIKit

class TextQuestion: Question {
    var textResponseHint: String
    
    init(question: String, textResponseHint: String) {
        self.textResponseHint = textResponseHint
        super.init(question: question)
    }
}
