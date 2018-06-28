//
//  GraphPlotToImage.swift
//  Akari_project
//
//  Created by 岡大輔 on 2018/06/28.
//  Copyright © 2018年 岡大輔. All rights reserved.
//

import UIKit

import AVFoundation
import EasyCamery
import EasyImagy

class GraphPlotToImage: NSObject {
    
    func processGlaphPlot(inputImage:Image<RGBA<UInt8>>)->Image<RGBA<UInt8>>
    {
        let Graph = self.extractPixelRValueIntegral(inputImage: inputImage)
        
    }
    
    func drawSpecifiedGraph(inputImage:Image<RGBA<UInt8>>,graph:Array<UInt64>)->Image<RGBA<UInt8>>
    {
        let maxGaugeOfGraph = inputImage.height * 255
        
    }
    
    func extractPixelRValueIntegral(inputImage:Image<RGBA<UInt8>>)->Array<UInt64>
    {
        var verticalGraphForR:Array<UInt64> = Array(repeating: 0, count: inputImage.width)
        for w in 0..<inputImage.width{
            for h in 0..<inputImage.height{
                verticalGraphForR[w] += UInt64(inputImage[w,h].redInt)
            }
        }
        
        return verticalGraphForR
    }
    
    func extractPixelGValueIntegral(inputImage:Image<RGBA<UInt8>>)->Array<UInt64>
    {
        var verticalGraphForG:Array<UInt64> = Array(repeating: 0, count: inputImage.width)
        for w in 0..<inputImage.width{
            for h in 0..<inputImage.height{
                verticalGraphForG[w] += UInt64(inputImage[w,h].greenInt)
            }
        }
        return verticalGraphForG
    }
    
    func extractPixelBValueIntegral(inputImage:Image<RGBA<UInt8>>)->Array<UInt64>
    {
        var verticalGraphForB:Array<UInt64> = Array(repeating: 0, count: inputImage.width)
        for w in 0..<inputImage.width{
            for h in 0..<inputImage.height{
                verticalGraphForB[w] += UInt64(inputImage[w,h].greenInt)
            }
        }
        return verticalGraphForB
    }
    

}
