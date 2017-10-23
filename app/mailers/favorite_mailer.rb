class FavoriteMailer < ApplicationMailer
  default from: "marcellus.spears@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@mysterious-dawn-32789>"
    headers["In-Reply_To"] = "<post/#{post.id}@mysterious-dawn-32789>"
    headers["References"] = "<post/#{post.id}@mysterious-dawn-32789>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@mysterious-dawn-32789>"
    headers["In-Reply_To"] = "<post/#{post.id}@mysterious-dawn-32789>"
    headers["References"] = "<post/#{post.id}@mysterious-dawn-32789>"

    @post = post

    mail(to: post.user.email, subject: "You're following, #{post.title}!")
  end
end
