---
name: CU Apps
description: Editorial product narrative for a credit-union software suite; blue for CU Apps, purple for CU Chat.
colors:
  signal-blue: "#259ce2"
  soft-blue: "#549ed8"
  blue-wash: "#c6e6ff"
  sky-paper: "#eaf5fc"
  harbour-navy: "#132139"
  night-navy: "#101b2c"
  link-blue: "#175d89"
  eyebrow-ink: "#355f83"
  cu-chat-purple: "#433067"
  purple-deep: "#281254"
  lilac: "#aa91d8"
  lilac-wash: "#e6ddf3"
  lilac-paper: "#faf8fd"
  lilac-field: "#f1ecf8"
  paper: "#ffffff"
  pale: "#f4f8fb"
  hairline: "#d7e0e9"
  ink-body: "#4b5a6a"
  ink-soft: "#43546a"
  ink-muted: "#516174"
  ink-faint: "#5e6e7f"
  charcoal: "#333333"
typography:
  display:
    fontFamily: "Outfit, Arial, sans-serif"
    fontSize: "clamp(3.4rem, 6.1vw, 6.6rem)"
    fontWeight: 600
    lineHeight: 1.035
    letterSpacing: "-0.065em"
  headline:
    fontFamily: "Outfit, Arial, sans-serif"
    fontSize: "clamp(2.55rem, 4.1vw, 4.6rem)"
    fontWeight: 600
    lineHeight: 1.08
    letterSpacing: "-0.055em"
  title:
    fontFamily: "Outfit, Arial, sans-serif"
    fontSize: "clamp(1.55rem, 2.15vw, 2.4rem)"
    fontWeight: 600
    lineHeight: 1.18
    letterSpacing: "-0.04em"
  lede:
    fontFamily: "Outfit, Arial, sans-serif"
    fontSize: "clamp(1.1rem, 1.45vw, 1.31rem)"
    fontWeight: 400
    lineHeight: 1.55
  body:
    fontFamily: "Outfit, Arial, sans-serif"
    fontSize: "1rem"
    fontWeight: 400
    lineHeight: 1.58
  label:
    fontFamily: "Outfit, Arial, sans-serif"
    fontSize: "0.76rem"
    fontWeight: 700
    letterSpacing: "0.15em"
rounded:
  xs: "5px"
  sm: "7px"
  md: "8px"
  lg: "12px"
  device: "36px"
  pill: "999px"
spacing:
  gutter: "24px"
  container: "1240px"
  section: "clamp(80px, 9vw, 132px)"
components:
  button-primary:
    backgroundColor: "{colors.harbour-navy}"
    textColor: "{colors.paper}"
    rounded: "{rounded.sm}"
    padding: "13px 21px"
    height: "52px"
  button-primary-hover:
    backgroundColor: "#24476d"
  button-chat:
    backgroundColor: "{colors.cu-chat-purple}"
    textColor: "{colors.paper}"
    rounded: "{rounded.sm}"
    padding: "13px 21px"
    height: "52px"
  button-chat-hover:
    backgroundColor: "{colors.purple-deep}"
  card-chat:
    backgroundColor: "{colors.paper}"
    rounded: "{rounded.md}"
    padding: "clamp(25px, 3vw, 38px)"
  footer:
    backgroundColor: "{colors.night-navy}"
    textColor: "{colors.paper}"
---

# Design System: CU Apps

## Overview

**Creative North Star: "The Member's Front Door"**

The site is the front door a credit union opens to its members. It should feel like a trusted local institution that has taken on modern craft. The pages read as a calm editorial product story: one strong headline per section, generous white and pale-sky fields, and real devices showing real screens. Imagery does the persuading and decoration stays out of the way. Navy carries the authority, signal blue carries the energy, and CU Chat moves into its own purple world without breaking the grammar.

