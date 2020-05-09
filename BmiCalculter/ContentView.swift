//
//  ContentView.swift
//  BmiCalculter
//
//  Created by saad on 5/7/20.
//  Copyright © 2020 Saad Almutairi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var height : String = ""
    @State var width : String = ""
    
    
    
    @State var sum : Int = 0
    
    
    
     @State var bmiC = "0.0"
    @State var BmiLabel = "-"
    
    
    
    func BmiCalc(width : Double,height:Double) -> Int {
            self.sum = Int(width / (height * height))
            return sum
        }
    func StringRu(bmi : Int) -> String {
        self.bmiC = String(bmi)
        
    if bmi < 20 {
        self.BmiLabel = "🦎"
        }
        else if bmi >= 20 && bmi < 25 {
             self.BmiLabel = "🤩"
        }
        else if bmi > 25 {
         self.BmiLabel = "🥺"
        }
        
        return bmiC
    }
    
    var body: some View {
        
    
        
        HStack {
            Spacer()
        VStack {
             Spacer()
            Text("Welcome to My BMI")
                   .font(.system(size: 40))
                          .bold()
            TextField("Hight ", text: $height)
                .font(.largeTitle)
            TextField("Width ", text: $width)
                .font(.largeTitle)
             
            Button(action: {
            
                self.sum = self.BmiCalc(width: Double(self.width)!, height: Double(self.height)!)
                self.StringRu(bmi: self.sum)
                
            }) {
               
                Text("calc")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                .bold()
                .frame(width: 200, height: 100)
                    .background(Color.blue)
                .clipShape(Capsule())
                
                
              
                
            }
            
            Text("BMI")
                        .font(.system(size: 40))
                .bold()
            Text("\(bmiC)")
                                   .font(.system(size: 40))
             .bold()
                       
            Text("Statues")
                        .font(.system(size: 40))
             .bold()
            Text("\(BmiLabel)")
                .font(.system(size: 40))
             .bold()
                
             Spacer()
        }
            
             Spacer()
        }  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
