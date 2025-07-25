# 📘 GEMINI.md  
### Guidelines for AI Assistance in SwiftUI Projects

This document defines best practices and expectations for how Gemini (or any AI assistant) should assist in the development of SwiftUI-based iOS/macOS projects.

---

## ✅ Coding Style & Conventions

- **Use SwiftUI idioms**
  - Favor declarative layout over imperative UIKit-style hacks.
  - Compose UIs using `ViewBuilder`, `ForEach`, `@State`, and `@Binding`.

- **Follow Apple's naming guidelines**
  - Use camelCase for variables and functions.
  - Use PascalCase for types (structs, classes, enums).
  - Avoid abbreviations unless they are standard (e.g., `URL`, `ID`).

- **Leverage View Composition**
  - Break large views into smaller, reusable components.
  - Prefer stateless views unless local state is necessary.

- **Keep logic out of Views**
  - Use `ObservableObject`, `@Observable`, or a ViewModel layer for business logic.
  - Views should only be responsible for layout and UI presentation.

---

## 🧪 State Management

- Use the appropriate SwiftUI property wrappers:
  - `@State` for local view state.
  - `@Binding` for shared state across view boundaries.
  - `@ObservedObject` or `@StateObject` for external models.
  - `@Environment` / `@EnvironmentObject` for global dependencies.

- Use Combine or Swift Concurrency (`async/await`) for side effects — avoid hiding side effects in `init`.

---

## 🔄 Swift Concurrency

- Prefer `Task {}` and `.task {}` modifiers over `onAppear` for asynchronous work.
- Use `@MainActor` where appropriate to ensure UI consistency.
- Avoid force-unwrapping or race conditions in async flows.

---

## 📐 Architecture

- Follow a **MVVM**-inspired structure:
  - **Model**: Data structures and business logic.
  - **ViewModel**: Observable bridge between Model and View.
  - **View**: SwiftUI struct composed from reusable subviews.

- Co-locate Views and ViewModels in folders/modules.

---

## 🎨 UI & Design

- Use `SF Symbols` and built-in `Color`, `Font`, and `Shape` APIs when possible.
- Follow Apple's Human Interface Guidelines for spacing, accessibility, and alignment.
- Prefer system modifiers like `.padding()`, `.frame()`, `.background()` instead of hardcoded layout values.

---

## 📁 File Organization

- Use folders/modules to separate features or domains.
- Group files by **feature**, not by type.
  - ✅ Good: `ProfileView.swift`, `ProfileViewModel.swift`, `ProfileModel.swift`
  - ❌ Bad: `Views/`, `ViewModels/`, `Models/`

---

## ✅ Linting & Comments

- Use SwiftFormat or SwiftLint conventions unless otherwise noted.
- Avoid over-commenting; code should be self-explanatory.
- Use `// MARK:`s to organize large files and sections.

---

## 💬 When in Doubt

- **Ask before generating large components**.
- **Use placeholders** like `// TODO:` where design details are unclear.
- Prefer minimal, working examples over speculative full implementations.

---

_This document is meant to improve clarity, consistency, and collaboration when using Gemini or similar tools to build SwiftUI applications._