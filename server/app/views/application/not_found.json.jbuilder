# Este es el mismo formato que devuelve Angus los errores

json.status "error"
json.messages do
    json.child! do
        json.level "error" # el level debe conincidir con el level del message (messages.yml)
        json.key "ResourceNotFound" # la key debe conincidir con la Key del message (messages.yml)
        json.dsc exception.message
    end
end
