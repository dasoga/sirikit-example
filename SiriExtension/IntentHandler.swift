//
//  IntentHandler.swift
//  SiriExtension
//
//  Created by Dante Solorio on 7/12/16.
//  Copyright © 2016 Dante Solorio. All rights reserved.
//

import Intents

// You can test your example integration by saying things to Siri like:
// "Call somebody using <myApp>"

class IntentHandler: INExtension, INStartAudioCallIntentHandling {
    
    override func handler(for intent: INIntent) -> AnyObject {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
    // MARK: - INStartAudioCallIntentHandling
    func handle(startAudioCall intent: INStartAudioCallIntent, completion: (INStartAudioCallIntentResponse) -> Void) {
        let response = INStartAudioCallIntentResponse(code: .inProgress, userActivity: nil)
        
        completion(response)
    }
    
    func confirm(startAudioCall intent: INStartAudioCallIntent, completion: (INStartAudioCallIntentResponse) -> Void) {
        let response = INStartAudioCallIntentResponse(code: .success, userActivity: nil)
        
        completion(response)
    }
    
}

