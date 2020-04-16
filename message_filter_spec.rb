require_relative 'message_filter'

describe MessageFilter, 'wit argument "foo"' do
	before do
		@filter = MessageFilter.new('foo')
  end
  subject { @filter }
	it {
    is_expected.to be_detect('hello from foo')
  }
	it {
		is_expected.not_to be_detect('hello, world!')
  }
end