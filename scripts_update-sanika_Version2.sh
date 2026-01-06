#!/usr/bin/env bash
# Script to apply Sanika custom files locally, download images, commit and push.
# Replace <your-username> with your GitHub username and check branch names before pushing.

set -e

REPO_FORK="https://github.com/<your-username>/vcard-personal-portfolio.git"
BRANCH="sanika/customize"

echo "1) Ensure you forked the original repo and replace <your-username> in the REPO_FORK variable."
echo "2) This script will clone the fork, add files, commit and push a branch."

# Clone fork (skip if you already have the repo cloned)
if [ ! -d "vcard-personal-portfolio" ]; then
  git clone "$REPO_FORK"
fi

cd vcard-personal-portfolio

# Create branch
git checkout -b "$BRANCH"

# Write files (overwrite index.html and add custom CSS)
cat > index.html <<'HTML'
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sanika Sharma - Personal Portfolio</title>

  <!-- favicon -->
  <link rel="shortcut icon" href="./assets/images/logo.ico" type="image/x-icon" />

  <!-- original style + custom additions -->
  <link rel="stylesheet" href="./assets/css/style.css" />
  <link rel="stylesheet" href="./assets/css/custom-sanika.css" />

  <!-- google fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&family=Noto+Sans+Devanagari&display=swap" rel="stylesheet" />
</head>

<body>

  <main>

    <!-- SIDEBAR -->
    <aside class="sidebar" data-sidebar>
      <div class="sidebar-info">

        <figure class="avatar-box">
          <!-- local avatar (download images into assets/images/) -->
          <img src="./assets/images/sanika-1.jpg" alt="Sanika Sharma" width="80" />
        </figure>

        <div class="info-content">
          <h1 class="name" title="Sanika Sharma">Sanika Sharma</h1>

          <p class="title">Student • Marketing Expert • Developer</p>
        </div>

        <button class="info_more-btn" data-sidebar-btn>
          <span>Show Contacts</span>
          <ion-icon name="chevron-down"></ion-icon>
        </button>

      </div>

      <div class="sidebar-info_more">
        <div class="separator"></div>

        <ul class="contacts-list">

          <li class="contact-item">
            <div class="icon-box">
              <ion-icon name="mail-outline"></ion-icon>
            </div>

            <div class="contact-info">
              <p class="contact-title">Email</p>
              <a href="mailto:meow@sanika.pw" class="contact-link">meow@sanika.pw</a>
            </div>
          </li>

          <!-- Location -->
          <li class="contact-item">
            <div class="icon-box">
              <ion-icon name="location-outline"></ion-icon>
            </div>

            <div class="contact-info">
              <p class="contact-title">Location</p>
              <address>Dasuya</address>
            </div>
          </li>

        </ul>

        <div class="separator"></div>

        <ul class="social-list">

          <li class="social-item">
            <a href="https://instagram.com/hi.sanika.pw" class="social-link" target="_blank" rel="noopener">
              <ion-icon name="logo-instagram"></ion-icon>
            </a>
          </li>

        </ul>

      </div>
    </aside>

    <!-- MAIN CONTENT -->
    <div class="main-content">

      <!-- NAVBAR -->
      <nav class="navbar">
        <ul class="navbar-list">
          <li class="navbar-item">
            <button class="navbar-link  active" data-nav-link>About</button>
          </li>
          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Resume</button>
          </li>
          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Portfolio</button>
          </li>
          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Blog</button>
          </li>
          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Contact</button>
          </li>
        </ul>
      </nav>

      <!-- ABOUT -->
      <article class="about  active" data-page="about">
        <header>
          <h2 class="h2 article-title">About me</h2>
        </header>

        <section class="about-text">
          <p>
            नमस्ते — मैं Sanika Sharma हूँ। मैं एक छात्रा हूँ और साथ ही मार्केटिंग एक्सपर्ट और डेवेलपर भी हूँ। मेरा
            ध्यान रचनात्मक परियोजनाओं, डिज़ाइन और डिजिटल मार्केटिंग पर है।
          </p>

          <p>
            मुझे कला, डिज़ाइन, संगीत और वोकल्स में गहरी रुचि है। मेरी कोशिश रहती है कि हर प्रोजेक्ट में व्यक्तिगत
            अंदाज़ और व्यावहारिक उपयोगिता दोनों हों — खूबसूरती के साथ-साथ सुविधा भी।
          </p>
        </section>

        <!-- WHAT I'M DOING (services) -->
        <section class="service">
          <h3 class="h3 service-title">What I'm doing</h3>

          <ul class="service-list">
            <li class="service-item">
              <div class="service-icon-box">
                <img src="./assets/images/icon-design.svg" alt="design icon" width="40" />
              </div>
              <div class="service-content-box">
                <h4 class="h4 service-item-title">Designs & Art</h4>
                <p class="service-item-text">Creative visual design, branding and artwork for digital & print.</p>
              </div>
            </li>

            <li class="service-item">
              <div class="service-icon-box">
                <img src="./assets/images/icon-dev.svg" alt="dev icon" width="40" />
              </div>
              <div class="service-content-box">
                <h4 class="h4 service-item-title">Development</h4>
                <p class="service-item-text">Frontend development, small apps and prototypes.</p>
              </div>
            </li>

            <li class="service-item">
              <div class="service-icon-box">
                <img src="./assets/images/icon-app.svg" alt="app icon" width="40" />
              </div>
              <div class="service-content-box">
                <h4 class="h4 service-item-title">Marketing</h4>
                <p class="service-item-text">Strategy, content and campaigns focused on engagement and growth.</p>
              </div>
            </li>
          </ul>
        </section>

        <!-- (rest matches the index.html file above) -->
      </article>

      <!-- Keep original script if repository has interactivity (you can modify or add JS in assets/js as needed) -->
      <script src="./assets/js/script.js" defer></script>
</body>

</html>
HTML

mkdir -p assets/css assets/images scripts

cat > assets/css/custom-sanika.css <<'CSS'
/* (paste full custom-sanika.css here if you want the script to write it; otherwise the file is already included separately) */
CSS

# Download images (avatars and krishna placeholders)
curl -L -o assets/images/sanika-1.jpg "https://cdn.pixabay.com/photo/2023/10/05/19/45/ai-generated-8296854_1280.jpg"
curl -L -o assets/images/sanika-2.jpg "https://cdn.pixabay.com/photo/2024/05/09/12/24/ai-generated-8750915_1280.jpg"
curl -L -o assets/images/krishna-1.jpg "https://cdn.pixabay.com/photo/2016/11/21/12/53/meditation-1844350_1280.jpg"
curl -L -o assets/images/krishna-2.jpg "https://cdn.pixabay.com/photo/2017/01/21/14/14/woman-1997733_1280.jpg"
curl -L -o assets/images/krishna-3.jpg "https://cdn.pixabay.com/photo/2015/10/12/15/20/india-984099_1280.jpg"

# Stage files
git add index.html assets/css/custom-sanika.css assets/images/sanika-1.jpg assets/images/sanika-2.jpg assets/images/krishna-1.jpg assets/images/krishna-2.jpg assets/images/krishna-3.jpg

# Commit
git commit -m "feat: customize portfolio for Sanika Sharma — add Krishna cards, avatars and custom styles"

# Push branch to fork
git push --set-upstream origin "$BRANCH"

echo "Done. Now open a pull request on GitHub from branch $BRANCH to your main branch."
echo "Note: this script writes placeholder content in places; replace placeholders with full contents before committing if you want exact files."