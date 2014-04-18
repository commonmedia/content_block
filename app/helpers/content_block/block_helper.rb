module ContentBlock
  module BlockHelper
    def rich_block(name)
      # block = ContentBlock.find_by_name(name)
      content = 'content'

      content
    end

    def rich_block_with_title(name, wrapper)
      # block = ContentBlock.find_by_name(name)
      title         = 'title'
      content       = 'content'
      wrapped_title = "<#{wrapper}>#{title}</#{wrapper}>"

      "#{wrapped_title}#{content}"
    end
  end
end
