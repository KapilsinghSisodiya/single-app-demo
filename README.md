### Windows Installation

1. Install Ruby 2.3+, Rails 5.1+: http://railsinstaller.org/en
2. Clone the project **(DO NOT FORK INTO A PUBLIC REPOSITORY)**
3. `bundle install` and `rails s`
4. Change database yml with postgres setting of you local machine 
5. `rake db:create` and `rake db:migrate`
6. localhost:3000

## Submitting Pull Requests

1. Create a new branch from the latest `master` branch
2. Make your changes and commit them
3. `git pull --rebase origin/master`, resolve conflicts, and push into your new branch
4. Submit pull request
5. Make any changes from the code review and push them into the branch
6. After approval, repeat step 3
7. I will squash and merge your branch into `master`, and then delete the branch
