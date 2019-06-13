//
//  FirstScreen.swift
//  CardTrick
//
//  Created by haider Ali on 2018-11-03.
//  Copyright © 2018 haider Ali. All rights reserved.
//

import UIKit

class FirstScreen: UIViewController {
    
    @IBOutlet weak var stepLbl: UILabel!
    @IBOutlet weak var upperLbl: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img10: UIImageView!
    @IBOutlet weak var img11: UIImageView!
    @IBOutlet weak var img12: UIImageView!
    @IBOutlet weak var img13: UIImageView!
    @IBOutlet weak var img14: UIImageView!
    
    @IBOutlet weak var img15: UIImageView!
    @IBOutlet weak var img16: UIImageView!
    @IBOutlet weak var img17: UIImageView!
    @IBOutlet weak var img18: UIImageView!
    @IBOutlet weak var img19: UIImageView!
    @IBOutlet weak var img20: UIImageView!
    @IBOutlet weak var img21: UIImageView!
    
    
    var myArray: [Int] = []
    var step = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //arrayImages = mainC.cardsImages
        myArray = generateRandomNumbers()
        addPicstoImgViewer(randomGen: myArray)
        self.stepLbl.text = "Step \(step+1)"
    }
    
    
    func addPicstoImgViewer(randomGen : [Int]){
        var tempArray: [Int] = []

        print("-----------------------")
        print(myArray)
        print("-----------------------")
        
        if step < 3 {
            var name = "\(randomGen[0]).png"            /*taking the number from the array one by one to make the name of the image to add*/
            print (name)
            var img = UIImage(named: name)!       /*making a variable of type image*/
            self.img1.image = UIImage(named: name)
            
            name = "\(randomGen[1]).png"
            print (name)
            img = UIImage(named: name)!
            self.img8.image = UIImage(named: name)
            
            name = "\(randomGen[2]).png"
            print (name)
            img = UIImage(named: name)!
            self.img15.image = UIImage(named: name)
            
            name = "\(randomGen[3]).png"
            print (name)
            img = UIImage(named: name)!
            self.img2.image = UIImage(named: name)
            
            name = "\(randomGen[4]).png"
            print (name)
            img = UIImage(named: name)!
            self.img9.image = UIImage(named: name)
            
            name = "\(randomGen[5]).png"
            print (name)
            img = UIImage(named: name)!
            self.img16.image = UIImage(named: name)
            
            name = "\(randomGen[6]).png"
            print (name)
            img = UIImage(named: name)!
            self.img3.image = UIImage(named: name)
            
            name = "\(randomGen[7]).png"
            print (name)
            img = UIImage(named: name)!
            self.img10.image = UIImage(named: name)
            
            name = "\(randomGen[8]).png"
            print (name)
            img = UIImage(named: name)!
            self.img17.image = UIImage(named: name)
            
            name = "\(randomGen[9]).png"
            print (name)
            img = UIImage(named: name)!
            self.img4.image = UIImage(named: name)
            
            name = "\(randomGen[10]).png"
            print (name)
            img = UIImage(named: name)!
            self.img11.image = UIImage(named: name)
            
            name = "\(randomGen[11]).png"
            print (name)
            img = UIImage(named: name)!
            self.img18.image = UIImage(named: name)
            
            name = "\(randomGen[12]).png"
            print (name)
            img = UIImage(named: name)!
            self.img5.image = UIImage(named: name)
            
            name = "\(randomGen[13]).png"
            print (name)
            img = UIImage(named: name)!
            self.img12.image = UIImage(named: name)
            
            name = "\(randomGen[14]).png"
            print (name)
            img = UIImage(named: name)!
            self.img19.image = UIImage(named: name)
            
            name = "\(randomGen[15]).png"
            print (name)
            img = UIImage(named: name)!
            self.img6.image = UIImage(named: name)

            name = "\(randomGen[16]).png"
            print (name)
            img = UIImage(named: name)!
            self.img13.image = UIImage(named: name)
            
            name = "\(randomGen[17]).png"
            print (name)
            img = UIImage(named: name)!
            self.img20.image = UIImage(named: name)
            
            name = "\(randomGen[18]).png"
            print (name)
            img = UIImage(named: name)!
            self.img7.image = UIImage(named: name)
            
            name = "\(randomGen[19]).png"
            print (name)
            img = UIImage(named: name)!
            self.img14.image = UIImage(named: name)
            
            name = "\(randomGen[20]).png"
            print (name)
            img = UIImage(named: name)!
            self.img21.image = UIImage(named: name)
        }
        
        tempArray.append(myArray[0])
        tempArray.append(myArray[3])
        tempArray.append(myArray[6])
        tempArray.append(myArray[9])
        tempArray.append(myArray[12])
        tempArray.append(myArray[15])
        tempArray.append(myArray[18])
        tempArray.append(myArray[1])
        tempArray.append(myArray[4])
        tempArray.append(myArray[7])
        tempArray.append(myArray[10])
        tempArray.append(myArray[13])
        tempArray.append(myArray[16])
        tempArray.append(myArray[19])
        tempArray.append(myArray[2])
        tempArray.append(myArray[5])
        tempArray.append(myArray[8])
        tempArray.append(myArray[11])
        tempArray.append(myArray[14])
        tempArray.append(myArray[17])
        tempArray.append(myArray[20])
        
        myArray = tempArray
        print("-----------------------")
        print(myArray)
        print("-----------------------")
        
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
    }
    
    //-----------------------------------------------
    
    
    
    //function called by all the three buttons to increase the reusability as the the behaviour is similar for all the buttons
    func buttonFunction (col : Int){
        step += 1
        self.stepLbl.text = "Step \(step+1)"
        myArray = updateArray(column: col)
        addPicstoImgViewer(randomGen: myArray)
        
        deactivateButt(stepC: step)                //deactivate the buttons if its in final step
    }
    
    //---------------------------------------------
    @IBAction func button1(_ sender: Any) {
        buttonFunction(col: 1)
    }
    @IBAction func button2(_ sender: Any) {
        buttonFunction(col: 2)
    }
    @IBAction func button3(_ sender: Any) {
        buttonFunction(col: 3)

    }
    //-----------------------------------------------
    //function for updating the array withthe new column input
    func updateArray (column : Int)->[Int] {
        var arr1 : [Int] = []
        
        if column == 1 {
        
            for x in 7...13{
                arr1.append(myArray[x])
            }
            for x in 0...6{
                arr1.append(myArray[x])
            }
            for x in 14...20{
                arr1.append(myArray[x])
            }
        }
        
        if column == 2 {
            
            for x in 0...6{
                arr1.append(myArray[x])
            }
            for x in 7...13{
                arr1.append(myArray[x])
            }
            for x in 14...20{
                arr1.append(myArray[x])
            }
        }
        
        if column == 3 {
            
            for x in 0...6{
                arr1.append(myArray[x])
            }
            for x in 14...20{
                arr1.append(myArray[x])
            }
            for x in 7...13{
                arr1.append(myArray[x])
            }
        }
        
        return arr1
    }
    //------------------------------------------
    
    
    func deactivateButt (stepC : Int){
        if stepC == 1 {
            self.upperLbl.text = "We repeat the same process two more times"
        }
        if stepC == 2 {
            self.upperLbl.text = "For the last time"
        }
        if stepC == 3 {
            self.stepLbl.text = ""
            self.upperLbl.text = "DONE! Now go to the next page"
            
            button1.isUserInteractionEnabled = false
            button2.isUserInteractionEnabled = false
            button3.isUserInteractionEnabled = false
            
            self.performSegue(withIdentifier: "secondID", sender: self)
        }
    }
    
    func giveLastImage()->Int{
        return myArray[10]
    }
    
    
    //segue information for next viewcontroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as! SecondS
        
        next.numb = myArray[10]
        
    }
    
    
    //UIImageView turn
    /*
    override func transition(from fromViewController: , to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil) {
        <#code#>
    }
    */
    
    
}


