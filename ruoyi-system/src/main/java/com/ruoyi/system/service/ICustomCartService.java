package com.ruoyi.system.service;

import com.ruoyi.system.domain.CustomCartView;

import java.util.List;

/**
 * ClassName: ICustomCartService <br/>
 * Description: <br/>
 * date: 2020/2/10 15:53<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ICustomCartService {
    List<CustomCartView> getMycart(Long userId);
}
