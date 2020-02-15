package com.klfront.klblog.robotconsumer.feignclient;

import java.util.ArrayList;
import java.util.List;

import com.klfront.klblog.entity.Memo;
import org.springframework.stereotype.Component;

import com.klfront.klblog.entity.User;
import feign.hystrix.FallbackFactory;

/** 
 * <p>Title: RobotFeignClientServiceFallbackFactory.java</p>
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
			public User login(String username,
							  String password) {
				return null;
			}

			@Override
			public List<Memo> listByPage(Integer pageNo, Integer pageSize, String keyword) {
				return new ArrayList<>();
			}

			@Override
			public Boolean add(Memo memo) {
				return false;
			}

			@Override
			public Boolean update(Memo memo) {
				return false;
			}

			@Override
			public Boolean getById(String id) {
				return null;
			}


		};
	}


}
