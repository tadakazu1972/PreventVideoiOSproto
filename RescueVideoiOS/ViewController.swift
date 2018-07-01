//
//  ViewController.swift
//  RescueVideoiOS
//
//  Created by 中道 忠和 on 2017/10/09.
//  Copyright © 2017年 Tadakazu Nakamichi. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    let lblHeader = UILabel(frame: CGRect.zero)
    let btnOutlet = UIButton(frame: CGRect.zero)
    let lblOutlet = UILabel(frame: CGRect.zero)
    let btnStove  = UIButton(frame: CGRect.zero)
    let lblStove  = UILabel(frame: CGRect.zero)
    let btn3  = UIButton(frame: CGRect.zero)
    let lbl3  = UILabel(frame: CGRect.zero)
    let btn4  = UIButton(frame: CGRect.zero)
    let lbl4  = UILabel(frame: CGRect.zero)
    let btn5  = UIButton(frame: CGRect.zero)
    let lbl5  = UILabel(frame: CGRect.zero)
    let btn6  = UIButton(frame: CGRect.zero)
    let lbl6  = UILabel(frame: CGRect.zero)
    let btn7  = UIButton(frame: CGRect.zero)
    let lbl7  = UILabel(frame: CGRect.zero)
    let btn8  = UIButton(frame: CGRect.zero)
    let lbl8  = UILabel(frame: CGRect.zero)
    let imgKyokusyo = UIImageView(frame: CGRect.zero)
    let lblFireDept = UILabel(frame: CGRect.zero)
    var videoPlayer: AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //背景色
        self.view.backgroundColor = UIColor(red:1.0, green:0.8, blue:0.8, alpha:1.0)
        
        //意識・呼吸がなければ、胸骨圧迫を！
        lblHeader.text = "イラストをタップすると動画が見れます"
        lblHeader.textColor = UIColor(red:0.0, green:0.5, blue:0.5, alpha:1.0)
        lblHeader.textAlignment = NSTextAlignment.center
        lblHeader.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lblHeader.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lblHeader)
        
        //コンセント　ボタン
        btnOutlet.setImage(UIImage.init(named: "outlet.png"), for: UIControlState.normal)
        btnOutlet.layer.masksToBounds = true
        btnOutlet.layer.cornerRadius = 8.0
        btnOutlet.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btnOutlet.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btnOutlet)
        //コンセント　ラベル
        lblOutlet.text = "コンセント"
        lblOutlet.textColor = UIColor.black
        lblOutlet.textAlignment = NSTextAlignment.center
        lblOutlet.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lblOutlet.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lblOutlet)
        
        //ストーブ　ボタン
        btnStove.setImage(UIImage.init(named: "stove.png"), for: UIControlState.normal)
        btnStove.layer.masksToBounds = true
        btnStove.layer.cornerRadius = 8.0
        btnStove.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btnStove.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btnStove)
        //ストーブ　ラベル
        lblStove.text = "ストーブ"
        lblStove.textColor = UIColor.black
        lblStove.textAlignment = NSTextAlignment.center
        lblStove.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lblStove.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lblStove)
        
        //ボタン3
        btn3.setImage(UIImage.init(named: "tobacco.png"), for: UIControlState.normal)
        btn3.layer.masksToBounds = true
        btn3.layer.cornerRadius = 8.0
        btn3.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btn3.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btn3)
        //ラベル3
        lbl3.text = "たばこ"
        lbl3.textColor = UIColor.black
        lbl3.textAlignment = NSTextAlignment.center
        lbl3.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lbl3.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl3)
        
        //ボタン4
        btn4.setImage(UIImage.init(named: "tempura.png"), for: UIControlState.normal)
        btn4.layer.masksToBounds = true
        btn4.layer.cornerRadius = 8.0
        btn4.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btn4.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btn4)
        //ラベル4
        lbl4.text = "天ぷら油"
        lbl4.textColor = UIColor.black
        lbl4.textAlignment = NSTextAlignment.center
        lbl4.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lbl4.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl4)
        
        //ボタン5
        btn5.setImage(UIImage.init(named: "hotiki.png"), for: UIControlState.normal)
        btn5.layer.masksToBounds = true
        btn5.layer.cornerRadius = 8.0
        btn5.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btn5.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btn5)
        //ラベル5
        lbl5.text = "住宅火災警報器"
        lbl5.textColor = UIColor.black
        lbl5.textAlignment = NSTextAlignment.center
        lbl5.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lbl5.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl5)
        
        //ボタン6
        btn6.setImage(UIImage.init(named: "cloth.png"), for: UIControlState.normal)
        btn6.layer.masksToBounds = true
        btn6.layer.cornerRadius = 8.0
        btn6.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btn6.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btn6)
        //ラベル6
        lbl6.text = "衣服に着火"
        lbl6.textColor = UIColor.black
        lbl6.textAlignment = NSTextAlignment.center
        lbl6.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lbl6.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl6)
        
        //ボタン7
        btn7.setImage(UIImage.init(named: "oxy_tobacco.png"), for: UIControlState.normal)
        btn7.layer.masksToBounds = true
        btn7.layer.cornerRadius = 8.0
        btn7.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btn7.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btn7)
        //ラベル7
        lbl7.text = "酸素吸入中のたばこ"
        lbl7.textColor = UIColor.black
        lbl7.textAlignment = NSTextAlignment.center
        lbl7.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lbl7.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl7)
        
        //ボタン8
        btn8.setImage(UIImage.init(named: "room.png"), for: UIControlState.normal)
        btn8.layer.masksToBounds = true
        btn8.layer.cornerRadius = 8.0
        btn8.addTarget(self, action: #selector(self.playMovieFromProjectBundle), for: .touchUpInside)
        btn8.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(btn8)
        //ラベル8
        lbl8.text = "散らかった部屋"
        lbl8.textColor = UIColor.black
        lbl8.textAlignment = NSTextAlignment.center
        lbl8.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lbl8.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl8)
        
        //局章
        imgKyokusyo.image = UIImage(named: "kyokusyo.png")
        imgKyokusyo.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imgKyokusyo)
        
        //大阪市消防局
        lblFireDept.text="大阪市消防局"
        lblFireDept.textColor = UIColor.black
        lblFireDept.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        lblFireDept.textAlignment = NSTextAlignment.center
        lblFireDept.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lblFireDept)
    }
    
    //制約ひな型
    func Constraint(_ item: AnyObject, _ attr: NSLayoutAttribute, to: AnyObject?, _ attrTo: NSLayoutAttribute, constant: CGFloat = 0.0, multiplier: CGFloat = 1.0, relate: NSLayoutRelation = .equal, priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let ret = NSLayoutConstraint(
            item:       item,
            attribute:  attr,
            relatedBy:  relate,
            toItem:     to,
            attribute:  attrTo,
            multiplier: multiplier,
            constant:   constant
        )
        ret.priority = priority
        return ret
    }
    
    override func viewDidLayoutSubviews(){
        //イラストをタップすると動画が見れます
        self.view.addConstraints([
            Constraint(lblHeader, .top, to:self.view, .top, constant:32),
            Constraint(lblHeader, .centerX, to:self.view, .centerX, constant:0),
            Constraint(lblHeader, .width, to:self.view, .width, constant:0),
            Constraint(lblHeader, .height, to:self.view, .height, constant:0, multiplier:0.05)
        ])
        //コンセント　ボタン
        self.view.addConstraints([
            Constraint(btnOutlet, .top, to:lblHeader, .bottom, constant:16),
            Constraint(btnOutlet, .centerX, to:self.view, .centerX, constant:-80),
            Constraint(btnOutlet, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btnOutlet, .height, to:self.view, .width, constant:0, multiplier:0.2)
        ])
        //コンセント　ラベル
        self.view.addConstraints([
            Constraint(lblOutlet, .top, to:btnOutlet, .bottom, constant:0),
            Constraint(lblOutlet, .centerX, to:btnOutlet, .centerX, constant: 0),
            Constraint(lblOutlet, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lblOutlet, .height, to:self.view, .height, constant:0, multiplier:0.04)
        ])
        //ストーブ　ボタン
        self.view.addConstraints([
            Constraint(btnStove, .top, to:lblHeader, .bottom, constant:16),
            Constraint(btnStove, .centerX, to:self.view, .centerX, constant:80),
            Constraint(btnStove, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btnStove, .height, to:self.view, .width, constant:0, multiplier:0.2)
            ])
        //ストーブ　ラベル
        self.view.addConstraints([
            Constraint(lblStove, .top, to:btnStove, .bottom, constant:0),
            Constraint(lblStove, .centerX, to:btnStove, .centerX, constant: 0),
            Constraint(lblStove, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lblStove, .height, to:self.view, .height, constant:0, multiplier:0.04)
        ])
        //ボタン3
        self.view.addConstraints([
            Constraint(btn3, .top, to:lblOutlet, .bottom, constant:16),
            Constraint(btn3, .centerX, to:btnOutlet, .centerX, constant:0),
            Constraint(btn3, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btn3, .height, to:self.view, .width, constant:0, multiplier:0.2)
            ])
        //ラベル3
        self.view.addConstraints([
            Constraint(lbl3, .top, to:btn3, .bottom, constant:0),
            Constraint(lbl3, .centerX, to:btnOutlet, .centerX, constant: 0),
            Constraint(lbl3, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lbl3, .height, to:self.view, .height, constant:0, multiplier:0.04)
            ])
        //ボタン4
        self.view.addConstraints([
            Constraint(btn4, .top, to:lblStove, .bottom, constant:16),
            Constraint(btn4, .centerX, to:btnStove, .centerX, constant:0),
            Constraint(btn4, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btn4, .height, to:self.view, .width, constant:0, multiplier:0.2)
            ])
        //ラベル4
        self.view.addConstraints([
            Constraint(lbl4, .top, to:btn4, .bottom, constant:0),
            Constraint(lbl4, .centerX, to:btnStove, .centerX, constant: 0),
            Constraint(lbl4, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lbl4, .height, to:self.view, .height, constant:0, multiplier:0.04)
            ])
        //ボタン5
        self.view.addConstraints([
            Constraint(btn5, .top, to:lbl3, .bottom, constant:16),
            Constraint(btn5, .centerX, to:btnOutlet, .centerX, constant:0),
            Constraint(btn5, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btn5, .height, to:self.view, .width, constant:0, multiplier:0.2)
            ])
        //ラベル5
        self.view.addConstraints([
            Constraint(lbl5, .top, to:btn5, .bottom, constant:0),
            Constraint(lbl5, .centerX, to:btnOutlet, .centerX, constant: 0),
            Constraint(lbl5, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lbl5, .height, to:self.view, .height, constant:0, multiplier:0.04)
            ])
        //ボタン6
        self.view.addConstraints([
            Constraint(btn6, .top, to:lbl4, .bottom, constant:16),
            Constraint(btn6, .centerX, to:btnStove, .centerX, constant:0),
            Constraint(btn6, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btn6, .height, to:self.view, .width, constant:0, multiplier:0.2)
            ])
        //ラベル6
        self.view.addConstraints([
            Constraint(lbl6, .top, to:btn6, .bottom, constant:0),
            Constraint(lbl6, .centerX, to:btnStove, .centerX, constant: 0),
            Constraint(lbl6, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lbl6, .height, to:self.view, .height, constant:0, multiplier:0.04)
            ])
        //ボタン7
        self.view.addConstraints([
            Constraint(btn7, .top, to:lbl5, .bottom, constant:16),
            Constraint(btn7, .centerX, to:btnOutlet, .centerX, constant:0),
            Constraint(btn7, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btn7, .height, to:self.view, .width, constant:0, multiplier:0.2)
            ])
        //ラベル7
        self.view.addConstraints([
            Constraint(lbl7, .top, to:btn7, .bottom, constant:0),
            Constraint(lbl7, .centerX, to:btnOutlet, .centerX, constant: 0),
            Constraint(lbl7, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lbl7, .height, to:self.view, .height, constant:0, multiplier:0.04)
            ])
        //ボタン8
        self.view.addConstraints([
            Constraint(btn8, .top, to:lbl6, .bottom, constant:16),
            Constraint(btn8, .centerX, to:btnStove, .centerX, constant:0),
            Constraint(btn8, .width, to:self.view, .width, constant:0, multiplier:0.2),
            Constraint(btn8, .height, to:self.view, .width, constant:0, multiplier:0.2)
            ])
        //ラベル8
        self.view.addConstraints([
            Constraint(lbl8, .top, to:btn8, .bottom, constant:0),
            Constraint(lbl8, .centerX, to:btnStove, .centerX, constant: 0),
            Constraint(lbl8, .width, to:self.view, .width, constant:0, multiplier:0.5),
            Constraint(lbl8, .height, to:self.view, .height, constant:0, multiplier:0.04)
            ])
        //局章
        self.view.addConstraints([
            Constraint(imgKyokusyo, .centerY, to:lblFireDept, .centerY, constant: 0),
            Constraint(imgKyokusyo, .trailing, to:lblFireDept, .leading, constant: 0),
            Constraint(imgKyokusyo, .width, to:self.view, .width, constant:0, multiplier:0.08),
            Constraint(imgKyokusyo, .height, to:self.view, .width, constant:0, multiplier:0.08)
        ])
        //大阪市消防局
        self.view.addConstraints([
            Constraint(lblFireDept, .bottom, to:self.view, .bottom, constant:0),
            Constraint(lblFireDept, .centerX, to:self.view, .centerX, constant:8),
            Constraint(lblFireDept, .width, to:self.view, .width, constant:0, multiplier:0.4),
            Constraint(lblFireDept, .height, to:self.view, .height, constant:0, multiplier:0.1)
        ])
    }
    
    //アプリ内に組み込んだ動画ファイルを再生
    func playMovieFromProjectBundle(){
        
        if let bundlePath = Bundle.main.path(forResource: "adult", ofType: "mp4"){
            
            videoPlayer = AVPlayer(url: URL(fileURLWithPath: bundlePath))
            let playerController = AVPlayerViewController()
            playerController.player = videoPlayer
            self.present(playerController, animated: true, completion: {
                self.videoPlayer.play()
                //繰り返し再生
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: nil) { notification in
                    self.videoPlayer.seek(to: kCMTimeZero)
                    self.videoPlayer.play()
                }
            })
        } else {
            print("no such file")
        }
    }
    
    //アプリ内に組み込んだ動画ファイルを再生
    func playMovieFromProjectBundle2(){
        
        if let bundlePath = Bundle.main.path(forResource: "child", ofType: "mp4"){
            
            videoPlayer = AVPlayer(url: URL(fileURLWithPath: bundlePath))
            let playerController = AVPlayerViewController()
            playerController.player = videoPlayer
            self.present(playerController, animated: true, completion: {
                self.videoPlayer.play()
                //繰り返し再生
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: nil) { notification in
                    self.videoPlayer.seek(to: kCMTimeZero)
                    self.videoPlayer.play()
                }

            })
        } else {
            print("no such file")
        }
    }
    
    //アプリ内に組み込んだ動画ファイルを再生
    func playMovieFromProjectBundle3(){
        
        if let bundlePath = Bundle.main.path(forResource: "baby", ofType: "mp4"){
            
            videoPlayer = AVPlayer(url: URL(fileURLWithPath: bundlePath))
            let playerController = AVPlayerViewController()
            playerController.player = videoPlayer
            self.present(playerController, animated: true, completion: {
                self.videoPlayer.play()
                //繰り返し再生
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: nil) { notification in
                    self.videoPlayer.seek(to: kCMTimeZero)
                    self.videoPlayer.play()
                }

            })
        } else {
            print("no such file")
        }
    }
    
    //アプリのDocumentディレクトリにある動画ファイルを再生
    func playMovieFromLocalFile(){
        
        let path = "\(getDocumentDirectory())/filename.mp4"
        
        let videoPlayer = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = videoPlayer
        self.present(playerController, animated: true, completion: {
            videoPlayer.play()
        })
    }
    
    //Documentディレクトリのパスを取得
    func getDocumentDirectory() -> String {
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

