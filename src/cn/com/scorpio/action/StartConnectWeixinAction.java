package cn.com.scorpio.action;

import cn.com.scorpio.pojo.WeixinBean;

import com.opensymphony.xwork2.ModelDriven;

public class StartConnectWeixinAction extends BaseAction implements ModelDriven<WeixinBean> {
	private WeixinBean weixinBean;
	
	public WeixinBean getWeixinBean() {
		return weixinBean;
	}

	public void setWeixinBean(WeixinBean weixinBean) {
		this.weixinBean = weixinBean;
	}

	public String applyMsg() {
		System.out.println("signature:" + weixinBean.getSignature());
		System.out.println("timestamp:" + weixinBean.getTimestamp());
		System.out.println("nonce:" + weixinBean.getNonce());
		System.out.println("echostr:" + weixinBean.getEchostr());
		request.setAttribute("signature", weixinBean.getSignature());
		request.setAttribute("timestamp", weixinBean.getTimestamp());
		request.setAttribute("nonce", weixinBean.getNonce());
		request.setAttribute("echostr", weixinBean.getEchostr());
		request.setAttribute("weixinBean", weixinBean);
		return "result";
	}

	@Override
	public WeixinBean getModel() {
		return weixinBean;
	}
}
