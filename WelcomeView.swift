//
//  ContentView.swift
//  SilentMoon
//
//  Created by N Sena Sabırlı on 16.10.2025.
//

import SwiftUI


// MARK: - Welcome View
struct WelcomeView: View {
    @State private var navigateToSignIn = false
    @State private var navigateToSignUp = false
    
    var body: some View {
            NavigationStack {
                
                ZStack {
                    VStack(spacing: 0) {
                        // Background image - üst yarı
                        Image("background")
                            .resizable()
                            .scaledToFill()
                            .offset(x: 300, y: 500)
                            .clipped()
                            
                        
                        // Alt yarı - beyaz/açık gri
                        Color(hex: "F5F5F5")
                    }
                    .ignoresSafeArea()
                    
                    VStack(spacing: 30) {
                        // Logo
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
                    // Heading & Description
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
                    
                    // Sign Up Button
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
                    
                    // Log In Link
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

// MARK: - Sign In View
struct SignInView: View {
    @Environment(\.dismiss) var dismiss
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                // Back Button
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 60)
                
                // Welcome Back Title
                Text("Welcome Back!")
                    .font(.system(size: 28, weight: .bold))
                    .padding(.top, 40)
                
                Spacer()
                
                // Social Login Buttons
                VStack(spacing: 16) {
                    SocialButton(icon: "f", title: "CONTINUE WITH FACEBOOK", color: Color(hex: "7583CA"))
                    SocialButton(icon: "G", title: "CONTINUE WITH GOOGLE", color: .white, textColor: .black)
                }
                .padding(.horizontal, 20)
                
                // Divider
                HStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                    Text("OR LOG IN WITH EMAIL")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.horizontal, 8)
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 24)
                
                // Email & Password Fields
                VStack(spacing: 16) {
                    CustomTextField(placeholder: "Email address", text: $email)
                    CustomTextField(placeholder: "Password", text: $password, isSecure: true)
                }
                .padding(.horizontal, 20)
                
                // Login Button
                Button {
                    // Handle login
                } label: {
                    Text("LOG IN")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(Color(hex: "8E97FD"))
                        .cornerRadius(28)
                }
                .padding(.horizontal, 20)
                .padding(.top, 16)
                
                // Forgot Password
                Button {
                    // Handle forgot password
                } label: {
                    Text("Forgot Password?")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                }
                .padding(.top, 8)
                
                Spacer()
                
                // Sign Up Link
                HStack(spacing: 4) {
                    Text("ALREADY HAVE AN ACCOUNT?")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    
                    Button {
                        dismiss()
                    } label: {
                        Text("SIGN UP")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(Color(hex: "8E97FD"))
                    }
                }
                .padding(.bottom, 40)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

// MARK: - Sign Up View
struct SignUpView: View {
    @Environment(\.dismiss) var dismiss
    @State private var name = "afsar"
    @State private var email = "imshuvo97@gmail.com"
    @State private var password = "........"
    @State private var agreedToPolicy = false
    @State private var showPassword = false
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                // Back Button
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 60)
                
                // Create Account Title
                Text("Create your account")
                    .font(.system(size: 28, weight: .bold))
                    .padding(.top, 40)
                
                Spacer()
                
                // Social Login Buttons
                VStack(spacing: 16) {
                    SocialButton(icon: "f", title: "CONTINUE WITH FACEBOOK", color: Color(hex: "7583CA"))
                    SocialButton(icon: "G", title: "CONTINUE WITH GOOGLE", color: .white, textColor: .black)
                }
                .padding(.horizontal, 20)
                
                // Divider
                HStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                    Text("OR LOG IN WITH EMAIL")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.horizontal, 8)
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 24)
                
                // Form Fields
                VStack(spacing: 16) {
                    CustomTextField(placeholder: "Name", text: $name, hasCheckmark: true)
                    CustomTextField(placeholder: "Email", text: $email, hasCheckmark: true)
                    CustomTextField(placeholder: "Password", text: $password, isSecure: !showPassword, showPasswordToggle: true, showPassword: $showPassword)
                }
                .padding(.horizontal, 20)
                
                // Privacy Policy Checkbox
                HStack(spacing: 12) {
                    Button {
                        agreedToPolicy.toggle()
                    } label: {
                        Image(systemName: agreedToPolicy ? "checkmark.square.fill" : "square")
                            .font(.system(size: 24))
                            .foregroundColor(agreedToPolicy ? Color(hex: "8E97FD") : .gray)
                    }
                    
                    HStack(spacing: 4) {
                        Text("I have read the")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        Text("Privacy Policy")
                            .font(.system(size: 14))
                            .foregroundColor(Color(hex: "8E97FD"))
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 8)
                
                // Get Started Button
                Button {
                    // Handle sign up
                } label: {
                    Text("GET STARTED")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(Color(hex: "8E97FD"))
                        .cornerRadius(28)
                }
                .padding(.horizontal, 20)
                .padding(.top, 16)
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

// MARK: - Custom Components
struct SocialButton: View {
    let icon: String
    let title: String
    let color: Color
    var textColor: Color = .white
    
    var body: some View {
        Button {
            // Handle social login
        } label: {
            HStack(spacing: 12) {
                Text(icon)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(textColor)
                    .frame(width: 24)
                
                Text(title)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(textColor)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .background(color)
            .cornerRadius(28)
            .overlay(
                RoundedRectangle(cornerRadius: 28)
                    .stroke(Color.gray.opacity(0.2), lineWidth: color == .white ? 1 : 0)
            )
        }
    }
}

struct CustomTextField: View {
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    var hasCheckmark: Bool = false
    var showPasswordToggle: Bool = false
    @Binding var showPassword: Bool
    
    init(placeholder: String, text: Binding<String>, isSecure: Bool = false, hasCheckmark: Bool = false, showPasswordToggle: Bool = false, showPassword: Binding<Bool> = .constant(false)) {
        self.placeholder = placeholder
        self._text = text
        self.isSecure = isSecure
        self.hasCheckmark = hasCheckmark
        self.showPasswordToggle = showPasswordToggle
        self._showPassword = showPassword
    }
    
    var body: some View {
        HStack {
            if isSecure {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 16))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 16))
            }
            
            if hasCheckmark && !text.isEmpty {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }
            
            if showPasswordToggle {
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .background(Color(hex: "F5F5F5"))
        .cornerRadius(15)
    }
}

// MARK: - Color Extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// MARK: - Preview
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
