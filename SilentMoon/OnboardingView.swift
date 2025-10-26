import SwiftUI

struct OnboardingView: View {
    var userName: String
    @State private var goToWelcome = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "8E97FD")
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    // Figma style: Top logo image, centered, with space + correct size
                    Image("silentmoon")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 168, height: 38)
                        .padding(.top, 52)

                    Spacer().frame(height: 42)
                    VStack(spacing: 8) {
                        Text("Hi \(userName), Welcome")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                        Text("to Silent Moon")
                            .font(.system(size: 24, weight: .regular))
                            .foregroundColor(.white)
                    }
                    .padding(.top, 12)
                    Text("Explore the app, Find some peace of mind to prepare for meditation.")
                        .font(.system(size: 16))
                        .foregroundColor(.white.opacity(0.85))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 32)
                        .padding(.top, 12)

                    Spacer(minLength: 0)
                    Image("onboarding")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 340, maxHeight: 250)
                        .clipped()
                        .padding(.top, 14)
                        .accessibilityLabel("Meditating person illustration")
                    Spacer()
                    Button(action: {
                        goToWelcome = true
                    }) {
                        Text("GET STARTED")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(Color(hex: "3F414E"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 56)
                            .background(Color.white)
                            .cornerRadius(28)
                            .padding(.horizontal, 18)
                    }
                    .padding(.bottom, 36)
                }
            }
            .navigationDestination(isPresented: $goToWelcome) {
                WelcomeView()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(userName: "Afşar")
            .previewDevice("iPhone 14 Pro")
    }
}