Density is low and deliberate. Sections breathe on a large vertical rhythm. Type is a single family (Outfit), set tight and heavy at display sizes and open at reading sizes. Depth comes from tonal fields and hairlines, not shadows. The only things lifted off the page are product artifacts (phones, the products dropdown), because they are the product.

**Key Characteristics:**
- One typeface, Outfit, with very tight negative tracking at display sizes.
- Navy and signal-blue for CU Apps; purple and lilac for CU Chat. The two never mix within a surface.
- Flat tonal fields ruled by hairlines; hard offset shadows only under device frames.
- Tracked uppercase eyebrows introduce every section.
- Solid, restrained buttons with small radius and a 2px hover lift.

## Colors

A cool, trustworthy navy-and-sky palette with a separate purple register reserved for CU Chat.

### Primary
- **Harbour Navy** (`harbour-navy`): headings, body-strong text, the primary button, device-frame bezels. The site's voice of authority.
- **Signal Blue** (`signal-blue`): focus rings, hero art glows, accents that need energy. Used sparingly, never as body text on white (fails contrast).
- **Link Blue** (`link-blue`) and **Eyebrow Ink** (`eyebrow-ink`): the AA-safe blues for inline links and section eyebrows.

### Secondary
- **CU Chat Purple** (`cu-chat-purple`) and **Purple Deep** (`purple-deep`): CU Chat buttons, eyebrows, and full-bleed context sections. The header CTA switches to purple on CU Chat pages.
- **Lilac** (`lilac`), **Lilac Wash** (`lilac-wash`), **Lilac Paper** (`lilac-paper`): CU Chat device stages, panels, and section fields, from strongest to faintest.
- **Lilac Field** (`lilac-field`): the tinted CU Chat hero and alternate section field, one step deeper than lilac paper so a full-bleed band reads as a field rather than white.

### Neutral
- **Paper** (`paper`) and **Pale** (`pale`): default and alternate section fields.
- **Sky Paper** (`sky-paper`) and **Blue Wash** (`blue-wash`): tinted CU Apps fields and light text on navy.
- **Hairline** (`hairline`): every divider, card border, and header rule.
- **Ink Body / Soft / Muted** (`ink-body`, `ink-soft`, `ink-muted`): the grey-blue reading inks for body copy, ledes, and meta text.
- **Ink Faint** (`ink-faint`): the quietest ink, for labels and secondary text inside product mock-ups; not for page body copy.
- **Night Navy** (`night-navy`): the footer field.

### Named Rules
**The Two Brands Rule.** Blue belongs to CU Apps surfaces and purple to CU Chat surfaces. A page picks one register; the only shared elements are navy text and hairlines.

**The Signal Scarcity Rule.** Signal blue is an accent and a focus colour, not a fill. Buttons are navy; links use link blue.

## Typography

**Display Font:** Outfit (with Arial, sans-serif), self-hosted variable 400–700.
**Body Font:** Outfit (same family).

**Character:** One geometric humanist sans does everything. Hierarchy comes from size and tracking, not from a second typeface. Display is set heavy and tight until the words lock together like a sign; reading text relaxes to open, warm spacing.

