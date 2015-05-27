//
//  SpatialMemoryTask.swift
//  Camelot
//
//  Created by Christopher Winstanley on 27/05/2015.
//  Copyright (c) 2015 Winstanley. All rights reserved.
//

import ResearchKit

public var SpatialMemoryTask: ORKOrderedTask {
    return ORKOrderedTask.spatialSpanMemoryTaskWithIdentifier("SpatialMemoryTask", intendedUseDescription: "This activity measures your short term spatial memory", initialSpan: 5, minimumSpan: 3, maximumSpan: 10, playSpeed: 0.5, maxTests: 3, maxConsecutiveFailures: 3, customTargetImage: nil, customTargetPluralName: nil, requireReversal: false, options: nil)
}
