//
//  Person.swift
//  HWS_Project10
//
//  Created by J on 2021/03/24.
//

import UIKit

//nameとimageのデータ保持するカスタムクラス
class Person: NSObject,NSCoding  {
   
    var name: String
    var image: String
    
    init(name: String, image: String){
        self.name = name
        self.image = image
        
    }
    
  
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        image =  aDecoder.decodeObject(forKey: "image") as? String ?? ""
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(image, forKey: "image")
    }
   
}
