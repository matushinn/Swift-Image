//
//  ViewController.swift
//  SwiftLesson
//
//  Created by 大江祥太郎 on 2019/03/25.
//  Copyright © 2019 shotaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //四角形の図形のイメージ作る
    func makeBoxImage(width w:CGFloat,height h:CGFloat) -> UIImage{
        //イメージの処理開始
        let size = CGSize(width: w, height: h)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        //描画するコンテキスト
        let context = UIGraphicsGetCurrentContext()
        //サイズを決める
        let drawRect = CGRect(x: 0, y: 0, width: w, height: h)
        //パスを作る
        let drawPath = UIBezierPath(rect: drawRect)
        //塗り色
        context?.setFillColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //パスを作る
        drawPath.fill()
        //線の色
        context?.setStrokeColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        //パスを描く
        drawPath.stroke()
        //イメージテキストからUIImageを描く
        //イメージ処理を終了する前に描画した図形のイメージを取得します
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //イメージ処理の終了
        UIGraphicsEndImageContext()
        
        //四角形の描画イメージを返します
        return image!
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //四角形のイメージを作る
        let boxImage = makeBoxImage(width: 240, height: 180)
        //イメージビューに設定する
        let boxView = UIImageView(image: boxImage)
        //描画に表示する
        boxView.center = view.center
        //ビューに追加する
        view.addSubview(boxView)
        
        
    }
}

