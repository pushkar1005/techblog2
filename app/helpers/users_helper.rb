module UsersHelper

  def smallPost(post)
		str = "<div class=\" smallPost\">\n"\
					"<a href=\"#{post_path(post)}\"  style=\"text-decoration:none\">"\
					"<div class=\"image\">\n"\
						"<img src=\"#{post.picture}\" alt=\"#{ post.title}\"  width=\"100%\"  height=\"100px;\">\n"\
					"</div>\n"\
					"<div class=\"strip\">\n"\
					"</div>\n"\
					"<div class=\"title\">\n"\
						"#{post.title} \n"\
					"</div></a>\n"\
					"<div class=\"socialPlugins\">\n"\
								"<center style=\"padding-top:4px;\">"\
										"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-sm  smallPostSocial btnss-facebook \"><i class=\"fa fa-facebook\"></i> </a>"\
										"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-sm smallPostSocial btnss-googleplus\"><i class=\"fa fa-google-plus\"></i></a>"\
										"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-sm smallPostSocial btnss-twitter \"><i class=\"fa fa-twitter\"></i> </a>"\
										"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-sm smallPostSocial btnss-linkedin \"><i class=\"fa fa-linkedin\"></i> </a>"\
										"<div class=\"\" style=\"word-wrap:break-word;width:100%;\"><font style=\"font-weight:bold\">#{post.created_at.strftime("%b %d,%Y")}</font></div>"\
									"</center>"\
					"</div>\n"\
				"</div> \n\n\n\n\n\n\n"

	end

  def aboutUser(user)
    str = "<div><img src=\"#{user.picture}\" class=\"img-rounded\" alt=\"#{ user.name}\" width=\"100%\" height=\"250px\" ></div>"\
          "<div><center><font style=\"font-size:30px; font-weight:bolder\">#{user.name}</font></center></div>"

  end

end
