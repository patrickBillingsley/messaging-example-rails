Fabricator(:chat) do
  transient :members

  after_create do |chat, transients|
    transients[:members]&.each do |user|
      ChatMembership.create!(user:, chat:)
    end
  end
end
