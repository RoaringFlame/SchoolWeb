package core.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import com.dao.CounterDao;
import com.entity.Counter;

/**
 * Description: <br/>
 * Copyright(C),2016-2017,Heng.Chen <br/>
 * GitHub:https://github.com/RoaringFlame <br/>
 * Date:2016年3月24日
 * 
 * @author Heng.Chen chenheng120@126.com
 */

// 这里使用单例模式，保证task只创建一次
// 懒汉式单例类.在第一次调用的时候实例化
/*
 * 启动task计算服务器时间，使之在每日0点刷新数据
 */
public class DBTimerTask {

	// 私有的默认构造
	private DBTimerTask() {
		// 计算任务开始执行时间（delayTime）
		SimpleDateFormat d = new SimpleDateFormat("HH:mm:ss");// 格式化时间
		String nowtime = d.format(new Date());// 按以上格式 将当前时间转换成字符串
		String testtime = "00:00:00";// 测试时间
		long delayTime = 0;
		try {
			long result = (d.parse(nowtime).getTime() - d.parse(testtime)
					.getTime());
			delayTime = 24 * 60 * 60 * 1000 - result;
			int hour = (int) (delayTime / (60 * 60 * 1000));
			System.out.println("服务器刷新将会在" + hour + "小时"
					+ (delayTime - hour * 60 * 60 * 1000) / (60 * 1000)
					+ "分钟后开始，每隔24小时一次！");
		} catch (ParseException e) {
			e.printStackTrace();
		}

		Timer timer = new Timer();
		// 在delayTime之后，每隔24小时执行TimerTask的任务一次
		timer.schedule(new TimerTask() {
			@Override
			public void run() {
				CounterDao cDao = new CounterDao();
				Counter counter = cDao.getCounterbyId(1);
				int i = counter.getTodayCount();
				int j = counter.getDayCount();
				counter.setTodayCount(0);
				counter.setYesterdayCount(i);
				counter.setDayCount(++j);
				cDao.updateCounter(counter);
			}

		}, delayTime, 24 * 60 * 60 * 1000);
	}

	private static DBTimerTask single = null;

	public synchronized static DBTimerTask getInstance() {
		if (single == null) {
			single = new DBTimerTask();
		}
		return single;
	}
}
