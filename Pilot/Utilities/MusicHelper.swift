//
//  MusicHelper.swift
//  Pilot
//
//  Created by Erik Mikac on 2/26/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//
import Foundation
import AVFoundation

class MusicHelper {
    
    static let sharedHelper = MusicHelper()
    var audioPlayer: AVAudioPlayer?
    
    func initiateBackgroundMusic(resource: String!,numberOfLoops: Int!){
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: resource, ofType: "wav")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = numberOfLoops
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
           
        }
        
    }
    
    //standard fadeDuration is 4 seconds.
    func fadeOutBackgroundMusic(resource: String!,fadeDuration: TimeInterval!) {
        audioPlayer!.setVolume(0, fadeDuration: fadeDuration)
    }
    
    func fadeInBackgroundMusic(resource: String!, fadeDuration: TimeInterval!) {
        audioPlayer!.setVolume(1, fadeDuration: 4)
    }
    

}
