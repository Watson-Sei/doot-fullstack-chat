json.array! @historyList do |history|
    json.id history.id
    json.room history.room
    json.user history.user
end