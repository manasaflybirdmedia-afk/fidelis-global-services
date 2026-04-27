Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$PhoneDisplay = '+971 50 236 1789'
$PhoneHref = '+971502361789'
$Email = 'info@fidelisglobalservices.com'
$WaBase = 'https://wa.me/971502361789?text='

function Get-Header {
@"
<header class="header" id="top">
  <div class="container header-inner">
    <a class="brand" href="/">
      <img class="brand-logo" src="/media/logo-wide.svg" alt="Fidelis Global Services" />
    </a>
    <button class="nav-toggle" aria-label="Toggle navigation" aria-expanded="false">
      <span></span><span></span><span></span>
    </button>
    <nav class="nav" id="main-nav" aria-label="Primary navigation">
      <a href="/">Home</a>
      <a href="/#services">Services</a>
      <a href="/#countries">Countries</a>
      <a href="/#why-us">Why Us</a>
      <a href="/#contact">Contact</a>
    </nav>
    <div class="action-group">
      <a class="btn btn-gold js-consult-btn" href="tel:$PhoneHref" data-phone="$PhoneHref" data-wa="$($WaBase + [uri]::EscapeDataString('Hello Fidelis Global Services, I would like a free consultation.'))" aria-label="Free Consultation - call or WhatsApp">&#x1F4DE; Free Consultation</a>
    </div>
  </div>
</header>
"@
}

function Get-Footer {
@"
<footer class="footer">
  <div class="container footer-main">
    <div class="footer-brand">
      <a class="brand" href="/"><img class="brand-logo footer-logo" src="/media/logo-wide.svg" alt="Fidelis Global Services" /></a>
      <p>Your trusted partner for passport, visa, travel, and immigration assistance worldwide.</p>
      <div class="footer-contact-links">
        <a href="tel:$PhoneHref">$PhoneDisplay</a>
        <a href="mailto:$Email">$Email</a>
      </div>
    </div>
    <div class="footer-col">
      <h4>Services</h4>
      <ul>
        <li><a href="/services/tourist-visas/">Tourist Visa</a></li>
        <li><a href="/services/visit-visas/">Visit Visa</a></li>
        <li><a href="/services/study-visas/">Study Visa</a></li>
        <li><a href="/services/work-visa-assistance/">Work Visa Assistance</a></li>
        <li><a href="/services/business-setup-assistance/">Business Setup Assistance</a></li>
      </ul>
    </div>
    <div class="footer-col">
      <h4>Countries</h4>
      <ul>
        <li><a href="/countries/united-kingdom/">United Kingdom</a></li>
        <li><a href="/countries/united-states/">United States</a></li>
        <li><a href="/countries/australia/">Australia</a></li>
        <li><a href="/countries/uae/">UAE</a></li>
        <li><a href="/countries/canada/">Canada</a></li>
        <li><a href="/countries/europe/">Europe</a></li>
      </ul>
    </div>
    <div class="footer-col">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="/">Home</a></li>
        <li><a href="/#services">Services</a></li>
        <li><a href="/#countries">Countries</a></li>
        <li><a href="/#why-us">Why Us</a></li>
        <li><a href="/#contact">Contact</a></li>
      </ul>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container footer-bottom-inner">
      <span>&copy; 2026 Fidelis Global Services</span>
      <span>Designed by <a href="https://flybirdmedia.com" target="_blank" rel="noopener">Fly Bird Media Team</a></span>
    </div>
  </div>
</footer>
<a class="wa-float" href="$($WaBase + [uri]::EscapeDataString('Hello Fidelis Global Services'))" target="_blank" rel="noopener" aria-label="Chat on WhatsApp">
  <svg viewBox="0 0 24 24" fill="currentColor" width="28" height="28"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
</a>
<script src="/scripts.js"></script>
"@
}

