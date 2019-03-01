//
//  PhotoDetailsViewController.swift
//  TumblrLab
//
//  Created by Ashik Chowdhury on 2/27/19.
//  Copyright © 2019 AshikChowdhury. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var detailPhotoView: UIImageView!
    
    var photo: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
            let altSizes = photo["photos"] as! [[String:Any]]
            let alt1 = altSizes[0]
            let firstSize = alt1["original_size"] as! [String:Any]
            let urlString = firstSize["url"] as! String
            let url = URL(string: urlString)
            detailPhotoView.af_setImage(withURL: url!)
        
//        print(photo)
//        let url = URL(string: photo)
//        detailPhotoView.af_setImage(withURL: url!)
//
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
