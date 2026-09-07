# BDS Lab website

Initial static website for the Biomedical Data Science Laboratory. The site is intentionally lightweight: it has no framework or package dependencies and can be deployed directly to GitHub Pages.

## Pages

- Home
- Research
- People
- Publications
- News
- Contact

## Preview locally with Docker and PowerShell

Open PowerShell in the repository folder and run:

```powershell
.\preview.ps1
```

The site opens at <http://localhost:8080>. Because the project folder is mounted into the container, HTML, CSS, and JavaScript changes appear after refreshing the browser.

To stop the preview:

```powershell
.\stop-preview.ps1
```

You can also use Docker Compose directly:

```powershell
docker compose up --build
```

## Deploy to GitHub Pages

1. Create the GitHub user or organization repository that will host the site. For a root site, its name must be `<account-name>.github.io`.
2. Copy the contents of this folder into the repository root. Do not place this folder inside another `site` directory.
3. Commit and push to the `main` branch.
4. In **Settings → Pages**, choose **GitHub Actions** as the source.
5. Open the **Actions** tab and wait for **Deploy website to GitHub Pages** to finish.

This repository uses the official GitHub Pages artifact workflow, so do not select `Deploy from a branch`.

## Update content

- Shared styling: `assets/css/styles.css`
- Navigation and page content: each `.html` file
- Team listing: `people.html`
- Research areas: `research.html` and the research section in `index.html`
- Publication list: `publications.html`
- Contact information: `contact.html`
- Mobile navigation behavior: `assets/js/main.js`
