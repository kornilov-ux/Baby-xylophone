//
//  ViewController.swift
//  Baby-xylophone
//
//  Created by Alex  on 27.07.2023.
//

import UIKit
import AVFoundation
// import SpriteKit

class ViewController: UIViewController {

	var player: AVAudioPlayer!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	// past examples
	//let nameSound = SKSpriteNode(fileNamed: "C")
	//let buttonSound = SKAction.playSoundFileNamed("C.wav", waitForCompletion: false)
	//let buttonSound: Void = SKNode().run(SKAction.repeatForever(SKAction.playSoundFileNamed("Sounds/C.wav", waitForCompletion: true)))
//	let nameSound = SKSpriteNode(fileNamed: "C.wav")
	
	
	
	@IBAction func keySounds(_ sender: UIButton) {
		playSound(soundName: sender.currentTitle!)
			   //Reduces the sender's that got pressed opacity to half.
			   sender.alpha = 0.5
			   print("start")
			   //Code should execute after 0.2 second delay.
			   DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
				   //Bring's sender's opacity back up to fully opaque.
				   sender.alpha = 1.0
				   print("end")
			   }

	}
	
	func playSound(soundName: String) {
		 let url = Bundle.main.url(forResource: soundName, withExtension: "wav") 
			player = try! AVAudioPlayer(contentsOf: url!)
			player.play()
			
		}
	
//	func playSound() {
//		guard let url = Bundle.main.url(forResource: "Sounds/C", withExtension: "wav") else {return}
//		player = try! AVAudioPlayer(contentsOf: url)
//		player.play()
//					
//		}
	
//	func playSound() {
//		guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//
//		do {
//			try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)            
//			try AVAudioSession.sharedInstance().setActive(true)
//
//			player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//		
//			guard let player = player else { return }
//
//			player.play()
//			
//
//		} catch let error {
//			print(error.localizedDescription)
//		}
//	}
	
}

