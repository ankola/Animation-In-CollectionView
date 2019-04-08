//
//  MyCell.swift
//  Gemini Demo
//
//  Start building your own apps today. Get my 7 day app action plan here:
//  https://codewithchris.com/actionplan/
//
//  Photos used: rawpixel.com, PixaSquare, Naveen Annam, Murilo Folgosi and Chloe Kala from Pexels 

import UIKit
import Gemini

class MyCell: GeminiCell {
    
    @IBOutlet weak private var mainImageView: UIImageView!
    
    func setCell(imageName:String) {
        
        mainImageView.image = UIImage(named: imageName)
    }
    
}
