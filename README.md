# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Images

![Welcome Page](https://github.com/SirGraybon/Jungle-rails/blob/master/images/Screenshot%202023-06-07%20214050.png?raw=true)
![Home page](https://github.com/SirGraybon/Jungle-rails/blob/master/images/Screenshot%202023-06-07%20214529.png?raw=true)
![Cart](https://github.com/SirGraybon/Jungle-rails/blob/master/images/Screenshot%202023-06-07%20214445.png?raw=true)

 
 ## About
 Welcome to Jungle, your one-stop online plant store for all your greenery needs! We are passionate about bringing the beauty and tranquility of nature into your home, and we believe that plants have the power to transform any space into a vibrant and thriving oasis.

At Jungle, we curate a wide selection of plants, ranging from classic favorites to rare and exotic species, ensuring that there is something for every plant lover. Whether you are a seasoned plant enthusiast or just starting your journey into the world of indoor gardening, we are here to assist you in finding the perfect plants to suit your unique style and preferences.

Quality is our utmost priority, and we take great care in sourcing our plants from trusted growers who share our commitment to sustainability and ethical practices. Each plant is hand-picked and inspected to ensure it meets our rigorous standards of health and vitality. We want to provide you with not only beautiful plants but also ones that are healthy and thrive in their new environment.

At Jungle, we understand that buying plants online can be an overwhelming experience. That's why our knowledgeable team of plant enthusiasts is always ready to provide personalized guidance and assistance. From choosing the right plant for your living space to offering tips on care and maintenance, we are here to support you every step of the way. We want you to feel confident and empowered as you embark on your plant parenthood journey.

In addition to our wide selection of plants, we also offer a range of carefully curated accessories and plant care essentials. From stylish pots and planters to organic fertilizers and tools, we have everything you need to create a nurturing and stylish environment for your beloved plants.

At Jungle, we strive to create a seamless and enjoyable shopping experience for our customers. Our user-friendly website is designed to make browsing and purchasing a breeze, and our secure payment options ensure that your transactions are safe and protected.

We are committed to customer satisfaction and go above and beyond to ensure that you are delighted with your purchase. From the moment you place your order to the day your plants arrive at your doorstep, we provide timely updates and support to ensure a smooth delivery process.

Happy shopping and enjoy your journey with Jungle and your new plant companions!