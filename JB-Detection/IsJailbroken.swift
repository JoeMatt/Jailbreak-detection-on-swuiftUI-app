//
//  IsJailbroken.swift
//  JB-Detection
//
//  Created by Max  on 12/06/2022.
//


import Foundation

var Jailbroken = false //when the app open the iphone state is not jailbroken because the script has not yet run
var simulate = false //when the app open the simulator  state is not true because the script has not yet run



func IsJailbroken() { //name of the function

#if targetEnvironment(simulator) //just check if the app run on the simulator and change the variable "simulate to true "
 simulate = true
#endif

 if(FileManager.default.fileExists(atPath: "/private/var/lib/apt")) || (FileManager.default.fileExists(atPath: "/Applications/Cydia.app")) || //if you can open cydia
    (FileManager.default.fileExists(atPath: "/Applications/Zebra.app")) ||  (FileManager.default.fileExists(atPath: "/Applications/iCleaner.app")) || //if you can open jailbroken app
    (FileManager.default.fileExists(atPath: "/Applications/Sileo.app")) || (FileManager.default.fileExists(atPath: "/Applications/Filza.app")) ||//if you can open Filza
    (FileManager.default.fileExists(atPath: "/Library/PreferenceLoader/")) || (FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/MobileSubstrate.dylib")) || (FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/DynamicLibraries/PreferenceLoader.dylib")) || (FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/DynamicLibraries/PreferenceLoader.plist")) || (FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/DynamicLibraries/RocketBootstrap.dylib")) || (FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/DynamicLibraries/RocketBootstrap.plist"))
            
        {
       Jailbroken = true
     //if this is true the iphone have jailbroken app installed which is not possible on a "factory" iphone so the iphone is jilbroken
         
        } else {
            Jailbroken = false // the iphone look like is not jailbroken 
        }

    }
                
   
//created by Max21910 with ❤️ in 🇫🇷
