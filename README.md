# CU Apps Website

![Deploy Badge Status](https://github.com/TJMusiitwa/jaspr-cuapps-website/actions/workflows/azure-static-web-apps-deploy.yml/badge.svg)

## Overview

A modern, high-performance website for **CU Apps**, built using the **Jaspr** web framework for Dart. CU Apps specializes in revolutionising mutuals and credit unions through affordable, bespoke, and premium mobile applications and advanced AI Chat solutions.

This project showcases the next generation of the CU Apps web presence, featuring a sleek design, interactive elements, and comprehensive product information.

## Key Features

- **Modern Aesthetic**: Clean, professional design with decorative breathing blobs and smooth gradients.
- **CU Chat Showcase**: Dedicated implementation of the CU Chat interface and features.
- **Responsive Design**: Optimized for all devices using Tailwind CSS and modern layout techniques.
- **Interactive UI**: Includes multi-stage process sections, testimonial carousels, and integrated consultation booking via Calendly.
- **SEO Optimized**: Built with proper semantic HTML and fast-loading static components.

## Live Website

> [!IMPORTANT]
> At the time of reading this README, the newly updated website based on this design may or may not be live yet.
>
> You can visit the current website at: **[https://cuapps.co.uk](https://cuapps.co.uk)**

## Tech Stack

- **[Jaspr](https://jaspr.site/)**: A modern web framework for Dart that enables building server-side and client-side web apps.
- **[Tailwind CSS](https://tailwindcss.com/)**: For utility-first styling.
- **[DaisyUI](https://daisyui.com/)**: For clean, accessible UI components.
- **[Dart](https://dart.dev/)**: The underlying language for high performance and type safety.

## Getting Started

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (latest stable version)
- [Jaspr CLI](https://jaspr.site/docs/cli): Install using `dart pub global activate jaspr_cli`

### Running the Project

1.  Clone the repository:
    ```bash
    git clone https://github.com/TJMusiitwa/jaspr-cuapps-website.git
    ```
2.  Install dependencies:
    ```bash
    dart pub get
    ```
3.  Run the development server:
    ```bash
    jaspr serve
    ```
4.  The website will be available at `http://localhost:8080`.

### Building for Production

To build the static version of the site:

```bash
jaspr build
```

The output will be located in the `build/jaspr/` directory, ready for deployment.

---

**Developed by [Jonathan Musiitwa](mailto:jonamusiitwa@outlook.com)**
