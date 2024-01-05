# Server
```
cd /server
```
Run sever:
```
bundle i
bundle exec rails s
```

Run migrations if necessary:

```
bundle exec rails db:migrate
```

# Client
```
cd /client
```
Install dependencies:
```
bundle i
```

Run `irb -r ./client.rb` to open an Interactive Ruby session and consume the API

```
RemoteService.show([1])
```