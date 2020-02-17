package com.ruoyi.system.domain;/**
 * ClassName: UserLeaveMsg <br/>
 * Description: <br/>
 * date: 2019/12/20 下午2:22<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import lombok.Data;

import java.util.Date;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-20 14:22
 **/
@Data
public class CustomLeaveMsg {
       private String id;
       private Long uId;
       private String dId;
       private String msg;
       private Date createTime;
       private String createBy;
       private Integer replayStatu;
}
