package cn.com.scorpio.action;

import cn.com.scorpio.pojo.WeixinBean;

import com.opensymphony.xwork2.ModelDriven;

public class SendMsgToUserAction extends BaseAction implements
		ModelDriven<WeixinBean> {
	private WeixinBean weixinBean;
	
	public String sendImageAndUrl() {
		
		return "sendIU";
	}

	public WeixinBean getWeixinBean() {
		return weixinBean;
	}

	public void setWeixinBean(WeixinBean weixinBean) {
		this.weixinBean = weixinBean;
	}

	@Override
	public WeixinBean getModel() {
		return weixinBean;
	}

}
