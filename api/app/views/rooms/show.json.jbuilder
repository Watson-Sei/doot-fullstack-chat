json.messages do 
    json.array!(@messages) do |message|
        json.id message.id 
        json.email message.user.email
        json.content message.content
        json.created_at message.created_at
    end
end

json.entries do 
    json.array!(@entries) do |user|
        json.id user.id 
        json.email user.user.email
        json.room_id user.room_id
    end
end