class ChatSerializer < ActiveModel::Serializer
  attributes :id, :name, :participants

  has_many :participants, serializer: ChatParticipantSerializer
  has_one :last_message

  def participants
    object.users.where.not(id: scope.id)
  end
end
