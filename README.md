# **Rubyrary**

A library showcase website built with Ruby on Rails! To make it look beautiful, Bootstrap was used, along with Cloudinary to process book covers.

## Screenshots

| [![Main page](https://i.postimg.cc/1thPWcqT/Screenshot-from-2023-11-14-19-18-36.png)](https://postimg.cc/kVckGSwF) |
| - |
| [![Book page](https://i.postimg.cc/4NSSX4xb/Screenshot-from-2023-11-14-19-19-12.png)](https://postimg.cc/6yC00XRy) |

## Features

- All books in the library, apart from title and description, can have several authors, a cover and belong to one or several book groups.
- A public part that can be seen by even non-logged-in users:
  - Users can see all the books listed with covers and brief info, filter them with group tags and open the detailed page of any book to see its cover, title, author and description.
  - If the user is logged in and has basic access rights, they can also upload their books, edit info about them, and see & change their account data.
  - Admin users in the public part can also edit and delete other people's books.
- An admin part that is visible only to authenticated users with the appropriate access rights:
  - There are several sections: user administration and author administration.
  - In the author administration section, admins are also able to see the books of the selected author.
  - There are also several levels of admins: admin with the maximum level of rights, book moderator with rights limited to book editions, and group moderator with the rights only to change book groups.

--------

## Getting Started


### Requirements:

In order to set up and run the project on your local machine you need this
software installed:

1. Ruby
2. PostgreSQL
3. Node.js and yarn

--------

### Installation:

#### Step 1

Clone the project from this repository to your projects folder:

```shell
$ cd <your_projects_root_folder>
$ git clone <link_to_rubyrary_repo>
$ cd rubyrary
```

#### Step 2

Install one of the tools for ruby version management (if you don't have it yet) -
[RVM](https://rvm.io/rvm/install) or [rbenv](https://github.com/rbenv/rbenv#installation)

Install Ruby 3.0.2 version:

with RVM:

```shell
$ rvm install 3.0.2
$ rvm use 3.0.2
```

or with rbenv:

```shell
$ rbenv install 3.0.2
$ rbenv local 3.0.2
```

#### Step 3

Install PostgreSQL database.

- [Instructions for Ubuntu/Debian](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-22-04-quickstart)
- [Instructions for Fedora](https://docs.fedoraproject.org/en-US/quick-docs/postgresql/)
- [Instructions for MacOS](https://sqlpad.io/tutorial/postgres-mac-installation)

In order to prevent possible problems with `rake db` or `rails db` commands
when applying changes to the database, do this:

1. Open the postgres config file with your text editor (nano, vim etc...)

If you're on Debian / Ubuntu:
```shell
$ sudo <text_editor> /etc/postgresql/<version>/main/pg_hba.conf
```

If you're on Fedora:
```shell
$ sudo <text_editor> /var/lib/pgsql/data/pg_hba.conf
```

2. Find the line with content like: `local all postgres peer`

3. Comment it out and paste this line below: `local all all md5`

4. Restart your Postgres server:

```shell
$ sudo systemctl restart postgresql.service
```

#### Step 4

Install [NVM](https://github.com/nvm-sh/nvm#installing-and-updating),
if you don't have it yet.

With NVM, install Node.js:

```shell
$ nvm install --lts
```

#### Step 5

After Node.js install, enable yarn through enabling Corepack:

```shell
$ corepack enable
```

Or through installing it with npm:

```shell
$ npm install --global yarn
```

Install necessary yarn dependencies:

```shell
$ yarn install
```

#### Step 6

Install [bundler](https://bundler.io/):

```shell
$ gem install bundler
```

Run bundler to install the project's dependencies:

```shell
$ bundle
```

#### Step 7

Install [direnv](https://direnv.net/) to manage the ENV variables and create an `.envrc` file with these ENV variables:

```shell
export DB_USERNAME=<value>
export DB_PASSWORD=<value>
export CLOUDINARY_NAME=<value>
export CLOUDINARY_KEY=<value>
export CLOUDINARY_SECRET=<value>
```

#### Step 8

Create, migrate and seed the database:

```shell
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

**Congratulations, you have set up the project!**

--------

## Usage

#### Server

```shell
$ rails s # start up
[ctrl + c] # shut down
```

When up, the project is available on
[http:://localhost:3000](http:://localhost:3000).

#### Console

```shell
$ rails c # start up
> exit # shut down
```

#### Code style

```shell
$ rubocop
```

---------------

