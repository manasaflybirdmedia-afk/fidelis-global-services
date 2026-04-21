# Build all service and country pages

function Get-PageNav {
    return @'
    <header class="header" id="top">
      <div class="container header-inner">
        <a class="brand" href="/"><img class="brand-logo" src="/media/logo-BsiFmlEp.png" alt="Fidelis Global Services" /></a>
        <button class="nav-toggle" aria-label="Toggle navigation" aria-expanded="false"><span></span><span></span><span></span></button>
        <nav class="nav" id="main-nav" aria-label="Primary navigation">
          <a href="/">Home</a>
          <a href="/#services">Services</a>
          <a href="/#countries">Countries</a>
          <a href="/#contact">Contact</a>
        </nav>
        <div class="action-group"><a class="btn btn-gold" href="/#contact">Free Consultation</a></div>
      </div>
    </header>
'@
}

function Get-PageFooter {
    return @'
    <footer class="footer">
      <div class="container footer-main">
        <div class="footer-brand">
          <a href="/"><img class="brand-logo footer-logo" src="/media/logo-BsiFmlEp.png" alt="Fidelis Global Services" /></a>
          <span class="footer-brand-name">FIDELIS<span>GLOBAL</span> SERVICES</span>
        </div>
        <nav class="footer-nav" aria-label="Footer navigation">
          <a href="/">Home</a>
          <a href="/#services">Services</a>
          <a href="/#countries">Countries</a>
          <a href="/#contact">Contact</a>
        </nav>
      </div>
      <div class="footer-bottom">
        <div class="container footer-bottom-inner">
          <span>&copy; 2026 Fidelis Global Services</span>
        </div>
      </div>
    </footer>
    <a class="wa-float" href="https://wa.me/919876543210?text=Hello%20Fidelis%20Global%20Services" target="_blank" rel="noopener" aria-label="Chat on WhatsApp">
      <svg viewBox="0 0 24 24" fill="currentColor" width="28" height="28"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
    </a>
    <script src="/scripts.js"></script>
'@
}

