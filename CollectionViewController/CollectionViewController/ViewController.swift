//
//  ViewController.swift
//  CollectionViewController
//
//  Created by Nguyen Quoc Dich on 5/17/20.
//  Copyright © 2020 Nguyen.Quoc.Dich. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mangTP.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.myLable.text = mangTP[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    @IBOutlet weak var myColection: UICollectionView!
    var mangTP:[String] = ["Ho Chi Minh","Ha Noi","Da Nang","Hue"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myColection.dataSource = self
        myColection.delegate = self
        // Do any additional setup after loading the view.
    }


}

