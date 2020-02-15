package com.klfront.klblog.feignclient;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.klfront.klblog.entity.Category;

/** 
 * <p>Title: FeignClientService.java</p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2019</p>
 * <p>Company: www.klfront.com</p>
 *
 * @author Lu Jinlong
 * @date 2019-07-25  
 * @version	1.0 
 */

@FeignClient(value = "BLOG-PROVIDER",fallbackFactory=FeignClientServiceFallbackFactory.class)
@Service
public interface FeignClientService {
	@RequestMapping(value="/category/discovery", method = RequestMethod.GET)
	public Object discovery();

	@GetMapping("/category/rootlist")
	public List<Category> getRootList();
	
	@GetMapping("/category/sublist/{parentId}")
	public List<Category> getSubList(@PathVariable("parentId") String parentId);
	
	@GetMapping("/category/get/{id}")
	public Category getById(@PathVariable("id") String id);
}
