//
//  ViewController.swift
//  Vu
//
//  Created by nabil maali on 16-04-14.
//  Copyright © 2016 Vu. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var ImageDisplay: UIImageView!

    @IBOutlet weak var Camera: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var kilom: UILabel!
  
    @IBAction func valueChanged(sender: AnyObject) {
        
        let currentValue = Int(slider.value)
        kilom.text = "\(currentValue)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }

    override func viewDidAppear(animated: Bool) {

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CameraAction(sender: AnyObject) {

    
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .Camera
        
        presentViewController(picker, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage; dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}



