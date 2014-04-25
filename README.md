# ContentBlock

[![Build Status](https://travis-ci.org/commonmedia/content_block.png)](https://travis-ci.org/commonmedia/content_block)
[![Coverage Status](https://coveralls.io/repos/commonmedia/content_block/badge.png)](https://coveralls.io/r/commonmedia/content_block)
[![Code Climate](https://codeclimate.com/github/commonmedia/content_block.png)](https://codeclimate.com/github/commonmedia/content_block)
[![Dependency Status](https://gemnasium.com/commonmedia/content_block.svg)](https://gemnasium.com/commonmedia/content_block)
[![Gem Version](https://badge.fury.io/rb/content_block.svg)](http://badge.fury.io/rb/content_block)

A block, as used within this gem, is a section of content (either an image, simple text, or rich text that includes markup).
This gem allows you to create these different types of blocks, and place them throughout the site.
You can then give the administrative users of the site access to edit these blocks.


## Requirements / Caveats

* Your app must already have functional [devise](https://github.com/plataformatec/devise) installation
* Your app must already have functional [cancancan](https://github.com/CanCanCommunity/cancancan) installation
* Your app must already have functional [ckeditor](https://github.com/galetahub/ckeditor) installation
* Your `User` must have a `role` field
* Administrators must be identified by having a `role` value of 'admin'
* Your app needs to handle the display of `notice` messages, should they exist
* Only rich blocks are available - image & simple text blocks have not been added, yet


## Installation

Add this line to your application's Gemfile:

    gem 'content_block'

Have bundler install the gem:

    bundle

Run the installer:

    rails generate content_block:install

Optionally, you can copy over the view files in order to have direct control on the admin appearance:

    rails generate content_block:views


## Usage

You can manage the blocks by visiting the `/content-block/admin` URL as an admin. That page links out to each block-type's simple CRUD interface.

To use a block in your view without displaying its title
(`IDENTIFIER` is either the `name` or the `id` of the block to be displayed):

    <%= rich_block('IDENTIFIER') %>

To use a block in your view and display its title
(`IDENTIFIER` is either the `name` or the `id` of the block to be displayed & `TAG` is the HTML tag you'd like the title to be wrapped in):

    <%= rich_block_with_title('IDENTIFIER', 'TAG') %>


## Contributing

1. Fork it ( http://github.com/commonmedia/content_block/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
