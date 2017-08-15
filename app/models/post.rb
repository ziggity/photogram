class Post < ApplicationRecord
      validates :image, presence: true

  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    def create
      @post = Post.create(post_params)
      redirect_to posts_path
    end

private

def post_params
  params.require(:post).permit(:image, :caption)
end

end

