#import "@preview/polylux:0.4.0": *
#import "@preview/friendly-polylux:0.1.0" as friendly
#import friendly: titled-block
#show: friendly.setup.with(
  short-title: [Version Control and Documentation],
  short-speaker: [Spandan Guragain],
)
#set text(size: 30pt)
#show raw: set text(font: "Fantasque Sans Mono")

#friendly.title-slide(
  title: [Importance of Version Control and Documentation],
  speaker: [Spandan Guragain (scientiac)],
  conference: [Technomorph: Introduction to Robots and Robotics],
  speaker-website: "scientiac.space",
  slides-url: "https://github.com/Robotics-Club-IOEPC/doc-templates/blob/main/slides/slides.pdf",
  qr-caption: [#text(font: "FantasqueSansM Nerd Font Mono",[Get this slide and its source code])],
  logo: [#image("logo.png", width: 50%)],
)

#slide[
  = Why Version Control?

  #titled-block(title: [The Problem])[
    - `project_final.zip`
    - `project_final_final.zip`
    - `project_final_v2.zip`
    - `project_final_ACTUALLY_FINAL.zip`
  ]

  #v(1em)
  
  *Sound familiar?* Version control solves this chaos!
]

#slide[
  = What is Version Control? 

  #titled-block(title: [Key Benefits])[
    - *Track changes* over time
    - *Collaborate* with others seamlessly
    - *Revert* to previous versions
    - *Branch* for experiments
    - *Merge* contributions safely
  ]

  #v(1em)
  Think of it as a *time machine* for your code!
]

#slide[
  = Enter Git

  #titled-block(title: [Why Git?])[
    - *Distributed* - Everyone has full history
    - *Fast* - Optimized for performance
    - *Flexible* - Supports any workflow
    - *Industry Standard* - Used everywhere
  ]

  #v(1em)
  
  ```bash
  git init
  git add .
  git commit -m "First commit"
  ```
]

#slide[
  = Git Hosting Platforms

  #grid(
    columns: 2,
    gutter: 2em,
    [
      #titled-block(title: [GitHub])[
        - Most popular for individuals
        - Great for open source
        - Excellent CI/CD
        - Largest git hosting platform
      ]
    ],
    [
      #titled-block(title: [GitLab])[
        - If you are feeling extra adventurous
        - Most FOSS communities use this
        - Free private repos
        - Enterprise features
      ]
    ]
  )

  #v(1em)
  
  *Others:* Codeberg, SourceForge
]

#slide[
  = Learning Git

  #titled-block(title: [Resources to Get Started])[
    - *Interactive:* learngitbranching.js.org
    - *Official:* git-scm.com/doc
    - *GitHub:* GitHub Skills courses
    - *Practice:* Create your first repository!
  ]

  #v(1em)
  
  *Pro tip:* Start with basic `add`, `commit`, `push`, `pull`
]

#slide[
  = Documentation: Your Future Self Will Thank You

  #titled-block(title: [Why Document?])[
    - *Remember* what you did and why
    - *Share* knowledge with others
    - *Professional* portfolio building
    - *Learning* reinforcement
    - *Debugging* becomes easier
  ]

  
  Documentation is *not* just for others—it's for *you*!
]

#slide[
  = What to Document?

  #titled-block(title: [Essential Documentation])[
    - *README.md* - Project overview
    - *Setup instructions* - How to run
    - *API documentation* - How to use
    - *Learning notes* - What you discovered
    - *Decision logs* - Why you chose X over Y
  ]

  #v(1em)
  
  *Remember:* Future you is a different person!
]

#slide[
  = Documentation Tools

  #grid(
    columns: 2,
    gutter: 2em,
    [
      #titled-block(title: [Typst])[
        - Modern markup language
        - Beautiful PDFs
        - Fast compilation
        - Great for reports
      ]
    ],
    [
      #titled-block(title: [LaTeX])[
        - Academic standard
        - Precise formatting
        - Rich ecosystem
        - Publication ready
      ]
    ]
  )

  #v(1em)
  
  *Others:* Markdown, Obsidian, Notion, Sphinx
]

#slide[
  = Typst vs LaTeX: Quick Comparison

  #table(
    columns: 3,
    [*Feature*], [*Typst*], [*LaTeX*],
    [Learning curve], [Gentle], [Steep],
    [Compilation], [Fast], [Slow],
    [Syntax], [Modern], [Verbose],
    [Community], [Growing], [Massive],
    [Use case], [Modern docs], [Academic papers],
  )

  #v(1em)
  
  *Recommendation:* Try Typst first, learn LaTeX for academic work
]

#slide[
  = Best Practices

  #titled-block(title: [Version Control])[
    - Commit *early* and *often*
    - Write *meaningful* commit messages  
    - Use *branches* for features
    - *Pull* before you *push*
  ]
]

#slide[
  = Best Practices

  #titled-block(title: [Documentation])[
    - Write as you *code*
    - Keep it *simple* and *clear*
    - Update when you *change* things
    - Include *examples*
  ]
]

#slide[
  = Getting Started

  #titled-block(title: [Action Items])[
    + Create a *GitHub account*
    + Install *Git* on your machine
    + Make your *first repository*
    + Write a *README.md*

    - Try *Typst* or *LaTeX* for notes
  ]

  #v(1em)
  
  *Start small, be consistent!*
]

#friendly.last-slide(
  title: [See you soon!],
  project-url: "https://github.com/Robotics-Club-IOEPC/doc-templates",
  qr-caption: [#text(font: "FantasqueSansM Nerd Font Mono",[Find the templates for documeting your bootcamp journey here])],
  contact-appeal: [],
  email: "spandan@scientiac.space",
  mastodon: "@iac@polymaths.social",
  website: "scientiac.space"
)
