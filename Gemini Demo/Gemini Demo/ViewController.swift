//
//  ViewController.swift
//  Gemini Demo
//
//  Start building your own apps today. Get my 7 day app action plan here:
//  https://codewithchris.com/actionplan/
//
//  Photos used: rawpixel.com, PixaSquare, Naveen Annam, Murilo Folgosi and Chloe Kala from Pexels 

import UIKit
import Gemini

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    let photos = ["1", "2", "3", "4", "5"]

    @IBOutlet weak var collectionView: GeminiCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Configure the animation
//        collectionView.gemini
//            .cubeAnimation()
//            .cubeDegree(350)
        
//        collectionView.gemini
//            .circleRotationAnimation()
//            .radius(400)
//            .rotateDirection(.clockwise)
        
        collectionView.gemini
            .rollRotationAnimation()
            .degree(180)
            .rollEffect(.reverseSineWave)
        
//        collectionView.gemini
//            .scaleAnimation()
//            .scale(0.200)
//            .scaleEffect(.scaleUp) // or .scaleDown
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gemCell", for: indexPath) as! MyCell
        
        cell.setCell(imageName: photos[indexPath.row])
        
        // Animate
        self.collectionView.animateCell(cell)
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // Animate
        self.collectionView.animateVisibleCells()
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        // Animate
        if let cell = cell as? MyCell {
            self.collectionView.animateCell(cell)
        }
        
    }

}

