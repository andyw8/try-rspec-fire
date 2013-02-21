require 'spec_helper'

class User < Struct.new(:notifier)
  def suspend!
    notifier.notify("suspended as")
  end
end

describe User, '#suspend!' do
  it 'sends a notification' do
    # Only this one line differs from how you write specs normally
    notifier = fire_double("EmailNotifier")

    notifier.should_receive(:notify).with("suspended as")

    user = User.new(notifier)
    user.suspend!
  end
end
