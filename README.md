# doot-fullstack-chat

## 実行

- API
    ```
    cd api 
    docker-compose up -d --build
    ```
- Client
    ```
    cd client
    docker-compose up -d --build
    ```

## API Document 
```
# title: UserList 
# method: GET
# path: /users/index/

# title: ChatHistroyUserList 
# method: GET
# path: /users/history/

# title: RoomList
# method: GET
# path: /rooms/index/

# title: RoomCreate 
# method: POST
# path: /rooms/create/
# body: { "user_id": 1 }

# title: RoomDetails 
# method: GET
# path: /rooms/:id

# title: MessageCreate
# method: POST
# path: /rooms/create/
# body: { "user_id": 1, "content": "Hello!" }
```