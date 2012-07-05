# Noodall General Content Component

A simple "General Content" component for Noodall.

"General Content" consists of a Title, Content area, Link and Link Title.

## Install

Add to your `Gemfile`

    gem 'noodall-components-general-content', :git => 'git@github.com:noodall/noodall-components-general-content.git'

Run `bundle install`

    bundle install

## Configuration

Noodall General Content adds a `GeneralContent` component. Add it to your slots.

In `config/initializers/noodall.rb`

    Noodall::Node.slot :large, GeneralContent
    Noodall::Node.slot :small, GeneralContent

You can now add `GeneralContent` components to your Nodes.

