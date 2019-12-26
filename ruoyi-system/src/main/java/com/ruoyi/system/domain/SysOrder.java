package com.ruoyi.system.domain;/**
 * ClassName: SysOrder <br/>
 * Description: <br/>
 * date: 2019/12/26 10:21 上午<br/>
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
 * @description: 订单实体类
 *
 * @author: hesion
 *
 * @create: 2019-12-26 10:21
 **/
@Data
public class SysOrder extends BaseEntity {
    private String id;
    private String dId;
    private Long uId;
}
