# Kelvin Martin's Sketchy Stuff

> "The world is a place of many small delights. Everywhere is interesting."

A Hugo-powered gallery website showcasing architectural sketches and travel photography by Kelvin Martin. This site features curated collections of sketches from travels across Europe and the UK, with a focus on architectural heritage and cultural exploration.

## 🎨 Galleries

The site currently features five galleries:

- **[France](content/galleries/france/)** - A cruise through the South of France (River cruise, Roman sites, churches)
- **[Netherlands](content/galleries/netherlands/)** - Reflections on modern Dutch architecture and design
- **[Oxford](content/galleries/oxford/)** - A road trip showcasing British architectural heritage from Tudor to 1970s
- **[Tavira](content/galleries/tavira/)** - Portuguese churches and Roman heritage in the Algarve
- **[National Trust](content/galleries/national-trust/)** - UK heritage properties and conservation sites

## 🏗️ Technology Stack

- **Hugo** - Static site generator
- **galleriesdeluxe** - Hugo theme/module for image galleries
- **WebP** - Optimized image format for web performance
- **Dart Sass** - CSS preprocessing
- **Nix** - Development environment management

## 🚀 Quick Start

### Prerequisites

The project uses Nix for development environment management. Install Nix if you haven't already.

### Development Setup

1. Clone the repository:
   ```bash
   git clone [repository-url]
   cd SketchyStuff
   ```

2. Enter the Nix development shell:
   ```bash
   nix-shell
   ```
   This provides all necessary dependencies: Hugo, Go, Dart Sass, and Git LFS.

3. Start the development server:
   ```bash
   hugo server
   ```

4. Open your browser to `http://localhost:1313`

### Building for Production

```bash
hugo --gc
```

## 📁 Project Structure

```
├── content/
│   ├── galleries/          # Gallery collections
│   │   ├── france/         # Individual gallery folder
│   │   │   ├── index.md    # Gallery metadata and description
│   │   │   └── *.webp      # Optimized gallery images
│   │   └── ...
│   ├── about/              # About page content
│   └── _index.md           # Homepage content
├── layouts/                # Custom Hugo templates
├── assets/scss/            # Custom styling
├── hugo.toml               # Hugo configuration
└── shell.nix               # Nix development environment
```

## 🖼️ Adding New Galleries

### 1. Create Gallery Structure
```bash
mkdir content/galleries/[gallery-name]
```

### 2. Add Images
- Convert images to WebP format for optimal performance
- Resize to maximum width of 1500px for consistency
- Use descriptive filenames: `1_Description_Location.webp`

### 3. Create Gallery Metadata
Create `content/galleries/[gallery-name]/index.md`:

```yaml
---
title: Gallery Title
categories: [travel, architecture, ...]
date: YYYY-MM-DD
summary: Brief description of the gallery
---

Gallery content and descriptions...
```

### Available Categories
- `travel` - Journey and travel experiences
- `architecture` - Architectural focus
- `heritage` - Historic preservation and heritage sites
- `modern` - 20th century and contemporary architecture
- `religious` - Churches and religious buildings
- `roman` - Roman archaeological sites
- `cruise` - Cruise-based travel
- `conservation` - Conservation and National Trust properties
- `gardens` - Garden and landscape architecture

## 🎯 Features

- **Responsive Design** - Works on all devices
- **Image Optimization** - WebP format with 6-month caching
- **Gallery Categories** - Organized content discovery
- **Lightbox Display** - Enhanced image viewing experience
- **SEO Optimized** - Proper meta tags and structured content

## 🔧 Configuration

Key configuration options in `hugo.toml`:

```toml
[params.galleriesdeluxe]
    sass_transpiler = "dartsass"

[params.gallerydeluxe]
    shuffle     = false
    reverse     = false
    enable_exif = false

[caches.images]
    maxAge = "4320h"  # 6 months
```

## 📝 Content Management

- Images are cached for 6 months for optimal performance
- All images should be in WebP format
- Gallery folders should have descriptive names
- Each gallery requires an `index.md` with proper front matter

## 🤝 Contributing

This is a personal portfolio site, but if you notice any issues or have suggestions for improvements, please feel free to reach out.

## 📧 Contact

- **Author**: Kelvin Martin
- **Email**: contact@kelvin-martin.com
- **Website**: https://www.kelvin-martin.com/

## 📄 License

This project contains personal artwork and content. Please contact the author for usage permissions.