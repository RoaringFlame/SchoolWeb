package core.web;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.CounterDao;
import com.entity.Counter;

public class ContextCounter {

	private CounterDao cDao = new CounterDao();
	private ServletContext application;
	private Counter counter;

	public ContextCounter() {
		HttpServletRequest request = ServletActionContext.getRequest();
		application = request.getServletContext();
		counter = cDao.getCounterbyId(1);
	}

	public void initCounterInContext(Integer id) {
		CounterDao cDao = new CounterDao();
		Counter cou = cDao.getCounterbyId(1);
		application.setAttribute("counter", cou);
	}

	// 点击量使用虚计数，暂存在application中，只有真正访问数据才计入数据库
	public void clickCount() {
		Counter counter = (Counter)application.getAttribute("counter");
		if (counter != null) {
			int i = counter.getClickCount();
			counter.setClickCount(++i);
			application.setAttribute("counter", counter);
		}
	}

	public void visitCount() {
		if (counter != null) {
			Counter count = (Counter)application.getAttribute("counter");
			int c = count.getClickCount();
			int i = counter.getTodayCount();
			int j = counter.getAllCount();
			counter.setClickCount(c);
			counter.setTodayCount(++i);
			counter.setAllCount(++j);
			application.setAttribute("counter", counter);
			this.saveCounterInDB();
		}
	}

	public void saveCounterInDB() {
		if (counter != null) {
			cDao.updateCounter(counter);
		}
	}

	// 作为参考，一直未用
	public void dayFreshCounter() {
		if (counter != null) {
			int i = counter.getTodayCount();
			int j = counter.getDayCount();
			counter.setTodayCount(0);
			counter.setYesterdayCount(i);
			counter.setDayCount(++j);
			application.setAttribute("counter", counter);
			this.saveCounterInDB();
		}
	}
}
