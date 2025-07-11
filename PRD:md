# Benja – Product Requirements Document (PRD)

## Overview

**Benja** is a mobile web browser for iOS that integrates on-device AI capabilities to enhance web browsing while ensuring complete user privacy. Unlike typical browsers, Benja uses locally-running large language models (LLMs) to allow users to interact with websites via natural language – without sending any data to remote servers.

---

## Goals

- Deliver a fast, modern, privacy-respecting browser experience.
- Allow users to ask questions or give commands related to the current web page using natural language.
- Keep all AI processing on-device, with no network-dependent inference.
- Offer a clean, distraction-free UI optimized for mobile.

---

## Target Platform

- iOS 16+
- iPhone (first), iPad (later)
- Native technologies: Swift, SwiftUI, WebKit, CoreML / local LLMs

---

## Core Features

### 1. **Web Browsing (Core)**
- WebKit-based renderer.
- Tabless single-page or multi-tab navigation.
- Address bar with search/autocomplete.
- Bookmarks and browsing history (optional in MVP).

### 2. **On-Device AI Assistant**
- Natural language interface to ask questions like:
  - "What is this page about?"
  - "Summarize the key points."
  - "Extract all the links."
  - "What does this table mean?"
- Local LLM (e.g., Mistral, LLaMA via CoreML or GGUF-based inference).

### 3. **Privacy Mode by Default**
- No telemetry or background trackers.
- No cloud-based AI inference.
- Optional "Incognito Mode" disables history and cookies.
- Option to auto-clear data on exit.

### 4. **Contextual Page Actions**
- AI suggests contextual actions like:
  - Translate
  - Extract contact info
  - Generate a to-do list from a blog post
  - Reformat content for readability

### 5. **Minimal UI Design**
- Focus on content-first experience.
- Hide navigation chrome when scrolling.
- AI assistant accessible via a floating action button or swipe gesture.

---

## Non-Goals (for MVP)

- No extension support
- No multi-account or syncing across devices
- No third-party search engine deals or ads

---

## Future Features (Post-MVP)

- iPadOS support with split-screen multitasking.
- AI memory for summarizing past visits.
- Per-site settings and permissions (cookies, JS, etc.).
- Offline reading mode with AI summaries.
- Voice interface for AI interaction.

---

## Success Metrics

- Time to first interaction with AI under 3s.
- AI latency under 1s (after model load).
- Zero user data sent to third-party servers.
- Positive App Store ratings on usability and privacy.

---

## Risks & Challenges

- On-device model performance vs. battery/latency.
- Model size and app bundle constraints.
- Ensuring AI relevance with limited context (e.g., page length/token limits).
- App Store review approval (due to custom browser engine policies or LLM usage).

---

## Team

- **Product/Engineering Lead**: You (Fernando)
- **AI/ML Consultant**: TBD
- **iOS Engineer(s)**: Initially solo; can scale
- **Design**: Minimalist UI, possibly hire freelance

---

## Timeline (Rough Draft)

| Phase          | Milestone                                 | Target Date |
|----------------|-------------------------------------------|-------------|
| Planning       | PRD, architecture, UI wireframes           | July 2025   |
| MVP Build      | Core browser + local AI integration        | Aug–Sep 2025|
| Alpha Testing  | Internal builds, performance tuning        | October 2025|
| Beta Release   | TestFlight release                         | November 2025|
| App Store Launch | v1.0 release                           | December 2025|

---

## Notes

- AI component may be integrated using `llm.swift`, `mlc-llm`, or `ggml` models compiled to CoreML.
- Consider bundling a small quantized model and allowing advanced users to load custom models.