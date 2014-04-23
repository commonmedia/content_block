# ContentBlock

[![Build Status](https://travis-ci.org/commonmedia/content_block.png)](https://travis-ci.org/commonmedia/content_block)
[![Coverage Status](https://coveralls.io/repos/commonmedia/content_block/badge.png)](https://coveralls.io/r/commonmedia/content_block)
[![Code Climate](https://codeclimate.com/github/commonmedia/content_block.png)](https://codeclimate.com/github/commonmedia/content_block)
[![GitHub version](https://badge.fury.io/gh/commonmedia%2Fcontent_block.png)](http://badge.fury.io/gh/commonmedia%2Fcontent_block)

A block, as used within this gem, is a section of content (either an image, simple text, or rich text that includes markup).
This gem allows you to create these different types of blocks, and place them throughout the site.
You can then give the administrative users of the site access to edit these blocks.


## Installation

Add this line to your application's Gemfile:

    gem 'content_block'

Have bundler install the gem:

    bundle

Copy over the migrations:

    rake content_block:install:migrations

Run the migrations:

    rake db:migrate

Add these lines to your `ApplicationController` file:

    helper ContentBlock::Engine.helpers

    def content_block_user
      current_user
    end
    helper_method :content_block_user


## Usage

You can manage the blocks by visiting the `/content-block/admin` URL as an admin. That page links out to each block-type's simple CRUD interface.

To use the blocks in your views, simply call `rich_block('BLOCKNAME')` or `rich_block_with_title('BLOCKNAME')` wherever you'd like the block placed (and whether you'd like the title included or not).


## Contributing

1. Fork it ( http://github.com/commonmedia/content_block/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
