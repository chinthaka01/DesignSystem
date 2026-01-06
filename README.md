# DesignSystem

DesignSystem is a Swift module that provides:

- Color tokens (`DSColor`)
- Spacing tokens (`DSSpacing`)
- Text styles (`DSTextStyle`)
- Common UI components (`DSAvatar`, `DSButton`, `DSCard`, `DSSection`)

Feature modules depend on these instead of defining their own ad‑hoc styling, which helps maintain a coherent design system.

***

## Foundations

### Colors (`DSColor`)

`DSColor` defines named colors for:

- Screen and surface backgrounds.
- Card backgrounds.
- Primary accent color.
- Secondary and header text colors.
- Warning/error text color.

Views and components reference these tokens rather than hard‑coded `Color` values, making it easy to adjust the palette centrally.

***

### Spacing (`DSSpacing`)

`DSSpacing` exposes a small spacing scale (e.g. extra‑small, small, medium, large) that is used for:

- Vertical and horizontal padding.
- Spacing inside stacks.
- Layout gaps between sections.

This keeps spacing consistent and aligned to a single scale.

***

### Typography (`DSTextStyle`)

`DSTextStyle` defines commonly used text styles for:

- Large avatar initials.
- Titles and headings.
- Body text.
- Captions and secondary text.

Components and feature views use these styles instead of directly creating `Font` values.

***

## Components

### DSAvatar

`DSAvatar` is a circular avatar component that:

- Derives an initial from a provided name.
- Renders the initial inside a colored circle.
- Allows customizing avatar size and font.

Used in places like feed items or friends lists when there is no user image.

***

### DSButton

`DSButton` is a primary button component that:

- Shows a title, with an optional SF Symbol icon.
- Applies consistent typography, padding, background color, and corner radius.
- Expands horizontally when needed and triggers a provided action closure.

Used for primary actions such as “Retry” or “Save” across features.

***

### DSCard

`DSCard` is a generic container that:

- Wraps arbitrary content provided via a `@ViewBuilder`.
- Applies consistent padding, full‑width layout, and a card background with rounded corners.

Ideal for grouping related content into visually distinct blocks.

***

### DSSection

`DSSection` is a titled section component that:

- Displays a section title using a headline text style.
- Renders custom content below the title.
- Wraps the entire section in a padded, card‑like background with horizontal insets.

Useful for organizing screens into labeled sections, such as profile details or grouped feed content.

***

## Usage in Features

Feature modules:

- Import `DesignSystem`.
- Use `DSColor`, `DSSpacing`, and `DSTextStyle` as building blocks.
- Compose UI with `DSAvatar`, `DSButton`, `DSCard`, and `DSSection` to align with the app’s visual language.

This keeps each micro‑feature focused on behavior and layout, while the visual identity lives in a single, shared place.
