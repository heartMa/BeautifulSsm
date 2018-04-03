package net.heartma.common.json;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @version v1.0.0
 * @author heartma
 * @date 2017年12月27日
 * @File PrintJSON.java
 * @URL www.heartma.net
 * @Desc 响应到浏览器
 */
public class PrintJSON {

	public static void write(HttpServletResponse response, String content) {
		response.reset();
		response.setContentType("application/json");
		response.setHeader("Cache-Control", "no-store");
		response.setCharacterEncoding("UTF-8");
		try {
			PrintWriter pw = response.getWriter();
			pw.write(content);
			pw.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
