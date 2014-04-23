module ContentBlock
  module BlockHelper
    def rich_block(name)
      block = ContentBlock::RichBlock.find_by_name(name)
      block.content
    end

    def rich_block_with_title(name, wrapper)
      block         = ContentBlock::RichBlock.find_by_name(name)
      wrapped_title = "<#{wrapper}>#{block.title}</#{wrapper}>"
      "#{wrapped_title}#{block.content}".html_safe
    end
  end
end
