class CreateContentBlockRichBlocks < ActiveRecord::Migration
  def change
    create_table :content_block_rich_blocks do |t|
      t.string :name
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
