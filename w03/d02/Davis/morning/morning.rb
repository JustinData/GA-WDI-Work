class MailItem
	def initialize(ship_to_address, stamp_value)
		@ship_to_address = ship_to_address
		@stamp_value = stamp_value
	end
end

class Postcard < MailItem
	attr_reader :message

	def initialize(message)
		@message = message
	end
end

class Package < MailItem
	attr_reader :content

	def initialize(content = [], is_fragile = false, is_broken = false)
		@content = content
		@is_fragile = is_fragile
		@is_broken = is_broken
	end

	def shake
		is_broken = true if is_fragile == true
	end

	def is_broken?
		@is_broken
	end
end

class Mailbox
	attr_reader :mail_items

	def initialize(mail_items = [])
		@mail_items = mail_items
	end

	def accept_mail(postcard_or_package)
		@mail_items << postcard_or_package
	end

	def open_mail
		@mail_items.reverse.pop
	end

	def to_s
		postcards_count = @mail_items.find_all { |e| e.class == Postcard }.count

		"The mailbox has #{postcards_count} postcards and #{@mail_items.count - postcards_count} packages."
	end
end

