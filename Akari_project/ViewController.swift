//
//  ViewController.swift
//  Akari_project
//
//  Created by 岡大輔 on 2018/06/28.
//  Copyright © 2018年 岡大輔. All rights reserved.
//

import UIKit
import AVFoundation
import EasyCamery
import EasyImagy

class ViewController: UIViewController {


    @IBOutlet var imageView: UIImageView!
    
    private let camera: Camera<RGBA<UInt8>> = try! Camera(sessionPreset: .vga640x480, focusMode: .continuousAutoFocus)
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let graphplot = GraphPlotToImage()
        camera.start { [weak self] image in
            // Makes `image` negative
            //print(image[100,100])
            image = graphplot.processGlaphPlot(inputImage: image)
            image.update { pixel in
                
                //pixel.red = 255 - pixel.red
                //pixel.green = 255 - pixel.green
                //pixel.blue = 255 - pixel.blue
            }
            
            self?.imageView.image = image.uiImage
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        camera.stop()
        
        super.viewWillDisappear(animated)
    }
    



}

