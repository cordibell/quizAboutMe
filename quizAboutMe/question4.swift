//
//  question4.swift
//  quizAboutMe
//
//  Created by Scholar on 09/08/2024.
//

import SwiftUI

struct question4: View {
    var backgroundColour = Color(red: 239/255 ,green: 233/255, blue: 231/225)
    var questionColour = Color(red: 218/255, green: 224/255, blue: 242/255)
    var questionTextColour = Color(red: 17/255, green: 19/255, blue: 68/255)
    var answerColour = Color(red: 249/255, green: 207/255, blue: 242/255)
    var answerTextColour = Color(red: 82/255, green: 21/255, blue: 78/255)
    var body: some View {
        NavigationStack {
            ZStack{
                Color(backgroundColour)
                    .ignoresSafeArea()
                VStack {
                    Text("Question 4:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("What is my favourite game?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(questionTextColour))
                        .padding()
                        .background(Rectangle() .foregroundColor(questionColour))
                        .cornerRadius(15)
                    NavigationLink(destination: incorrectAnswer()) {
                        HStack {
                            Text("Genshin Impact")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("genshin")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // fairy tail hstack
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // fairy tail navlink
                    NavigationLink(destination: endQuiz()) {
                        HStack {
                            Text("Final Fantasy XIV")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("ffxiv")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // haikyuu hstack
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // haikyuu navlink
                    NavigationLink(destination: incorrectAnswer()) {
                        HStack {
                            Text("Roblox")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("roblox")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // hstack black clover
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // navlink black clover
                } // vstack
            } // zstack
            .navigationTitle("Question 4")
            .navigationBarHidden(true)
        } // navstack
    }
}

#Preview {
    question4()
}
