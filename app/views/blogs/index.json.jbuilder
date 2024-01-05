json.blogs do
    json.array! @blogs, partial: 'blog', as: :blog
end