### Hierarchy
- **Display** (600, `clamp(3.4rem, 6.1vw, 6.6rem)`, 1.035): hero headlines only; max ~780px wide. Emphasised words use `<em>` in a mid blue (#2077ac) rather than italic.
- **Headline** (600, `clamp(2.55rem, 4.1vw, 4.6rem)`, 1.08): section titles, max ~900px.
- **Title** (600, `clamp(1.55rem, 2.15vw, 2.4rem)`, 1.18): step and card headings.
- **Lede** (400, `clamp(1.1rem, 1.45vw, 1.31rem)`, 1.55): hero and section introductions, max ~600px.
- **Body** (400, 1rem, 1.58): paragraph copy in the ink greys.
- **Label** (700, 0.76rem, 0.15em tracking, uppercase): eyebrows, step notes, nav group labels.

### Named Rules
**The Tight Display Rule.** Anything at display or headline scale gets negative tracking (−0.04em to −0.065em). Default tracking at those sizes looks unfinished.

**The Eyebrow Rule.** Every major section opens with a tracked uppercase eyebrow above its headline, in eyebrow ink (or purple on CU Chat).

## Layout

A centred container of 1240px max with a 24px gutter each side (`min(100% - 48px, 1240px)`). Sections use a fluid vertical rhythm of `clamp(80px, 9vw, 132px)`. Heroes are asymmetric two-column grids (≈1.02fr / .98fr) with copy on the left and a device stage on the right, at a minimum height of 680px. Feature groups use CSS grid (three columns for steps, two for product pairs, bento layouts on the home page).

Breakpoints are 1000px (the grid collapses toward two columns; the footer brand spans the full width), 760px (single column, mobile nav), and 480/420px (tightened type and padding). Motion is light and purposeful (`web/motion.css`): hero copy arrives in a short 60ms cascade, the home phone rises onto its shelf, product-hero mockups play out what the product does (the conversation arrives turn by turn, vote bars fill), FAQ answers expand, the mobile menu grows from its button, and "How it works" rules draw in with scroll. Curves are `--ease-out: cubic-bezier(0.23, 1, 0.32, 1)` and `--ease-in-out: cubic-bezier(0.77, 0, 0.175, 1)`; UI transitions stay at 120–260ms, buttons scale to 0.97 on press, and hover motion is gated behind `(hover: hover) and (pointer: fine)`. Reduced motion keeps the fades and drops all movement. There is no scroll-jacking, and nothing the reader is reading or acting on moves for style.

## Elevation & Depth

Flat by default. Depth comes from tonal section fields (paper, pale, sky, lilac) separated by hairline rules. Shadows are reserved for product artifacts. Device frames get a hard, blur-free offset shadow that reads like a printed drop. The products dropdown gets the single soft floating shadow in the system.

### Shadow Vocabulary
- **Device drop** (`box-shadow: 18px 20px 0 rgba(19,33,57,.1)`): under hero phones and device frames.
- **Floating panel** (`box-shadow: 0 24px 50px rgba(19,33,57,.14)`): the header products dropdown only.
- **Mock lift** (`box-shadow: 0 2px 6px rgba(19,33,57,.18)`): small UI mock-ups inside product visuals.

### Named Rules
**The Product Lift Rule.** Only the product floats. Cards, panels, and sections stay flat and hairline-ruled. If something isn't a device, a mock screen, or the nav dropdown, it has no shadow.

## Shapes

The form language is small, precise corners. Buttons use 7px, cards and panels 8px, larger feature frames 12px, and image insets 5px. Device frames are the exception: 36px top corners with a thick navy (or purple-deep) bezel, cropped flat at the bottom so the phone rises out of its stage. Circles appear for step numbers, social icons, and the decorative ring behind hero phones. Pills (999px) are reserved for small tags.

## Components

### Buttons
Confident and restrained.
- **Shape:** gently squared (7px), min-height 52px, weight 650, 0.95rem.
- **Primary:** solid Harbour Navy on white text; hover deepens to #24476d and lifts 2px.
- **Chat:** solid CU Chat Purple; hover goes to Purple Deep. It replaces the primary button on every CU Chat surface, including the header CTA.
- **Text link:** 650 weight with a 1px underline rule in currentColor and a generous gap (17px) before its drawn arrow; hover shifts to a deeper blue (purple on CU Chat).
- **Focus:** 3px signal-blue outline, 4px offset, on every interactive element.
- **Label:** the conversion CTA always reads "Book a call".

### Cards / Containers
- **Corner Style:** 8px.
- **Background:** white on a tinted field (lilac paper or pale).
- **Border:** 1px hairline (#ddd3eb on CU Chat, `hairline` on CU Apps).
- **Shadow Strategy:** none (see The Product Lift Rule).
- **Internal Padding:** `clamp(25px, 3vw, 38px)`; step cards have a 48px circular number badge and a tracked note pinned to the bottom.

### Navigation
A sticky 80px header on 96% white with a hairline bottom rule and backdrop blur. Links are 0.94rem at weight 550. The Products item opens a two-column dropdown panel (10px radius, floating shadow) grouping Member, CU Chat (on a lilac-paper tile), and Operations products. Each entry has a bold name and a one-line summary.

### Footer
Night Navy field with light blue-grey links (#e0e9f2) that underline on hover. Columns: brand + social circles, Products, Company, Product sheets, and Trust & security with the ISO 27001 badge. Uppercase tracked column labels.

### Link Arrows
Every directional link and button carries a drawn line arrow, never a typed glyph.
- **Form:** a 24px-grid line icon in currentColor, 1.8 stroke, round caps and joins, sized to the text (about 1–1.15em), hidden from assistive tech.
- **Meaning:** a forward arrow (→) stays on the site, a down arrow (↓) jumps within the page, a diagonal arrow (↗) leaves the site. The direction is chosen from the destination, not for looks.

**The Arrow Means Where Rule.** An arrow tells the reader where the link goes. Forward stays, down jumps, diagonal leaves; a mismatched arrow is a bug.

### Capability Index (signature)
The editorial replacement for icon card grids on product and feature pages.
- **Layout:** two columns (≈.85fr / 1.15fr, gap `clamp(40px, 7vw, 110px)`); the section intro sticks at 112px from the top while the list scrolls beside it. Collapses to one column, intro unstuck, below 760px.
- **Rows:** a 1px Harbour Navy rule on top of the list (Purple Deep on CU Chat), then each capability as a row ruled by a 1px hairline beneath, 26px vertical padding. A 24px line icon sits in a narrow first column; the title is 600 weight at `clamp(1.18rem, 1.45vw, 1.4rem)` with −0.02em tracking, the body in ink body at 58ch.

**The Ruled Index Rule.** Lists of parallel things (capabilities, rosters, client rolls) are ruled rows: a strong rule in the register's darkest colour above the list, hairlines between rows, no card chrome. Cards are for steps and self-contained panels, not for enumerations.

### Device Stage (signature)
The hero art: a tinted stage (radial signal-blue glow on CU Apps, lilac on CU Chat) with a thin decorative ring, a caption in the top-left corner, and a phone screenshot in a thick navy bezel rising from the bottom edge with a device-drop shadow.

### Trust Note (signature)
A hairline-topped row pairing the ISO 27001:2022 badge (64px) with a bold certification line and a "Visit our Trust Center" link carrying the drawn leave-site arrow. Place it wherever visitors share details.

## Do's and Don'ts

### Do:
- **Do** use Outfit alone, with negative tracking at display and headline sizes.
- **Do** open sections with a tracked uppercase eyebrow.
- **Do** switch the whole surface to the purple register on CU Chat pages, including the header CTA.
- **Do** show real product screens in device frames rather than abstract illustration.
- **Do** keep a 3px signal-blue focus ring with 4px offset on every interactive element.
- **Do** set lists of capabilities, bots, or clients as ruled rows under a strong top rule, with the intro held sticky beside them on wide screens.
- **Do** pick the link arrow from the destination: forward stays on site, down jumps within the page, diagonal leaves the site.

### Don't:
- **Don't** mix blue and purple accents on one surface.
- **Don't** put shadows on cards, panels, or sections; only on devices, mocks, and the dropdown.
- **Don't** use signal blue for body text or button fills.
- **Don't** use gradient text, glassmorphism, or neon gradients (PRODUCT.md anti-references).
- **Don't** introduce a second typeface or a radius above 12px outside device frames.
- **Don't** type arrow glyphs (→ ↓ ↗) into labels; use the drawn link arrow.
- **Don't** build feature lists as grids of icon cards; use the capability index.