function Get-StatsPanel {
@"
        <div class="why-us-stats reveal reveal-delay-1">
          <div class="trust-stat-big">
            <strong>95%</strong>
            <span>Success Rate</span>
            <p>Across all visa categories and countries</p>
          </div>
          <div class="trust-stats-row">
            <div class="trust-stat"><strong>10K+</strong><span>Happy Clients</span></div>
            <div class="trust-stat"><strong>15+</strong><span>Countries</span></div>
            <div class="trust-stat"><strong>10+</strong><span>Years Experience</span></div>
            <div class="trust-stat"><strong>24/7</strong><span>Support</span></div>
          </div>
        </div>
"@
}

function Get-ProcessSection {
  param([string]$Title)

@"
  <section class="section section-off">
    <div class="container">
      <div class="section-hd reveal">
        <span class="eyebrow eyebrow-dark">How It Works</span>
        <h2>Your $Title Journey in 4 Steps</h2>
        <p>We simplify every stage with clear guidance, documentation support, and responsive updates.</p>
      </div>
      <div class="process-track">
        <div class="pstep reveal"><div class="pnum">01</div><h3>Consultation</h3><p>We assess your profile and recommend the most suitable route for your goals.</p></div>
        <div class="pstep reveal reveal-delay-1"><div class="pnum">02</div><h3>Documentation</h3><p>Our team prepares a clean checklist and reviews every required document.</p></div>
        <div class="pstep reveal reveal-delay-2"><div class="pnum">03</div><h3>Filing Support</h3><p>We help you submit a complete application with accurate, timely guidance.</p></div>
        <div class="pstep reveal reveal-delay-3"><div class="pnum">04</div><h3>Post-Submission</h3><p>We stay with you through updates, decision support, and next-step planning.</p></div>
      </div>
    </div>
  </section>
"@
}

function Get-CtaSection {
  param([string]$Title)

  $waUrl = $WaBase + [uri]::EscapeDataString("I need help with $Title")

@"
  <section class="cta-banner">
    <div class="container">
      <div class="section-hd reveal" style="margin-bottom:28px;">
        <span class="eyebrow eyebrow-white">Get Started</span>
        <h2 style="color:#fff;">Ready to move forward?</h2>
        <p>Speak with our team for clear next steps, timelines, and documentation guidance.</p>
      </div>
      <div class="cta-actions reveal">
        <a class="btn btn-gold" href="/#contact">Book Free Consultation</a>
        <a class="btn btn-outline-white" href="$waUrl" target="_blank" rel="noopener">&#x1F4AC; WhatsApp Us</a>
      </div>
    </div>
  </section>
"@
}

function Build-Page {
  param(
    [string]$PageTitle,
    [string]$MetaDescription,
    [string]$Eyebrow,
    [string]$HeroTitle,
    [string]$HeroDescription,
    [string]$HeroImage,
    [string]$SecondaryLabel,
    [string]$SecondaryHref,
    [string]$SectionLabel,
    [string]$SectionTitle,
    [string]$SectionDescription,
    [string[]]$Features,
    [string]$JourneyTitle
  )

  $Header = Get-Header
  $Footer = Get-Footer
  $Stats = Get-StatsPanel
  $Process = Get-ProcessSection -Title $JourneyTitle
  $Cta = Get-CtaSection -Title $JourneyTitle
  $FeaturesHtml = ($Features | ForEach-Object { '              <li><span class="trust-check">&#x2714;</span> ' + $_ + '</li>' }) -join "`n"

@"
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>$PageTitle</title>
  <meta name="description" content="$MetaDescription" />
  <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="/styles.css" />
</head>
<body>
$Header
<main>
  <section class="page-hero">
    <div class="page-hero-bg" style="background-image:url('/media/$HeroImage');"></div>
    <div class="page-hero-overlay"></div>
    <div class="container">
      <div class="page-hero-content reveal">
        <span class="eyebrow eyebrow-white">$Eyebrow</span>
        <h1>$HeroTitle</h1>
        <p>$HeroDescription</p>
        <div class="page-hero-actions">
          <a class="btn btn-gold" href="/#contact">Book Free Consultation</a>
          <a class="btn btn-outline-white" href="$SecondaryHref">$SecondaryLabel</a>
        </div>
      </div>
    </div>
  </section>

  <section class="section section-white">
    <div class="container">
      <div class="why-us-grid">
        <div class="why-us-content reveal">
          <span class="eyebrow eyebrow-dark">$SectionLabel</span>
          <h2>$SectionTitle</h2>
          <p>$SectionDescription</p>
          <ul class="trust-list">
$FeaturesHtml
          </ul>
        </div>
$Stats
      </div>
    </div>
  </section>

$Process

$Cta
</main>
$Footer
</body>
</html>
"@
}

