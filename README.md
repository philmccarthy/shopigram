<!-- PROJECT HEAD -->
<br />
<p align="center">
  <h3 align="center">Shopigram</h3>

  <p align="center">
    A weekend project exploring Rails, ActiveStorage & AWS S3
    <br />
    <h2 align="center">
      <a href="https://shopigram-app.herokuapp.com/">View Demo Deployed on Heroku</a>
    </h2>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#future-ideas">Future Ideas</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Shopigram is an image repository app that I built for Shopify's Summer 2021 internship challenge. The app allows a visitor to create an account, upload images, and see posts from the community.

### Features

* User authentication with BCrypt
* ActiveStorage file upload & `has_many_attached` associations with `User`
* Secure file upload & storage on Amazon Web Services (S3)
  * Single & bulk upload

### Built With

* [Ruby on Rails](https://rubyonrails.org/)
* [rspec-rails](https://github.com/rspec/rspec-rails)
* [Postgresql](https://www.postgresql.org/)
* [Bulma CSS Framework](https://bulma.io/)

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites
* Ruby 2.5.3
* Rails 5.2.4.4

I built Shopigram while enrolled in [Turing School](https://turing.io/)'s backend engineering program (although this is not a Turing project). The curriculum is currently aligned with these versions of Ruby & Rails.

### Installation

To see the Shopigram app working in a local development environment:

1. Clone the repo
   ```sh
   git clone https://github.com/philmccarthy/shopigram.git
   cd shopigram
   ```
2. Bundle
   ```sh
   bundle install
   ```
3. Run the test suite
    ```sh
    bundle exec rspec
    ```
4. Start a local server
   ```sh
   rails server
   ```
5. In your browser, navigate to localhost:3000

<!-- ROADMAP -->
## Future Ideas
Areas for future development:

* Implement additional CRUD functionality for Users & Images
* Improve image upload validations
* Expand user features
  * user show page with permissions
  * enhance secuity & privacy
* Upgrade to Rails 6
  * use ActiveStorage & image_processing features added since 5.2
* Optimize performance
* Improve sad path testing

<!-- CONTACT -->
## Contact

Phil McCarthy - [hi@philmcarthy.dev](mailto:hi@philmccarthy.dev)

Project Link: [https://github.com/philmccarthy/shopigram](https://github.com/philmccarthy/shopigram)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [bcrypt-ruby](https://github.com/codahale/bcrypt-ruby)
* [aws-sdk-ruby](https://github.com/aws/aws-sdk-ruby)
* [mini-magick](https://github.com/minimagick/minimagick)
* [simplecov](https://github.com/simplecov-ruby/simplecov)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [capybara](https://github.com/teamcapybara/capybara)
* [bulma-rails](https://github.com/joshuajansen/bulma-rails)
