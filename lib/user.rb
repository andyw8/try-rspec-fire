class User
  def initialize(notifier)
    @notifier = notifier
  end

  def suspend!
    @notifier.notify("suspended as", false)
  end
end
