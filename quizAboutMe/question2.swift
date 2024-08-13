//
//  question2.swift
//  quizAboutMe
//
//  Created by Scholar on 09/08/2024.
//

import SwiftUI

struct question2: View {
    var backgroundColour = Color(red: 239/255 ,green: 233/255, blue: 231/225)
    var questionColour = Color(red: 218/255, green: 224/255, blue: 242/255)
    var questionTextColour = Color(red: 17/255, green: 19/255, blue: 68/255)
    var answerColour = Color(red: 249/255, green: 207/255, blue: 242/255)
    var answerTextColour = Color(red: 82/255, green: 21/255, blue: 78/255)
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 239/255 ,green: 233/255, blue: 231/225)
                    .ignoresSafeArea()
                VStack {
                    Text("Question 2:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("What is my favourite film?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(questionTextColour))
                        .padding()
                        .background(Rectangle() .foregroundColor(questionColour))
                        .cornerRadius(15)
                    NavigationLink(destination: incorrectAnswer()) {
                        HStack {
                            Text("Hunger Games")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("hungergames")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // hunger games hstack
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // hunger games navlink
                    NavigationLink(destination: incorrectAnswer()) {
                        HStack {
                            Text("Inside Out")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("insideout")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // hstack inside out
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // navlink inside out
                    NavigationLink(destination: question3()) {
                        HStack {
                            Text("Captain America: Civil War")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("civilwar")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // civil war hstack
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // civil war navlink
                } // vstack
            } // zstack
            .navigationTitle("Question 2")
            .navigationBarHidden(true)
        } // navstack
    } // body
} // struct

#Preview {
    question2()
}
