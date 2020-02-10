package com.ruoyi.system.domain;/**
 * ClassName: CustomCart <br/>
 * Description: <br/>
 * date: 2020/2/10 16:02<br/>
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
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-10 16:02
 **/
@Data
public class CustomCart extends BaseEntity {
        private String id;
        private String name;
        private String dept;
        private Double price;
        private Integer num;
        private Double totalprice;
}
