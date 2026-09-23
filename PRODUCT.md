# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Register

brand

## Users

Decision-makers at UK credit unions and mutuals (CEOs, boards, operations leads) evaluating digital products for their members and staff. They are risk-aware, budget-conscious, and often not deeply technical; they need confidence that CU Apps is credible, secure, premium, and understands the credit-union sector.

## Product Purpose

CU Apps' marketing site for a multi-product suite built for credit unions. It explains each product, shows proof from peer credit unions, and converts visitors into booked calls. Success = a visitor trusts the brand enough to book a call.

## Positioning

A single sector specialist (founded 2012, working with 40+ credit unions) offering the member-facing app, AI assistants, and operational tools a credit union needs, rather than a generic agency or horizontal SaaS vendor.

## Capabilities and Constraints

The suite, grouped as the site navigation groups it (source of truth: `memberProducts`, `chatProducts`, `operationsProducts` in `lib/components/ui.dart`):

- **Member:** Member app (`/app-features`), a bespoke mobile app in the credit union's brand.
- **CU Chat:** AI Chatbot (`/cu-chat/ai-chatbot`), 24/7 answers for members on the website; Internal Knowledge Agent (`/cu-chat/knowledge-agent`), instant answers for staff from the credit union's own policies. CU Chat is a sub-brand with its own site (cu.chat) and product-sheet PDFs hosted there.
- **Operations:** AGM Hub (`/agm-hub`), live stream, secure voting and questions; Loan Calculators (`/loan-calculators`), branded calculators leading to applications; Origination & Applications (`/member-origination`), prefilled, validated member and loan applications; CU Flow (`/cu-flow`), describe a form and publish it inside the app.

Primary conversion: **"Book a call"** (Calendly), used as the CTA label everywhere. The free-demo/contact forms are secondary routes.

Stack: Jaspr (Dart), static/server-rendered.

## Brand Commitments

Trusted, premium, approachable, with a bold, modern, tech-forward edge. Financial-sector credibility with warmth; confident about AI without hype. Voice is plain-spoken and benefit-led, not jargon-heavy. Blue carries CU Apps surfaces and purple carries CU Chat surfaces.

Anti-references:

- Generic SaaS-template look (identical card grids, hero-metric blocks, gradient text).
- Stuffy legacy-bank aesthetics (navy-and-gold formality, dense corporate copy).
- AI-hype styling (glassmorphism everywhere, neon gradients).

## Evidence on Hand

Confirmed and citable:

- ISO/IEC 27001:2022 certified (`web/images/iso-27001-2022-certified.webp`, linked to the Trust Center).
- Founded 2012; 40+ credit unions served.
- CU Chat testimonials, verbatim from cu.chat/portfolio (used on `/cu-chat/stories`).

Present but not yet confirmed as citable proof: the case-study PDFs in `web/case-studies/` (Fair Finance, Heritage, Northern Community Bank). Check with the user before building claims on them. Do not invent metrics, customers, or quotes.

## Product Principles

1. **Earn trust visually.** Use polish, contrast, and real product imagery rather than decoration; the site itself is proof of build quality.
2. **Two brands, one system.** CU Apps and CU Chat each keep their own colour, and the two are never mixed arbitrarily.
3. **Show the product.** Device frames, real screenshots, and concrete steps beat abstract illustration.
4. **One job per page.** Every page drives toward booking a call.
5. **Fast and calm.** Static rendering, light motion, no scroll-jacking; performance is part of the premium feel.

## Accessibility & Inclusion

WCAG 2.1 AA target: ≥4.5:1 body-text contrast, keyboard-navigable interactive elements, reduced-motion alternatives for all animation (gated via `prefers-reduced-motion`).
