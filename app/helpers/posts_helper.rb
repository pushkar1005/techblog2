module PostsHelper

	def mediumPost(post)
		str = "<div class=\" bigPost\" >\n"\
							"<a href=\"#{post_path(post)}\"  style=\"text-decoration:none\">"\
							"<div class=\"image\">\n"\
							"<img src=\"#{post.picture}\" alt=\"#{ post.title}\"  width=\"100%\"  height=\"237px\">\n"\
							"</div>\n"\
							"<div class=\"strip\">\n"\
							"</div>\n"\
							"<div class=\"title\">\n"\
								"#{post.title}\n"\
							"</div></a>\n"\
							"<div class=\" socialPlugins\">\n"\
											"<center style=\"padding-top:8px;\">"\
											"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-md mediumPostSocial btnss-facebook \"><i class=\"fa fa-facebook\"></i> Facebook</a>"\
											"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-md mediumPostSocial btnss-googleplus\"><i class=\"fa fa-google-plus\"></i> Google+</a>"\
											"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-md mediumPostSocial btnss-twitter \"><i class=\"fa fa-twitter\"></i> Twitter</a>"\
											"<a href=\"\" title=\"Share on Facebook\" target=\"_blank\" class=\"btn btn-md mediumPostSocial btnss-linkedin \"><i class=\"fa fa-linkedin\"></i> Linkedin</a>"\
											"<div class=\"btn btn-md mediumPostSocial\"><font style=\"font-weight:bolder\">#{post.created_at.strftime("%b %d, %Y")}</font></div>"\
											"</center>"\
							"</div>\n"\
				"</div>\n\n\n\n\n\n\n"
		return str

	end

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

end
