package com.ruoyi.system.domain;/**
 * ClassName: SysOrderView <br/>
 * Description: <br/>
 * date: 2019/12/26 1:42 下午<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * @program: ruoyi
 *
 * @description: 订单查看实体类
 *
 * @author: hesion
 *
 * @create: 2019-12-26 13:42
 **/
@Data
public class SysOrderView extends BaseEntity {
   private String id;
   private String name;
   private String dept;
   private String validity;
   private Double price;
   private Integer num;
   private Double totalprice;
}
