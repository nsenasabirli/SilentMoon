# SilentMoon

A beautiful, minimal meditation app built with SwiftUI, inspired by a modern Figma design.

## 🌙 Features

- **Onboarding screen**: Welcome screen with personalized title, blurred top bar and centered illustration. (Mirrors Figma design)
- **Navigation**: Smooth NavigationStack-based transitions between screens.
- **WelcomeView**: After onboarding, a visually rich welcome page with silent moon branding, motivational copy and login/sign-up.
- **Component structure**: All views and reusable components like SocialButton and CustomTextField live in their own files for clarity and maintainability.
- **Color extension**: Custom hex-based Color extension for fast theme adaption.
- **All key UI assets**: Images and illustrations provided per Figma mockup.

## 🚀 Getting Started

1. **Clone this repository**
   ```bash
   git clone https://github.com/nsenasabirli/SilentMoon.git
   ```
2. **Open with Xcode**
   - Double click `SilentMoon.xcodeproj`
3. **Set run device** and press CMD+R.

## 🗂️ Project Structure

- `SilentMoonApp.swift` — App entry point, loads OnboardingView first.
- `OnboardingView.swift` — The opening personalized onboarding screen (matches Figma).
- `WelcomeView.swift` — Motivational brand splash with login/signup CTA.
- `SignInView.swift` / `SignUpView.swift` — Auth screens, modularized.
- `SocialButton.swift` / `CustomTextField.swift` — UI components.
- `Color+Hex.swift` — Color extension for hex strings.
- `Assets.xcassets` — All design images, icons, and illustrations (you can add/replace as needed).

## 🎨 Figma Reference
Figma design file: https://www.figma.com/community/file/882888114457713282

All layouts, colors, paddings, and illustrations are implemented to match the Figma as closely as possible.

---

**Contributions welcome!** If you notice a UI bug or want to enhance a screen, open a pull request.
