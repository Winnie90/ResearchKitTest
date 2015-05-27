//
//  SurveyTask.swift
//  Camelot
//
//  Created by Christopher Winstanley on 27/05/2015.
//  Copyright (c) 2015 Winstanley. All rights reserved.
//

import ResearchKit

public var SurveyTask: ORKOrderedTask {
    var steps = [ORKStep]()
    steps += [createIntroStep()]
    steps += [createQuestionStep()]
    steps += [createMultiChoiceStep()]
    steps += [createImageChoiceStep()]
    steps += [createSummaryStep()]
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}

func createIntroStep()->ORKInstructionStep{
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "The Questions Three"
    instructionStep.text = "Who would cross the Bridge of Death must answer me these questions three, ere the other side they see."
    return instructionStep
}

func createQuestionStep()->ORKQuestionStep{
    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
    let nameQuestionStepTitle = "What is your name?"
    let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    return nameQuestionStep
}

func createMultiChoiceStep()->ORKQuestionStep{
    let questQuestionStepTitle = "What is your quest?"
    let textChoices = [
        ORKTextChoice(text: "Create a ResearchKit App", value: 0),
        ORKTextChoice(text: "Seek the Holy Grail", value: 1),
        ORKTextChoice(text: "Find a shrubbery", value: 2)
    ]
    let questAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let questQuestionStep = ORKQuestionStep(identifier: "TextChoiceQuestionStep", title: questQuestionStepTitle, answer: questAnswerFormat)
    return questQuestionStep
}

func createImageChoiceStep()->ORKQuestionStep{
    let colorQuestionStepTitle = "What is your favorite color?"
    let colorTuples = [
        (UIImage(named: "red")!, "Red"),
        (UIImage(named: "orange")!, "Orange"),
        (UIImage(named: "yellow")!, "Yellow"),
        (UIImage(named: "green")!, "Green"),
        (UIImage(named: "blue")!, "Blue"),
        (UIImage(named: "purple")!, "Purple")
    ]
    let imageChoices : [ORKImageChoice] = colorTuples.map {
        return ORKImageChoice(normalImage: $0.0, selectedImage: nil, text: $0.1, value: $0.1)
    }
    let colorAnswerFormat: ORKImageChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithImageChoices(imageChoices)
    let colorQuestionStep = ORKQuestionStep(identifier: "ImageChoiceQuestionStep", title: colorQuestionStepTitle, answer: colorAnswerFormat)
    return colorQuestionStep
}

func createSummaryStep()->ORKCompletionStep{
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "Right. Off you go!"
    summaryStep.text = "That was easy!"
    return summaryStep
}