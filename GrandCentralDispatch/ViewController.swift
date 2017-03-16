//
//  ViewController.swift
//  GrandCentralDispatch
//
//  Created by Andrew Seeley on 15/3/17.
//  Copyright © 2017 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

     var tableImages: [String] = ["http://i.imgur.com/AD3MbBi.jpg",
                                  "http://i.imgur.com/zYhkOrM.jpg",
                                  "http://i.imgur.com/mtbl1cr.jpg",
                                  "http://i.imgur.com/L9ZftiD.jpg",
                                  "http://i.imgur.com/xW2K0rt.jpg",
                                  "http://i.imgur.com/xjaMIKB.png",
                                  "http://i.imgur.com/Jvh1OQm.jpg",
                                  "http://i.imgur.com/JOKsNeT.jpg",
                                  "http://i.imgur.com/EavudiD.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: ImageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ImageCollectionViewCell
        cell.myImage.image = #imageLiteral(resourceName: "loadingdots")
        
        let url = URL(string: tableImages[indexPath.row])
        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        cell.myImage.image = UIImage(data: data!)
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell \(indexPath.row) selected")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

