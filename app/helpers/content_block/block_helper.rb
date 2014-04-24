module ContentBlock
  module BlockHelper
    def rich_block(find_by)
      block = ContentBlock::RichBlock.where('id = ? OR name = ?', find_by, find_by).first
      block.try(:content).try(:html_safe)
    end

    def rich_block_with_title(find_by, wrapper)
      block         = ContentBlock::RichBlock.where('id = ? OR name = ?', find_by, find_by).first
      return nil unless block.present?
      wrapped_title = "<#{wrapper}>#{block.title}</#{wrapper}>"
      "#{wrapped_title}#{block.content}".html_safe
    end
  end
end
