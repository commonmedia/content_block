# ContentBlock

[![Build Status](https://travis-ci.org/commonmedia/content_block.png)](https://travis-ci.org/commonmedia/content_block)
[![Coverage Status](https://coveralls.io/repos/commonmedia/content_block/badge.png)](https://coveralls.io/r/commonmedia/content_block)
[![Code Climate](https://codeclimate.com/github/commonmedia/content_block.png)](https://codeclimate.com/github/commonmedia/content_block)
[![GitHub version](https://badge.fury.io/gh/commonmedia%2Fcontent_block.png)](http://badge.fury.io/gh/commonmedia%2Fcontent_block)

A block, as used within this gem, is a section of content (either an image, simple text, or rich text that includes markup).
This gem allows you to create these different types of blocks, and place them throughout the site.
You can then give the administrative users of the site access to edit these blocks.

At the moment, only rich blocks are available - image and simple text blocks will be added next.


## Installation

Add this line to your application's Gemfile:

    gem 'content_block'

Have bundler install the gem:

    bundle

Run the installer:

    rails generate content_block:install

Get a functional ckeditor working.
Go read about that at [here](https://github.com/galetahub/ckeditor#ckeditor)

Your app's layout needs to handle the display of `notice` messages, should they exist.

Optionally, you can copy over the view files in order to have direct control on the admin appearance:

    rails generate content_block:views


## Usage

You can manage the blocks by visiting the `/content-block/admin` URL as an admin. That page links out to each block-type's simple CRUD interface.

To use a block in your view without displaying its title, simply call `<%= rich_block('IDENTIFIER') %>` with `IDENTIFIER` being either the `name` or the `id` of the block to be displayed.

To use a block in your view and display its title, call `<%= rich_block_with_title('IDENTIFIER', 'TAG') %>` with `IDENTIFIER` being either the `name` or the `id` of the block to be displayed, and `TAG` being the HTML tag you'd like the title to be wrapped in.


## Contributing

1. Fork it ( http://github.com/commonmedia/content_block/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
