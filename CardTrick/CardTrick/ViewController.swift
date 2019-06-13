//
//  ViewController.swift
//  CardTrick
//
//  Created by haider Ali on 2018-11-03.
//  Copyright © 2018 haider Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startB: UIButton!
    var cardsImages :[UIImage]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //when the button is pushed
    @IBAction func startB(_ sender: Any) {
        //an array of random number is generated
        //let myArray = generateRandomNumbers()

        //cardsImages = generateImageArray(randomGen: myArray)
    }
    
    @IBAction func back(segue : UIStoryboardSegue){
        
    }
    
    
    
    
    
    
    
    
    
    
    /*
    func generateImageArray (randomGen : [Int])-> [UIImage]{
        var cardsImg :[UIImage] = []
        
        for imgCount in randomGen
        {
            let name = "\(imgCount).png"            /*taking the number from the array one by one to make the name of the image to add*/
            let img = UIImage(named: name)!       /*making a variable of type image*/
            cardsImg.append(img)                /* addding the variable image in to the array of  images*/
        }
        return cardsImg
    }
    
    
    
    //function to make the first random 21 numbers between 1-52 which are the number of all the cards in the folder
    func generateRandomNumbers () -> [Int]{
        let quantity = 21               //how long the array is gonna be

        var myArray = [Int]()           // the array which is going to be returned
        let low = UInt32(1)             // generate the numbers from this number
        let high = UInt32(53)           // generate the numbers to this number
        
        while myArray.count != quantity
        {
            let randNum = arc4random_uniform(high - low) + low
            
            if !myArray.contains(Int(randNum))
            {
                myArray.append(Int(randNum))
            }
        }
        return myArray
    }*/
    
}

