# Este es el mismo formato que devuelve Angus los errores

json.status "error"
json.messages do
    exception.record.errors.messages.each do |k, v|
        json.child! do
            json.level "error" # el level debe conincidir con el level del message (messages.yml)
            json.key "ResourceInvalid" # la key debe conincidir con la Key del message (messages.yml)
            json.dsc "[#{k}]: #{v.join(', ')}"
        end
    end
end
