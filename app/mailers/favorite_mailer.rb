class FavoriteMailer < ApplicationMailer
  default from: "marcellus.spears@gmail.com"

  def new_comment(user, post, comment)

# #18
    headers["Message-ID"] = "<comments/#{comment.id}@mysterious-dawn-32789>"
    headers["In-Reply_To"] = "<post/#{post.id}@mysterious-dawn-32789>"
    headers["References"] = "<post/#{post.id}@mysterious-dawn-32789>"

    @user = user
    @post = post
    @comment = comment

# #19
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
