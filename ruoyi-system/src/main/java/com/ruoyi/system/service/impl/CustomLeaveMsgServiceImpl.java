package com.ruoyi.system.service.impl;/**
 * ClassName: CustomLeaveMsgServiceImpl <br/>
 * Description: <br/>
 * date: 2020/2/17 15:16<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.CustomLeaveMsg;
import com.ruoyi.system.mapper.CustomLeaveMsgMapper;
import com.ruoyi.system.service.CustomLeaveMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-17 15:16
 **/
@Service
public class CustomLeaveMsgServiceImpl implements CustomLeaveMsgService {
   @Autowired
   CustomLeaveMsgMapper customLeaveMsgMapper;
    @Override
    public int leave(CustomLeaveMsg customLeaveMsg) {
        customLeaveMsg.setCreateTime(new Date());
        customLeaveMsg.setReplayStatu(0);
        return customLeaveMsgMapper.leave(customLeaveMsg);
    }
}
