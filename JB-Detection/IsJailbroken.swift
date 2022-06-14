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

	// array of all the possible locations where jailbroken files may be stored
	let jbFilePaths = [
		"/private/var/lib/apt",
		"/Applications/Cydia.app", // if you can open cydia
		"/Applications/Zebra.app",
		"/Applications/iCleaner.app", // if you can open jailbroken app
		"/Applications/Sileo.app",
		"/Applications/Filza.app", // if you can open Filza
		"/Library/PreferenceLoader/",
		"/Library/MobileSubstrate/MobileSubstrate.dylib",
		"/Library/MobileSubstrate/DynamicLibraries/PreferenceLoader.dylib",
		"/Library/MobileSubstrate/DynamicLibraries/PreferenceLoader.plist",
		"/Library/MobileSubstrate/DynamicLibraries/RocketBootstrap.dylib",
		"/Library/MobileSubstrate/DynamicLibraries/RocketBootstrap.plist"
	]

	for path in jbFilePaths where FileManager.default.fileExists(atPath: path) {
		Jailbroken = true // if this is true the iphone has a jailbroken app installed which is not possible on a "factory" iphone so the iphone is jilbroken
		return // only need to set `Jailbroken = true` once
	}
	// the iphone look like is not jailbroken
}


//created by Max21910 with ❤️ in 🇫🇷
