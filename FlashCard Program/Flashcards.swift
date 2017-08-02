//
//  Flashcards.swift
//  FlashCard Program
//
//  Created by iD Student on 8/1/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import Foundation
//importing foundation

class Flashcards //flashcard class
{
    var questions : String //declearing a var. by the name of "questions", type: String
    var choices : [String] //declearing a var. by the name of "choices", type: array
    var rightAnswer : String //declearing a var. by the name of "rightAnswer, type: String
    
    init(questions : String, choices : [String]) //initialzation of Var "questions and Choices"
    {
        self.questions = questions //DOES NOT UNDESTAND :(
        self.choices = choices  //DOES NOT UNDESTAND :(
        self.rightAnswer = choices [0] //DOES NOT UNDESTAND :(
    }
   
}



class cardCollection //class cardcollection
{
    public static var instance : cardCollection = cardCollection() //KINNA UNDERSTAND :(
    public private (set) var cards : [Flashcards] //KINNA UNDERSTAND :(
    public private (set) var currentIndex : Int //KINNA UNDERSTAND :(
    public var currentCard : Flashcards //KINNA UNDERSTAND :(
    {
        get {return cards [currentIndex]}
    }
    
    private init ()
    {
        cards = [Flashcards(questions: "Who is the fourtyfifth president of the United States Of America?", choices:["Donald j Trump","Bohan Ma","Alexander Hamilton"]),
            Flashcards(questions: "What is the most resent IOS?", choices:["IOS 9", "IOS 10", "IOS 11"])
                ]
        currentIndex = 0
    }
    
    public func nextQuestion()
    {
        currentIndex += 1
        if currentIndex >= cards.count
        {
            currentIndex = 0
        }
    }
    
    public func checkQuestion (_ selectedAnswer : Int) -> Bool
    {
        return currentCard.choices[selectedAnswer] == currentCard.rightAnswer
    }
}
