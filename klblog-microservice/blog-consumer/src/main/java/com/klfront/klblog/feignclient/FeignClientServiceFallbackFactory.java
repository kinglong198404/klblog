package com.klfront.klblog.feignclient;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.klfront.klblog.entity.Category;

import feign.hystrix.FallbackFactory;

/** 
 * <p>Title: FeignClientServiceFallbackFactory.java</p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2019</p>
 * <p>Company: www.klfront.com</p>
 *
 * @author Lu Jinlong
 * @date 2019-07-26  
 * @version	1.0 
 */
@Component // 不要忘记添加
public class FeignClientServiceFallbackFactory implements FallbackFactory<FeignClientService>{

	@Override
	public FeignClientService create(Throwable cause) {
		//统一处理FeignClientService中各接口的异常
		return new FeignClientService() {

			@Override
			public Object discovery() {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public List<Category> getRootList() {
				List<Category> list = new ArrayList<>();
				list.add(new Category().setId("null").setName("没有类别信息").setRemark("该微服务没有返回结果"));
				return list;
			}

			@Override
			public List<Category> getSubList(String parentId) {
				List<Category> list = new ArrayList<>();
				list.add(new Category().setId("null").setName(parentId + "该微服务没有返回结果").setRemark("该微服务没有返回结果"));
				return list;
			}

			@Override
			public Category getById(String id) {
				Category category =new Category().setId("null").setName(id + "类别不存在");
				return category;
			}
			
		};
	}

}
