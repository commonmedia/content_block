require 'spec_helper'

module ContentBlock
  describe ApplicationHelper do
    describe '#method_missing' do
      it 'returns the path scoped to the main_app' do
        expect(method_missing('new_user_session_path')).to eq('/users/sign_in')
      end
    end
  end
end
