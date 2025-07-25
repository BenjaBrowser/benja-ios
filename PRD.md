# Product Requirements Document (PRD)

## Product Name
**Benja — The Web Browser for Those Who Read**

## Vision Statement
Benja is a mobile web browser that transforms how people read on the internet. It’s designed for thoughtful, focused readers who consume articles, newsletters, and short books on the go. In a world cluttered with distractions and clickbait, Benja offers a calm, purposeful experience tailored to knowledge seekers.

## Problem Statement
Current mobile browsers are optimized for general web consumption — fast searches, social media, and e-commerce. They fail readers in several key ways:
- They don’t remember where you left off in long articles.
- They offer no built-in “reading mode” for clutter-free content.
- There is no audio experience that feels natural for articles.
- Users can’t easily summarize or organize what they read.
- Browsers don’t support content curation across sources (e.g., creating your own daily “newspaper”).

## Target Audience
- Knowledge workers and students who read news and essays daily.
- Busy professionals who want to consume content while commuting.
- Neurodivergent users who prefer structured, distraction-free reading experiences.
- People seeking alternatives to algorithmic news feeds and infinite scroll apps.

## Value Proposition
Benja helps readers **consume, organize, and retain** web-based content in a way that’s personalized, clutter-free, and optionally voice-enabled — all while preserving user privacy and working offline when needed.

---

## Core Features

### 1. Smart Bookmarks
- Save any page with a **scroll position** tracker.
- Resume articles exactly where you left off.
- Add optional tags or notes for future reference.

### 2. Read Mode
- Clean, ad-free reading layout for articles and essays.
- Toggle between light and dark reading modes.
- Automatically detect and extract article content.

### 3. Voiceover & Audio Mode
- Text-to-speech for any saved article.
- Control playback speed, pause, and resume.
- Optional background playback (for walking or commuting).

### 4. Instant Summaries
- One-tap AI-generated summary of the current page.
- Listen to the summary or read it as a paragraph or bullet list.
- Option to “ask follow-up questions” about the content (via local LLM).

### 5. Reading Dashboards
- Create boards like “Morning Reads”, “Tech News”, or “Weekend Essays”.
- Add pages manually or automate via RSS or curated lists.
- Each board is a curated reading experience.

### 6. Offline Reading
- Preload saved pages with clean article view.
- Full voice and summary features available offline.
- Ideal for flights, subways, or limited connectivity.

---

## Secondary Features

- Reader history with resume points and time-spent tracking.
- Highlight and save quotes from articles.
- Search across saved articles and summaries.
- Native iOS and iPadOS interface with multitasking support.
- Privacy-first: on-device LLM summaries, no ad tracking or behavioral profiling.

---

## Non-Goals

- Competing with general-purpose AI assistants or search engines.
- Supporting all web browsing use cases (e.g., shopping, social media).
- Heavy personalization based on past behavior (no tracking-based recommendations).

---

## Success Metrics

### Product Usage
- % of users using Smart Bookmarks daily
- Number of articles resumed from scroll position
- Number of summaries generated per week
- Minutes spent in Voiceover mode

### Retention
- 7-day and 30-day active user retention
- % of users creating custom dashboards

### Satisfaction
- In-app rating for Read Mode and Voiceover experience
- Net Promoter Score (NPS) from reader-focused users

---

## Technical Considerations

- Built on `WKWebView` for page rendering
- Use of local CoreML/LLM model for on-device summaries
- iCloud or local CoreData-based storage for offline access
- Swift + SwiftUI for modern, performant UI
- Accessibility compliance for VoiceOver, font scaling, etc.

---

## Timeline (Phase 1: MVP)

| Feature | Status |
|--------|--------|
| Read Mode | ✅ |
| Smart Bookmarks | ✅ |
| Voiceover (TTS) | 🟡 (in progress) |
| Instant Summaries | 🔲 |
| Dashboards | 🔲 |
| Offline Reading | 🔲 |

---

## Open Questions

- Should Benja support account sync or be purely local and private?
- What voice should be used for TTS: system default or branded?
- Should we add integrations with services like Instapaper or Pocket?

---

## Appendix

**Name Origin**  
"Benja" comes from the idea of a quiet, wise helper — possibly an owl — that aids your reading. The name evokes simplicity and trust.

**Competitor Analysis**
- Safari Reader Mode: good UX, but lacks memory and voice support.
- Pocket: content saver, not a full browser.
- Matter: reading-focused, but subscription-based and not privacy-first.