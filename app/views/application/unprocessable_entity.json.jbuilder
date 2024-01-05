# Este es el mismo formato que devuelve Angus los errores

json.status "error"
json.messages do
    json.level "error" # el level debe conincidir con el level del message (messages.yml)
    json.key "ResourceInvalid" # la key debe conincidir con la Key del message (messages.yml)
    json.dsc exception.message
end
