class Author
  attr_accessor :name, :posts
  @@all_posts = []

  def initialize(name)
    self.name = name
    self.posts = []
  end

  def add_post (post)
    #binding.pry
    self.posts << post
    post.author = self
    @@all_posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    @@all_posts.length
  end
end
