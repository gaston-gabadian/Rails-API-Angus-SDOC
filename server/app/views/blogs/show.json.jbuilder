json.status("success")
json.blog do
    json.partial! 'blog', blog: @blog
end
