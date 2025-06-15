//
//  Sounds.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 21/01/2025.
//

import SwiftUI
import AVKit //Audio Video kit

class SoundManager{
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    enum SoundOption: String{
        case tada
        case badum
        
    }
    //bundle.main efers to the main bundle of your app, which contains all your app's resources (like images, sounds, etc.)
    
    //.url(forResource: "tada", withExtension: ".mp3") is trying to locate a file named "tada" with the extension ".mp3" within your app's bundle
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: "tada", withExtension: ".mp3") else{ return }
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error{
            print("Error playing sound \(error.localizedDescription)")
        }
    }
}

struct Sounds: View {
    var soundManager: SoundManager = SoundManager()
    var body: some View {
        VStack(spacing: 40){
            Button("Play sound 1"){
                SoundManager.instance.playSound(sound: .tada)
            }
            Button("Play sound 2"){
                SoundManager.instance.playSound(sound: .badum)
            }
        }
    }
}

#Preview {
    Sounds()
}
