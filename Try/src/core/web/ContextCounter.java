package core.web;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.CounterDao;
import com.entity.Counter;

public class ContextCounter {

	private ServletContext application;
	private Counter counter;

	public ContextCounter() {
		HttpServletRequest request = ServletActionContext.getRequest();
		application = request.getServletContext();
		counter = (Counter) application.getAttribute("counter");
	}

	public void initCounterInContext(Integer id) {
		CounterDao cDao = new CounterDao();
		Counter cou = cDao.getCounterbyId(1);
		application.setAttribute("counter", cou);
	}

	public void clickCount() {
		if (counter != null) {
			int i = counter.getCilckCount();
			counter.setCilckCount(++i);
			application.setAttribute("counter", counter);
		}
	}

	public void visitCount() {
		if (counter != null) {
			int i = counter.getTodayCount();
			int j = counter.getAllCount();
			counter.setTodayCount(++i);
			counter.setAllCount(++j);
			application.setAttribute("counter", counter);
		}
	}

	public void saveCounterInDB() {
		if (counter != null) {
			CounterDao cDao = new CounterDao();
			cDao.saveCounter(counter);
		}
	}

	public void dayFreshCounter() {
		if (counter != null) {
			int i = counter.getTodayCount();
			int j = counter.getDayCount();
			counter.setTodayCount(0);
			counter.setYesterdayCount(i);
			counter.setDayCount(++j);
			application.setAttribute("counter", counter);
		}
	}
}
