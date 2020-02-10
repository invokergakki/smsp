package com.syn.smsp.task;

import com.syn.smsp.service.SysFaultLogService;
import com.syn.smsp.service.WarningManagerService;
import com.syn.smsp.vo.WarningVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by zwh on 2019年6月13日16:25:47
 */
@Component
@EnableScheduling
public class PhoneRecordFixedTask {

    @Autowired
    private SysFaultLogService sysFaultLogService;

    /**
     * 定时1分钟同步数据
     * @return
     */
    @Scheduled(cron = "0 0/1 * * * ?")//0 0/1 * * * ?
    public void execute() {
        try {
            sysFaultLogService.alarmProcessing();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}