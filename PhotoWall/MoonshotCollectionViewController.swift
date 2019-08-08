//
//  MoonshotCollectionViewController.swift
//  PhotoWall
//
//  Created by MEI KU on 2019/8/8.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import UIKit
import AVFoundation

private let reuseIdentifier = "Cell"

class MoonshotCollectionViewController: UICollectionViewController {

    var looper: AVPlayerLooper?
    
    var alphabet : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     if let url = URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview71/v4/5c/03/ca/5c03ca47-d794-283f-166c-aca2a96c430a/mzaf_2626134187041556883.plus.aac.ep.m4a") {

            let player = AVQueuePlayer()
            
            let item = AVPlayerItem(url: url)
            
            looper = AVPlayerLooper(player: player, templateItem: item)
            
            player.play()
            
        }
        
        let width = (collectionView.bounds.width - 1 * 2) / 3
       
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        
        flowLayout?.itemSize = CGSize(width: width, height: width)
        
        flowLayout?.estimatedItemSize = .zero
        
      
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MoonshotCollectionViewCell.self)", for: indexPath) as! MoonshotCollectionViewCell
        
        if indexPath.item.isMultiple(of: 2) {
    
            cell.imageView.image = UIImage(named: "pic0")
            
        } else {
           
            cell.imageView.image = UIImage(named: "pic1")
        }
    
        return cell
        
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
