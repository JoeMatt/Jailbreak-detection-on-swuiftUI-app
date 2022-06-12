//
//  ContentView.swift
//  JB-Detection
//
//  Created by Max  on 12/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var textToUpdate = "is my iphone is jailbroken ?" //the text will be change when the user press the button
    @State var Bottomtexte = "?"//the text will be change when the user press the button
    var systemVersion = UIDevice.current.systemVersion //get the name of the ios version for the info tab
    var Device = UIDevice.current.name //get the name of the device for the info tab
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image("Icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200, height: 200)
                    .padding(20)
                
                Button(action: {
                IsJailbroken() //here when the user tap the button the function  Isjailbroken is executed
                 
                    
                    if Jailbroken == true { // if the function return true the iphone is jailbroken
                        self.textToUpdate = "Yes " //change the text to tell the user that the iphone is jailbroken
                        self.Bottomtexte = "Yes "
                        print("jailbroken") //print for testing in simulator
                        
                    }
                    if Jailbroken == false { // if the function return false the iphone is not jailbroken
                        self.textToUpdate = "No" //change the text to tell the user that the iphone is not jailbroken
                        self.Bottomtexte = "No "
                        print("No jailbroken") //print for testing in simulator
                        
                    }
                    
                    if simulate == true { // if the function return true  the app run on a simulator
                        self.textToUpdate = "use in simulateur" //change the text to tell the user that the app run on a simulator
                        self.Bottomtexte = "use in simulateur"
                        print("use in simulator") //print for testing in simulator
                    }
                    
                }, label: {
                    Text("Check jailbreak status") //text of the button
                        .font(.caption)
                        .padding(20)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding(40)
                })
                
                
                
            label: do {
                Label (
                    title: {
                        Text(textToUpdate) //textToUpdate is use here to change the string
                            .bold()
                            .foregroundColor(Color.white)
                    },
                    icon: {
                        Image("Sileo")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                    })
                .background(
                    Image("bg")
                        .resizable()
                    
                        .frame(width: 270, height:60,
                               alignment: .center)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                    
                        .cornerRadius(20)
                    
                    
                )
                .padding(10)
            }
            
                Text("Info :")
                    .padding(20)
                    
           
              
              Text("📱 ios version :\(systemVersion)") //display the ios version
                    .font(.caption)
                    .bold()
                 
            Text("🔨 Jailbroken :\(Bottomtexte)") //display the jailbroken state with the function "Isjailbroken"
                .font(.caption)
                .bold()
                .padding(20)
                Text("📲 Nom :\(Device)") //display the name of the iphone "just for info "
                    .font(.caption)
                    .bold()
                
                
            }
         
    

        
            .navigationTitle("JailbreakDetection") //title of the Navigation View
          }
        }
    
      }
    

    
   




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//created by Max21910 with ❤️ in 🇫🇷