function Build-ServicePage {
    param($slug, $title, $icon, $tagline, $description, $features, $bgImg)
    
    $nav = Get-PageNav
    $footer = Get-PageFooter
    $featuresHtml = ($features | ForEach-Object { "                <li><span class=`"trust-check`">&#x2714;</span> $_</li>" }) -join "`n"
    
    return @"
<!doctype html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>$title | Fidelis Global Services</title>
    <meta name="description" content="$tagline" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="/styles.css" />
  </head>
  <body>
$nav
    <main>
      <section class="service-hero" style="background-image:url('/media/$bgImg');">
        <div class="service-hero-overlay"></div>
        <div class="service-hero-body">
          <div class="container">
            <div class="service-hero-content reveal">
              <span class="eyebrow">$icon $title</span>
              <h1>$tagline</h1>
              <p>$description</p>
              <div class="hero-actions">
                <a class="btn btn-gold" href="/#contact">Book Free Consultation</a>
                <a class="btn btn-outline-white" href="/#services">All Services</a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="section section-white">
        <div class="container">
          <div class="why-us-grid">
            <div class="why-us-content reveal">
              <span class="eyebrow eyebrow-dark">What We Offer</span>
              <h2>Why Choose Fidelis for $title?</h2>
              <p>Our team of certified immigration consultants brings years of expertise to ensure your application has the best possible chance of success.</p>
              <ul class="trust-list">
$featuresHtml
              </ul>
            </div>
            <div class="why-us-stats reveal reveal-delay-1">
              <div class="trust-stat-big">
                <strong>98%</strong>
                <span>Success Rate</span>
                <p>Across all visa categories and countries</p>
              </div>
              <div class="trust-stats-row">
                <div class="trust-stat"><strong>10K+</strong><span>Happy Clients</span></div>
                <div class="trust-stat"><strong>50+</strong><span>Countries</span></div>
                <div class="trust-stat"><strong>15+</strong><span>Years Exp.</span></div>
                <div class="trust-stat"><strong>24/7</strong><span>Support</span></div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="section section-off">
        <div class="container">
          <div class="section-hd reveal">
            <span class="eyebrow eyebrow-dark">How It Works</span>
            <h2>Your $title Journey in 4 Steps</h2>
            <p>We've streamlined every step so you can focus on your future.</p>
          </div>
          <div class="process-track process-track-4">
            <div class="pstep reveal"><div class="pnum">01</div><h3>Free Consultation</h3><p>Assess eligibility and discuss the right pathway for your goals.</p></div>
            <div class="pstep reveal reveal-delay-1"><div class="pnum">02</div><h3>Document Prep</h3><p>We provide a tailored checklist and help verify all required documents.</p></div>
            <div class="pstep reveal reveal-delay-2"><div class="pnum">03</div><h3>Application Filing</h3><p>Our team submits a complete, reviewed application on your behalf.</p></div>
            <div class="pstep reveal reveal-delay-3"><div class="pnum">04</div><h3>Approval &amp; Support</h3><p>Post-approval guidance and full support until you reach your destination.</p></div>
          </div>
        </div>
      </section>

      <section class="section section-dark">
        <div class="container">
          <div class="section-hd reveal">
            <span class="eyebrow eyebrow-gold">Get Started</span>
            <h2>Ready to Apply for Your $title?</h2>
            <p>Book a free consultation with our experts today.</p>
          </div>
          <div class="cta-actions reveal">
            <a class="btn btn-gold" href="/#contact">Book Free Consultation</a>
            <a class="btn btn-outline-white" href="https://wa.me/919876543210?text=I%20need%20help%20with%20$($title -replace ' ','%20')" target="_blank" rel="noopener">&#x1F4AC; WhatsApp Us</a>
          </div>
        </div>
      </section>
    </main>

$footer
  </body>
</html>
"@
}

# ---- SERVICE PAGES ----

$services = @(
    @{
        slug = "student-visas"
        title = "Student Visas"
        icon = "&#x1F393;"
        tagline = "Complete guidance for study abroad programs in top universities worldwide."
        description = "We support students through every step of the visa process — from choosing the right university to submitting a flawless application and preparing for the embassy interview."
        bgImg = "4014b254-d8f7-408c-a2b5-24423fec3d4c.png"
        features = @(
            "Eligibility assessment and university selection guidance",
            "Complete documentation preparation and review",
            "SOP and financial statement support",
            "Embassy interview coaching",
            "With or without IELTS — we find the right pathway",
            "Post-arrival support and pre-departure briefing",
            "Family visa extensions and dependant applications",
            "Refused cases reviewed and resubmitted successfully"
        )
    },
    @{
        slug = "work-permits"
        title = "Work Permits"
        icon = "&#x1F4BC;"
        tagline = "Skilled & unskilled worker visas with CoS availability and employer tie-ups."
        description = "Whether you're a skilled professional or seeking unskilled work opportunities abroad, our team has established employer networks and CoS availability to fast-track your application."
        bgImg = "7b4d535a-b8de-4c70-9d37-5727eb49f371.jpg"
        features = @(
            "Skilled Worker and unskilled work visa processing",
            "Certificate of Sponsorship (CoS) availability",
            "Employer tie-ups across UK, Canada, Australia &amp; UAE",
            "Priority processing options available",
            "With or without IELTS pathways",
            "Spouse and dependent visa support",
            "Pre-departure briefing and orientation",
            "End-to-end application management"
        )
    },
    @{
        slug = "tourist-visas"
        title = "Tourist Visas"
        icon = "&#x2708;&#xFE0F;"
        tagline = "Hassle-free tourist visa processing with high approval rates."
        description = "Planning a holiday, family visit, or short trip abroad? Our expert team handles all the paperwork so you can focus on your travel plans with confidence."
        bgImg = "04915694-4512-4990-a07a-b7a840da07cb.png"
        features = @(
            "Single and multiple entry tourist visa processing",
            "Schengen, UK, USA, UAE, Australia &amp; more",
            "Fast processing with 5–15 working day turnaround",
            "Document checklist and itinerary planning support",
            "High approval rates across all destinations",
            "Group and family application handling",
            "Travel insurance guidance",
            "Refused cases reviewed and resubmitted"
        )
    },
    @{
        slug = "business-visas"
        title = "Business Visas"
        icon = "&#x1F3E2;"
        tagline = "Investor & entrepreneur visas to launch your business internationally."
        description = "Expand your business internationally or attend conferences, trade shows, and client meetings abroad. We handle investor, entrepreneur, and corporate travel visa applications."
        bgImg = "456981be-04aa-4ec6-a77a-57c9e03a4c77.jpg"
        features = @(
            "Investor and entrepreneur visa pathways",
            "Business visitor and corporate travel visas",
            "UK Innovator Founder and Start-up visas",
            "UAE and GCC business setup visas",
            "Multiple entry long-validity business visas",
            "Company registration and documentation support",
            "Fast-track processing options",
            "Conference and trade show travel visas"
        )
    },
    @{
        slug = "business-setup"
        title = "Business Setup"
        icon = "&#x1F527;"
        tagline = "End-to-end company formation and business setup services abroad."
        description = "From company registration to banking and licensing, we provide complete business setup services in the UK, UAE, Canada, and across Europe — so you can launch with confidence."
        bgImg = "7a5fab8b-ff21-4c05-8ab9-b8f1a202ab6c.jpg"
        features = @(
            "Company registration in UK, UAE, Canada &amp; Europe",
            "Sole trader, LLP, LLC, and PLC formation",
            "Business banking account setup guidance",
            "Trade license and regulatory compliance",
            "Registered office address services",
            "VAT and tax registration support",
            "Employer setup and payroll guidance",
            "Ongoing compliance and annual filing support"
        )
    },
    @{
        slug = "second-passport"
        title = "Second Passport"
        icon = "&#x1F30D;"
        tagline = "Citizenship by investment programs for global mobility and security."
        description = "Gain the freedom to live, work, and travel globally. We guide you through citizenship by investment programs in Caribbean nations, European countries, and beyond."
        bgImg = "7f21cfb9-c507-4323-868c-044c7e8e85e9.jpg"
        features = @(
            "Caribbean citizenship programs (Dominica, St. Kitts, Grenada)",
            "European golden visa pathways (Portugal, Malta, Cyprus)",
            "Investment threshold guidance and due diligence",
            "Visa-free travel to 150+ countries",
            "Family inclusion on single application",
            "No residency requirement programs available",
            "Full legal and documentation support",
            "Confidential and secure processing"
        )
    },
    @{
        slug = "immigration-assistance"
        title = "Immigration Assistance"
        icon = "&#x1F4CB;"
        tagline = "Full immigration support including PR pathways and residency planning."
        description = "Whether you're planning permanent residency, family reunification, or long-term immigration, our certified consultants design a complete strategy tailored to your situation."
        bgImg = "7a5fab8b-ff21-4c05-8ab9-b8f1a202ab6c.jpg"
        features = @(
            "Permanent Residency (PR) pathways for UK, Canada &amp; Australia",
            "Express Entry and Points-Based System guidance",
            "Family reunification and spousal visa applications",
            "Long-term residency and settlement applications",
            "Naturalization and citizenship applications",
            "Immigration appeal and review support",
            "Refused case review and reapplication",
            "End-to-end documentation and filing support"
        )
    }
)

foreach ($svc in $services) {
    $content = Build-ServicePage -slug $svc.slug -title $svc.title -icon $svc.icon -tagline $svc.tagline -description $svc.description -features $svc.features -bgImg $svc.bgImg
    $path = "e:\fidelisglobal\services\$($svc.slug)\index.html"
    [System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
    Write-Host "Written: $path"
}

Write-Host "All service pages done!"
