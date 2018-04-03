package net.heartma.modules.sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.heartma.common.json.AjaxJson;
import net.heartma.common.web.BaseController;
import net.heartma.modules.sys.entity.User;
import net.heartma.modules.sys.service.SystemService;

import org.nutz.http.Http.multipart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 
 * @version v1.0.0
 * @author heartma
 * @date 2017年12月27日
 * @File UserController.java
 * @URL www.heartma.net
 * @Desc 用户Controller
 */
@Controller
@RequestMapping(value = "/sys/user")
public class UserController extends BaseController {
	@Autowired
	private SystemService systemService;

	@RequestMapping(value = { "get" })
	public String get(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(required = false) String id) {
		if (org.apache.commons.lang3.StringUtils.isNotBlank(id)) {
			User user = systemService.getUser(id);
			AjaxJson j = new AjaxJson();
			j.setSuccess(true);
			j.setMsg("获取当前信息成功");
			j.put("data", user);
			return renderString(response, j);
		} else {
			return null;
		}
	}

	@RequestMapping(value = { "index","" })
	public String index(User user, Model model) {
		List<User> list = systemService.findAllList(user);
		model.addAttribute("list", list);
		return "modules/sys/userIndex";
	}
	
	
	@RequestMapping(value={"delete"})
	public String delete(User user){
		systemService.deleteUser(user);
		return null;
	}

}