$Pages = @(
  @{
    Path = Join-Path $Root 'services\tourist-visas\index.html'
    PageTitle = 'Tourist Visa Services | Fidelis Global Services'
    MetaDescription = 'Short-stay tourist visa support for holiday travel, family visits, and destination-specific documentation guidance.'
    Eyebrow = 'Tourist Visa'
    HeroTitle = 'Smooth tourist visa guidance for holidays, visits, and short-stay travel.'
    HeroDescription = 'We help travellers prepare clean tourist visa applications with clear documentation guidance, itinerary support, and submission readiness.'
    HeroImage = '04915694-4512-4990-a07a-b7a840da07cb.png'
    SecondaryLabel = 'All Services'
    SecondaryHref = '/#services'
    SectionLabel = 'What We Offer'
    SectionTitle = 'Tourist visa support built for clear travel plans and cleaner documentation.'
    SectionDescription = 'Our team helps leisure travellers and family visitors prepare well-structured applications with the right supporting documents and timelines.'
    JourneyTitle = 'Tourist Visa'
    Features = @(
      'Holiday and family-visit visa guidance',
      'Travel itinerary and hotel booking support',
      'Documentation checklist for short-stay travel',
      'Financial proof and travel history review',
      'Destination-specific application guidance',
      'Submission-readiness check before filing',
      'Support for reapplication after refusal where applicable'
    )
  },
  @{
    Path = Join-Path $Root 'services\visit-visas\index.html'
    PageTitle = 'Visit Visa Assistance | Fidelis Global Services'
    MetaDescription = 'Visit visa assistance for family visits, events, short stays, and destination-specific documentation guidance.'
    Eyebrow = 'Visit Visa'
    HeroTitle = 'Clear visit visa assistance for family visits, events, and short stays.'
    HeroDescription = 'We help applicants prepare clean visit visa files with practical document support, travel-plan review, and submission support.'
    HeroImage = 'hero-bg-S6wG8xwz.jpg'
    SecondaryLabel = 'All Services'
    SecondaryHref = '/#services'
    SectionLabel = 'What We Offer'
    SectionTitle = 'Visit visa support focused on purpose, proof, and presentation.'
    SectionDescription = 'Our team helps you prepare a visit visa application that clearly explains your travel purpose, stay duration, and supporting documents.'
    JourneyTitle = 'Visit Visa'
    Features = @(
      'Family visit and short-stay visa guidance',
      'Purpose-of-visit and itinerary review',
      'Host, invitation, and supporting document support',
      'Financial proof and travel history review',
      'Destination-specific checklist preparation',
      'Application form and appointment guidance',
      'Refusal review and reapplication support where applicable'
    )
  },
  @{
    Path = Join-Path $Root 'services\study-visas\index.html'
    PageTitle = 'Study Visa Services | Fidelis Global Services'
    MetaDescription = 'Complete study visa support for admissions, documentation, financial file review, interview readiness, and pre-departure guidance.'
    Eyebrow = 'Study Visa'
    HeroTitle = 'Confident study visa guidance for your education abroad plans.'
    HeroDescription = 'From admissions and financial documentation to interview preparation and pre-departure support, we help students move forward with clarity.'
    HeroImage = '4014b254-d8f7-408c-a2b5-24423fec3d4c.png'
    SecondaryLabel = 'All Services'
    SecondaryHref = '/#services'
    SectionLabel = 'What We Offer'
    SectionTitle = 'Study visa support built around real application requirements.'
    SectionDescription = 'Our team helps you prepare a strong study visa file with practical support at every stage.'
    JourneyTitle = 'Study Visa'
    Features = @(
      'Course and institution shortlisting support',
      'Documentation checklist and application guidance',
      'Financial file review and statement support',
      'Statement of purpose and interview preparation',
      'Country-specific compliance guidance',
      'Pre-departure briefing and travel readiness',
      'Support for refusals and reapplications'
    )
  },
  @{
    Path = Join-Path $Root 'services\work-visa-assistance\index.html'
    PageTitle = 'Work Visa Assistance | Fidelis Global Services'
    MetaDescription = 'Work visa assistance for eligibility checks, employer-linked documents, application preparation, and destination-specific filing support.'
    Eyebrow = 'Work Visa Assistance'
    HeroTitle = 'Practical work visa assistance for employment-linked opportunities.'
    HeroDescription = 'We help applicants prepare employer-linked documentation, understand visa requirements, and move through work visa applications with clearer next steps.'
    HeroImage = '9b6c3b03-4b05-41d8-b54f-6e91965b8510.jpg'
    SecondaryLabel = 'All Services'
    SecondaryHref = '/#services'
    SectionLabel = 'What We Offer'
    SectionTitle = 'Work visa support for applicants, employees, and skilled professionals.'
    SectionDescription = 'Our team helps you organize the documents and application details needed for work-related visa categories.'
    JourneyTitle = 'Work Visa'
    Features = @(
      'Work visa eligibility and profile review',
      'Employer-linked document support',
      'Job offer and supporting record review',
      'Application form and filing support',
      'Country-specific requirement guidance',
      'Dependent and family inclusion guidance where available',
      'Post-decision and next-step support'
    )
  },
  @{
    Path = Join-Path $Root 'services\business-setup-assistance\index.html'
    PageTitle = 'Business Setup Assistance | Fidelis Global Services'
    MetaDescription = 'Business setup assistance for company formation planning, investor documentation, business mobility, and residency-linked next steps.'
    Eyebrow = 'Business Setup Assistance'
    HeroTitle = 'Business setup assistance for founders, investors, and expansion plans.'
    HeroDescription = 'We support clients with business setup planning, company-linked documentation, investor route guidance, and practical next-step coordination.'
    HeroImage = 'ada808b9-7582-441b-b8d0-33fd34505080.jpg'
    SecondaryLabel = 'All Services'
    SecondaryHref = '/#services'
    SectionLabel = 'What We Offer'
    SectionTitle = 'Business setup support aligned to your expansion or investment goals.'
    SectionDescription = 'Our team helps you understand requirements, prepare documents, and plan the right setup pathway for your business goals.'
    JourneyTitle = 'Business Setup'
    Features = @(
      'Business setup and route planning',
      'Investor and founder documentation guidance',
      'Company-linked visa and residency guidance',
      'Source-of-funds and supporting record review',
      'Business activity and structure discussion',
      'Family inclusion planning where available',
      'Next-step coordination after approval or setup'
    )
  },
  @{
    Path = Join-Path $Root 'countries\united-kingdom\index.html'
    PageTitle = 'Fidelis Global Services'
    MetaDescription = 'UK visa support for student, business, skilled, and settlement pathways.'
    Eyebrow = 'United Kingdom'
    HeroTitle = 'Trusted UK visa guidance for study, business, skilled pathways, and settlement plans.'
    HeroDescription = 'We help applicants understand UK routes clearly, prepare strong documentation, and move through the process with practical support.'
    HeroImage = '7b4d535a-b8de-4c70-9d37-5727eb49f371.jpg'
    SecondaryLabel = 'All Countries'
    SecondaryHref = '/#countries'
    SectionLabel = 'Visa Pathways'
    SectionTitle = 'United Kingdom pathways we commonly support.'
    SectionDescription = 'We assist with mainstream UK categories for students, business travellers, professionals, and long-term settlement planning.'
    JourneyTitle = 'UK Visa'
    Features = @(
      'Study visa support for UK institutions',
      'Business visitor and founder pathway guidance',
      'Skilled and professional pathway planning',
      'Family visa and dependent support',
      'Document review before submission',
      'Interview and compliance preparation',
      'Settlement and long-term planning guidance'
    )
  },
  @{
    Path = Join-Path $Root 'countries\united-states\index.html'
    PageTitle = 'Fidelis Global Services'
    MetaDescription = 'US visa support for student, business, investor, and professional pathways.'
    Eyebrow = 'United States'
    HeroTitle = 'Focused US visa guidance for study, business, and professional pathways.'
    HeroDescription = 'We support applicants with structured documentation, interview preparation, and route planning across major US categories.'
    HeroImage = 'ada808b9-7582-441b-b8d0-33fd34505080.jpg'
    SecondaryLabel = 'All Countries'
    SecondaryHref = '/#countries'
    SectionLabel = 'Visa Pathways'
    SectionTitle = 'United States pathways we commonly support.'
    SectionDescription = 'Our team helps clients prepare carefully for the documentation-heavy nature of US applications and interviews.'
    JourneyTitle = 'US Visa'
    Features = @(
      'Employment-based pathway guidance',
      'Study visa preparation and interview support',
      'Business travel visa guidance',
      'Investor and founder pathway overview',
      'Documentation and consistency review',
      'Interview readiness support',
      'Refusal review and reapplication strategy'
    )
  },
  @{
    Path = Join-Path $Root 'countries\australia\index.html'
    PageTitle = 'Fidelis Global Services'
    MetaDescription = 'Australia visa support for PR, student, and skilled migration pathways.'
    Eyebrow = 'Australia'
    HeroTitle = 'Australia visa guidance for PR, study, and skilled migration opportunities.'
    HeroDescription = 'We help applicants navigate Australia-focused documentation, skills-based planning, and route selection for study, migration, and PR.'
    HeroImage = 'ada808b9-7582-441b-b8d0-33fd34505080.jpg'
    SecondaryLabel = 'All Countries'
    SecondaryHref = '/#countries'
    SectionLabel = 'Visa Pathways'
    SectionTitle = 'Australia pathways we commonly support.'
    SectionDescription = 'Australia remains a strong destination for study, skilled migration, and long-term PR planning.'
    JourneyTitle = 'Australia Visa'
    Features = @(
      'PR profile review and migration planning',
      'Study visa guidance for Australian institutions',
      'Skilled migration and employer-sponsored pathway support',
      'Points-based route guidance',
      'Documentation and compliance review',
      'Family inclusion planning',
      'Post-decision next-step guidance'
    )
  },
  @{
    Path = Join-Path $Root 'countries\uae\index.html'
    PageTitle = 'Fidelis Global Services'
    MetaDescription = 'UAE visa support for business, professional, and residency-focused pathways.'
    Eyebrow = 'UAE'
    HeroTitle = 'UAE visa guidance for business, professional, and residency pathways.'
    HeroDescription = 'We support clients planning UAE business activity, professional moves, and residency-aligned applications with practical documentation guidance.'
    HeroImage = '5166189b-3604-42e7-8faa-12009e8766ea.jpg'
    SecondaryLabel = 'All Countries'
    SecondaryHref = '/#countries'
    SectionLabel = 'Visa Pathways'
    SectionTitle = 'UAE pathways we commonly support.'
    SectionDescription = 'The UAE remains a strong destination for entrepreneurs, professionals, and clients seeking structured residency options.'
    JourneyTitle = 'UAE Visa'
    Features = @(
      'Professional pathway guidance for UAE opportunities',
      'Business and investor visa support',
      'Residency-aligned documentation guidance',
      'Company-linked processing support',
      'Compliance and submission review',
      'Family entry and dependent planning',
      'Business route coordination support'
    )
  },
  @{
    Path = Join-Path $Root 'countries\canada\index.html'
    PageTitle = 'Fidelis Global Services'
    MetaDescription = 'Canada visa support for PR, student, and employment-linked pathways.'
    Eyebrow = 'Canada'
    HeroTitle = 'Canada-focused guidance for PR, study, and employment-linked pathways.'
    HeroDescription = 'We help clients explore Canadian PR routes, student applications, and professional mobility options with structured guidance.'
    HeroImage = '2a9ad507-2700-4990-bf79-2475ae3ab9bd.jpg'
    SecondaryLabel = 'All Countries'
    SecondaryHref = '/#countries'
    SectionLabel = 'Visa Pathways'
    SectionTitle = 'Canada pathways we commonly support.'
    SectionDescription = 'Canada remains a strong destination for permanent residency planning, international study, and employment-linked routes.'
    JourneyTitle = 'Canada Visa'
    Features = @(
      'PR route planning and profile review',
      'Study visa support for Canada-based institutions',
      'Employment-linked route guidance',
      'Express Entry and documentation readiness guidance',
      'Supporting document review before filing',
      'Family inclusion planning',
      'Refusal review and reapplication support'
    )
  },
  @{
    Path = Join-Path $Root 'countries\europe\index.html'
    PageTitle = 'Fidelis Global Services'
    MetaDescription = 'Europe-focused support for study visa, professional mobility, and residency-oriented pathways.'
    Eyebrow = 'Europe'
    HeroTitle = 'Europe-focused support for study, professional mobility, and residency pathways.'
    HeroDescription = 'We guide clients through selected European destinations with practical support for student pathways, professional mobility, and longer-term residency planning.'
    HeroImage = '7a5fab8b-ff21-4c05-8ab9-b8f1a202ab6c.jpg'
    SecondaryLabel = 'All Countries'
    SecondaryHref = '/#countries'
    SectionLabel = 'Visa Pathways'
    SectionTitle = 'European pathways we commonly support.'
    SectionDescription = 'For Europe-focused cases, we help clients choose suitable destinations and prepare cleaner applications for study, mobility, and residency routes.'
    JourneyTitle = 'Europe Visa'
    Features = @(
      'Study visa guidance for selected European destinations',
      'Professional mobility support for employer-linked pathways',
      'Residency and long-term planning guidance',
      'Destination-specific documentation review',
      'Travel history and profile alignment support',
      'Family application planning where applicable',
      'Support for route selection across multiple countries'
    )
  }
)

foreach ($Page in $Pages) {
  $Directory = Split-Path -Parent $Page.Path
  if (-not (Test-Path $Directory)) {
    New-Item -ItemType Directory -Path $Directory -Force | Out-Null
  }

  $Html = Build-Page `
    -PageTitle $Page.PageTitle `
    -MetaDescription $Page.MetaDescription `
    -Eyebrow $Page.Eyebrow `
    -HeroTitle $Page.HeroTitle `
    -HeroDescription $Page.HeroDescription `
    -HeroImage $Page.HeroImage `
    -SecondaryLabel $Page.SecondaryLabel `
    -SecondaryHref $Page.SecondaryHref `
    -SectionLabel $Page.SectionLabel `
    -SectionTitle $Page.SectionTitle `
    -SectionDescription $Page.SectionDescription `
    -Features $Page.Features `
    -JourneyTitle $Page.JourneyTitle

  [System.IO.File]::WriteAllText($Page.Path, $Html, [System.Text.Encoding]::UTF8)
  Write-Host "Updated $($Page.Path.Replace($Root, '.'))"
}
