//
//  ContentView.swift
//  SilentMoon
//
//  Created by N Sena Sabırlı on 16.10.2025.
//

import SwiftUI
struct WelcomeView: View {
    @State private var navigateToSignIn = false
    @State private var navigateToSignUp = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 0) {
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .offset(x: 300, y: 500)
                        .clipped()
                    Color(hex: "F5F5F5")
                }
                .ignoresSafeArea()
                VStack(spacing: 30) {
                    Image("silentmoon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 110)
                        .opacity(0.9)
                        .padding(.top, 60)
                    Image("welcome")
                        .resizable()
                        .frame(width: 300, height: 200)
                    Spacer()
                    VStack(spacing: 16) {
                        Text("We are what we do")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.black)
                        Text("Thousand of people are using silent moon\nfor smalls meditation")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Button {
                        navigateToSignUp = true
                    } label: {
                        Text("SIGN UP")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 56)
                            .background(Color(hex: "8E97FD"))
                            .cornerRadius(28)
                    }
                    .padding(.horizontal, 40)
                    HStack(spacing: 4) {
                        Text("ALREADY HAVE AN ACCOUNT?")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                        Button {
                            navigateToSignIn = true
                        } label: {
                            Text("LOG IN")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(Color(hex: "8E97FD"))
                        }
                    }
                    .padding(.bottom, 40)
                }
            }
            .navigationDestination(isPresented: $navigateToSignIn) {
                SignInView()
            }
            .navigationDestination(isPresented: $navigateToSignUp) {
                SignUpView()
            }
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
