//
//  ViewController.swift
//  Tapper
//
//  Created by Thomas on 10/22/15.
//  Copyright © 2015 Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    //Outlets

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var tapBtn:  UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func userTappedBackground(sender: AnyObject!) {
        
        self.view.endEditing(true)
    
    }
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps++
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
            
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
        
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTapsLbl()
            
        }
        }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    

    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            return true
        }else {
            return false
        }
    }
    
    }
    
    
    
    


