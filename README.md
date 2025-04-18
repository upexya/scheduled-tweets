# 🐦 Scheduled Tweets

Hey! 👋  
This is my first ever attempt at building something with **Ruby on Rails** — so I made this little app called **Scheduled Tweets**. It's a simple web app where users can connect their Twitter account and schedule tweets to be posted in the future. Mainly created it to learn the Rails MVC pattern and get hands-on with some cool concepts.

<img src="https://github.com/user-attachments/assets/821c7d82-e6cb-43c7-a697-339cff0670ce" width=400>

---

## 🚀 What It Does

- Users can **register, log in, reset their password**, and update account info.
- Connect your Twitter account using **OmniAuth** (with Twitter OAuth).
- Go to the **Tweets** page, hit **"Schedule a tweet"**, write your post and pick a future date.
- The app will automatically post it to your Twitter at the right time using background jobs.
- View, edit, or delete your scheduled tweets.
- Deleting your Twitter connection will remove all related scheduled tweets.

---

## 🧠 Why I Built It

I wanted to learn:

- How the **MVC** (Model-View-Controller) structure works in Rails.
- Setting up basic **user authentication**.
- Connecting external accounts via **OmniAuth** (`omniauth-twitter`).
- Managing **background jobs** using **Sidekiq**.
- Storing and accessing secrets using **Rails credentials**.
- Working with **SQLite3** as the database (perfect for local dev).
- Writing model validations, handling associations, and building RESTful routes.

---

## ⚙️ Stack

- Ruby on Rails
- SQLite3
- OmniAuth (Twitter)
- Sidekiq + Redis
- Bootstrap 5

---

## 🛠️ Getting Started

### 🧰 Ruby Version

- Ruby `3.x` (Tested with 3.2+)
- Rails `~> 8.0.1`

### 📦 System Dependencies

Make sure the following are installed on your system:

- Ruby
- Bundler
- Node.js & Yarn (for Rails asset building if needed)
- SQLite3
- Redis (required for Sidekiq)
- Git

### ⚙️ Configuration

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/scheduled-tweets.git
   cd scheduled-tweets
   ```

2. Install Ruby dependencies:

   ```
   bundle install
   ```

3. Add your Twitter API credentials by editing Rails credentials:

   ```
   EDITOR="code --wait" rails credentials:edit
   ```

   Add:

   ```
   twitter:
       api_key: YOUR_TWITTER_API_KEY
       api_secret: YOUR_TWITTER_API_SECRET
   ```

### 🗃️ Database Creation

Run the following command to create and set up the SQLite3 database:

```
rails db:setup
```

This will create the database, run migrations, and seed any default data if you have seeds set up.

### 🏁 Database Initialization

To ensure everything's ready:

1. Run pending migrations (if any):

```
rails db:migrate
```

2. Start the Rails server:

```
rails server
```

Visit http://localhost:3000 in your browser to see the app in action.
