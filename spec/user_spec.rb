require 'spec_helper'
require 'user'

describe User, '#suspend!' do
  it 'sends a notification' do
    # Only this one line differs from how you write specs normally
    notifier = fire_double("EmailNotifier")

    notifier.should_receive(:notify).with("suspended as")

    user = User.new(notifier)
    user.suspend!
  end
end
