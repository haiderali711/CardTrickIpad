//
//  SecondS.swift
//  CardTrick
//
//  Created by haider Ali on 2018-11-08.
//  Copyright © 2018 haider Ali. All rights reserved.
//

import UIKit

class SecondS: UIViewController {
    @IBOutlet weak var imgFinal: UIImageView!
    var numb : Int = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = "\(numb).png"
        print (name)
        let img = UIImage(named: name)!
        self.imgFinal.image = UIImage(named: name)
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
