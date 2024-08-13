//
//  incorrectAnswer.swift
//  quizAboutMe
//
//  Created by Scholar on 09/08/2024.
//

import SwiftUI

struct incorrectAnswer: View {
    var backgroundColour = Color(red: 239/255 ,green: 233/255, blue: 231/225)
    var questionColour = Color(red: 218/255, green: 224/255, blue: 242/255)
    var questionTextColour = Color(red: 17/255, green: 19/255, blue: 68/255)
    var answerColour = Color(red: 249/255, green: 207/255, blue: 242/255)
    var answerTextColour = Color(red: 82/255, green: 21/255, blue: 78/255)
    var body: some View {
        ZStack {
            Color(backgroundColour)
                .ignoresSafeArea()
            VStack{
                Text("❌")
                    .font(.largeTitle)
                Text("Incorrect answer...")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(questionTextColour))
            } // vstack
            .padding()
            .background(Rectangle() .foregroundColor(questionColour))
            .cornerRadius(15)
            .padding()
        } // zstack
    } // body
} // struct

#Preview {
    incorrectAnswer()
}
