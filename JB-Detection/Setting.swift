//
//  Setting.swift
//  JB-Detection
//
//  Created by Max  on 12/06/2022.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        //nothing importante here
        NavigationView {
            VStack {
                
                
                Image("Icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200, height: 200)
                    .padding(20)
                
                
                
                
                Link(destination: URL(string: "https://github.com/max21910")!,
                     label: {
                    Label (
                        title: {
                            Text("Github")
                                .bold()
                        },
                        icon: {
                            Image("github")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                        }
                        
                    )
                    .frame(width: 250,
                           height: 50,
                           alignment: .center)
                    
                    
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .frame(width: 251,
                           height: 55,
                           alignment: .center)
                    .background(Color.white)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                })
                
                
                Link(destination: URL(string: "https://www.instagram.com/max_dpj/")!,
                     label: {
                    Label (
                        title: {
                            Text("Intagram")
                                .bold()
                                .foregroundColor(Color.white)
                        },
                        icon: {
                            Image("insta")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .aspectRatio(contentMode: .fit)
                            
                            
                            
                        })
                    .background(
                        Image("bg")
                            .resizable()
                        
                            .frame(width: 250, height:50,
                                   alignment: .center)
                            .background(Color.black)
                            .foregroundColor(Color.white)
                        
                            .cornerRadius(20)
                        
                        
                    )
                    .padding()
                })
                
                
                Link(destination: URL(string: "https://twitter.com/max21160")!,
                     label: {
                    Label (
                        title: {
                            Text("Twitter")
                                .bold()
                        },
                        icon: {
                            Image("Twitter")
                                .resizable()
                                .frame(width: 30, height: 25)
                            
                            
                        })
                    .frame(width: 250,
                           height: 50,
                           alignment: .center)
                    
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    
                })
                
                
                
                
                
                Text("Made with ❤️ by Max21910 in 🇫🇷")
                
            }
            
            
            .navigationTitle("Setting")
        }
    }
    
}





struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
