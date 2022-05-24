//
//  ViewController.swift
//  Animation
//
//  Created by Yavuz Güner on 24.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var situationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        //alphaAnimation()
        //scaleAnimation()
        //rotateAnimation()
        //translationAnimation()
        //delayAnimation()
        //curveLinearAnimation()
        //curveEaseInAnimation()
       //curveEaseOutAnimation()
        //repeatAnimation()
        //multipleAnimation()
        ardisikAnimation()
    }
    func alphaAnimation(){ //saydamlık animasyonu
        self.imageView.alpha = 0
        UIView.animate(withDuration: 5, animations: {
            self.imageView.alpha = 1
        }, completion: nil)
    }
    
    func scaleAnimation(){//Büyütüp küçültme animasyonu
        UIView.animate(withDuration: 1, animations: {
            self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
        }, completion: nil)
    }
    func rotateAnimation(){//Döndürme animasyonu
        UIView.animate(withDuration: 1, animations: {
            self.imageView.transform = CGAffineTransform(rotationAngle:  .pi)
            self.situationLabel.transform = CGAffineTransform(rotationAngle: .pi)
        }, completion: nil)
    }
    
    func translationAnimation(){ //Sağa sola kaydırma işlemi
        UIView.animate(withDuration: 1, animations: {
            self.imageView.transform = CGAffineTransform(translationX: 50, y: 0)
            self.situationLabel.transform = CGAffineTransform(translationX: 50, y: 0)
        }, completion: nil)
    }
    
    func delayAnimation(){
        UIView.animate(withDuration: 2, delay: 1,  animations: {
            self.imageView.transform = CGAffineTransform(translationX: 50, y: 50)
            self.situationLabel.transform = CGAffineTransform(translationX: 50, y: 50)
        }, completion: nil)
    }
    
    //İvmelenme Animasyonları. Optionslar burada işin içine giriyorlar.
    func curveLinearAnimation(){
        UIView.animate(withDuration: 2, delay: 0, options: [.curveLinear], animations: {
            self.imageView.transform = CGAffineTransform(translationX: 100, y: 100)
            self.situationLabel.transform = CGAffineTransform(translationX: -100, y: -100)
        }, completion: nil)
    }
    
    func curveEaseInAnimation(){
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
            self.imageView.transform = CGAffineTransform(translationX: 100, y: 100)
            self.situationLabel.transform = CGAffineTransform(translationX: -100, y: -100)
        }, completion: nil)
    }
    func curveEaseOutAnimation(){
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            self.imageView.transform = CGAffineTransform(translationX: 100, y: 100)
            self.situationLabel.transform = CGAffineTransform(translationX: -100, y: -100)
        }, completion: nil)
    }
    
    //Tekrar animasyonu
    func repeatAnimation(){
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat], animations: {
            self.imageView.transform = CGAffineTransform(translationX: 100, y: 100)
            self.situationLabel.transform = CGAffineTransform(translationX: -100, y: -100)
        }, completion: nil)
    }
    
    //Çoklu animasyon
    func multipleAnimation(){
        UIView.animate(withDuration: 2,  animations: {
            
            let move = CGAffineTransform(translationX: 0, y: 100)
            let beTiny = CGAffineTransform(scaleX: 0.7, y: 0.7)
            let turn = CGAffineTransform(rotationAngle: .pi/2)
            
            let x = move.concatenating(beTiny)
            let y = turn.concatenating(x)
            
            // self.situationLabel.transform = turn.concatenating(x)
            //y'yi iptal edince yapabilirdik.
            
            
            self.imageView.transform = y
            self.situationLabel.transform = y
            
            self.situationLabel.alpha = 0
        }, completion: nil)
    }
    
    func ardisikAnimation(){
        UIView.animate(withDuration: 2,  animations: {
            
            
            self.imageView.alpha = 0
        }, completion: { (true) in
            UIView.animate(withDuration: 2,  animations: {
                
                self.situationLabel.alpha = 0
            }, completion: { (true) in
                UIView.animate(withDuration: 2,  animations: {
                    
                    self.situationLabel.alpha = 1
                }, completion: { (true) in
                    UIView.animate(withDuration: 2,  animations: {
                        
                        self.imageView.alpha = 1
                    }, completion: nil)
                })
            })
        })
    }
    
    
    
    
}

