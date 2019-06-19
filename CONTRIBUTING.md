# Contributing to SelfHouse

## A Few Notes On the Codebase
All code that is commited to the SelfHose web project is licensed under the __GNU Affero General Public License v3.0__. 
The core web application is designed as a monolith to make it as easy as possible to work on the full end-to-end stack
at once, and also allow people to quickly spin up their own personal instance if they want to. All development work is 
performed in branches that are forked from the `develop` branch and then merged back into the `develop` branch. The `develop`
branch is then merged into `master`. No code is ever directly commited to `master`. Minor changes and fixes may be directly 
commited to `develop`.

## Getting Started
- Ensure you have a [Github](https://github.com) Account
- Join the [FindCollabs Project](https://findcollabs.com/project/6u9johVrVEUYX59jfmCb)
- Check the [Github Bug Tracker](https://github.com/selfhouse/selfhouse-web/issues) to see what is being worked on
- Fork The Project

## Submitting a New Feature
A feature is described as any code that adds or changes functionality to the application. To submit a feature
follow these steps.

1. Fork the project
2. Checkout a new branch with the naming scheme of `feature/my-feature`
3. Make all commits to this branch
4. Submit a pull request against `develop`. Any PR's against `master` will be rejected.

## Submitting a Documentation Change
Any commits that solely focus on documentation or non-functional code (Spelling errors and the like), are classified seperately to
avoid things like triggering CI builds for a spellcheck.

1. Fork the project
2. Checkout a new branch with the naming scheme of `support/documentation/my-documentation-change`
3. Make all commits to this branch
4. Submit a pull request against `develop`. Any PR's against `master` will be rejected.
