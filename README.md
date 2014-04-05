# Capistrano-SensioLabs-Insight [![Gem Version](https://badge.fury.io/rb/capistrano-sensiolabs-insight.svg)](http://badge.fury.io/rb/capistrano-sensiolabs-insight)
=============================

Capistrano recipe to notify SensioLabs Insight after deploying code

## Installation

	gem install capistrano-sensiolabs-insight

## Usage

Include the recipe

	require 'capistrano-sensiolabs-insight'

Set required parameters

    set :sensio_labs_insight_user_uuid, "<your SensioLabs Insight account UUID>"
    set :sensio_labs_insight_api_token, "<your SensioLabs API Key>"
    set :sensio_labs_insight_project_uuid, "<your SensioLabs Insight project UUID>"
    set :sensio_labs_insight_project_branch, "e.g. origin/\master"

Add the task, typically after deploy

	after "deploy:update_code", "sensio_labs_insight:notify"
