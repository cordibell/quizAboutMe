//
//  question1.swift
//  quizAboutMe
//
//  Created by Scholar on 09/08/2024.
//

import SwiftUI

struct question1: View {
    var backgroundColour = Color(red: 239/255 ,green: 233/255, blue: 231/225)
    var questionColour = Color(red: 218/255, green: 224/255, blue: 242/255)
    var questionTextColour = Color(red: 17/255, green: 19/255, blue: 68/255)
    var answerColour = Color(red: 249/255, green: 207/255, blue: 242/255)
    var answerTextColour = Color(red: 82/255, green: 21/255, blue: 78/255)
    var body: some View {
        NavigationStack {
            ZStack {
                Color(backgroundColour)
                    .ignoresSafeArea()
                VStack {
                    Text("Question 1:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("What is my favourite song?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(questionTextColour))
                        .padding()
                        .background(Rectangle() .foregroundColor(questionColour))
                        .cornerRadius(15)
                    
                    
                    NavigationLink(destination: question2()) {
                        HStack {
                            Text("DNA, YENA")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("dna")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // dna hstack
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // navlink
                    NavigationLink(destination: incorrectAnswer()) {
                        HStack {
                            Text("Cut my hair, Tate McRae")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("cutmyhair")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // h stack cut my hair
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // navlink
                    NavigationLink(destination: incorrectAnswer()) {
                        HStack {
                            Text("Deja Vu, TXT")
                                .font(.title2)
                                .foregroundColor(answerTextColour)
                            Spacer()
                            Image("dejavu")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                        } // hstack deja vu
                        .padding()
                        .background(Rectangle() .foregroundColor(answerColour))
                        .cornerRadius(15)
                        .padding()
                    } // navlink
                } // vstack
            } // zstack
            .navigationTitle("Question 1")
            .navigationBarHidden(true)
        } // navstack
    } // body
} // struct

#Preview {
    question1()
}
