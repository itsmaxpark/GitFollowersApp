//
//  GFError.swift
//  Github Followers
//
//  Created by Max Park on 6/18/22.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error when trying to favorite this user."
    case alreadyInFavorites = "You've already favorited this user."
}

