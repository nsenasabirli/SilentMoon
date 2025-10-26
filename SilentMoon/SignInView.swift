import SwiftUI

struct SignInView: View {
    @Environment(\.dismiss) var dismiss
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack(spacing: 24) {
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
                Text("Welcome Back!")
                    .font(.system(size: 28, weight: .bold))
                    .padding(.top, 40)
                Spacer()
                VStack(spacing: 16) {
                    SocialButton(icon: "f", title: "CONTINUE WITH FACEBOOK", color: Color(hex: "7583CA"))
                    SocialButton(icon: "G", title: "CONTINUE WITH GOOGLE", color: .white, textColor: .black)
                }
                .padding(.horizontal, 20)
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
                VStack(spacing: 16) {
                    CustomTextField(placeholder: "Email address", text: $email)
                    CustomTextField(placeholder: "Password", text: $password, isSecure: true)
                }
                .padding(.horizontal, 20)
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
                Button {
                    // Handle forgot password
                } label: {
                    Text("Forgot Password?")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                }
                .padding(.top, 8)
                Spacer()
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
