//
//  MicrophoneTask.swift
//  Camelot
//
//  Created by Christopher Winstanley on 27/05/2015.
//  Copyright (c) 2015 Winstanley. All rights reserved.
//

import ResearchKit

public var MicrophoneTask: ORKOrderedTask {
    return ORKOrderedTask.audioTaskWithIdentifier("AudioTask", intendedUseDescription: "A sentence prompt will be given to you to read.", speechInstruction: "These are the last dying words of Joseph of Aramathea", shortSpeechInstruction: "The Holy Grail can be found in the Castle of Aaaaaaaaaaah", duration: 10, recordingSettings: nil, options: nil)
}