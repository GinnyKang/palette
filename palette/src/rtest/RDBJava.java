package rtest;

import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;

public class RDBJava {
	public String getDogInfo() {
		String result= "";
		RConnection r = null;
		try {
			r = new RConnection();
			r.eval("for(i in 1:.Machine$integer.max){}");
			r.eval("library(KoNLP)");
			r.eval("library(wordcloud)");
			r.eval("library(rvest)");
			r.eval("library(XML)");
			r.eval("library(xml2)");
			r.eval("library(stringr)");
			r.eval("library(dplyr)");
			r.eval("library(DBI)");
			r.eval("library(RJDBC)");		
			r.eval("url_zooseyo<-'http://www.zooseyo.or.kr/Yu_board/freesale_ty_1.html?animal=%EA%B0%95%EC%95%84%EC%A7%80&area=&ty=1&page='");
			r.eval("df.zooseyo_g<-NULL");
			r.eval("df.zooseyo_r<-NULL");
			r.eval("df.zooseyo_t<-NULL");
			r.eval("df.zooseyo_d<-NULL");
			r.eval("df.zooseyo_xo<-NULL");
			r.eval("for (page in 1:2){");
			r.eval("url2_zooseyo<-paste(url_zooseyo,page,sep='')");
			r.eval("doc_zooseyo<-htmlParse(url2_zooseyo,encoding='UTF-8')");
			r.eval("dog_zooseyo_g<-xpathSApply(doc_zooseyo,'//td[@width='39']//div[@align='center']',xmlValue)");
			r.eval("df_zooseyo_g<-data.frame(성별=dog_zooseyo_g)");
			r.eval("df.zooseyo_g<-rbind(df.zooseyo_g,df_zooseyo_g)");
			r.eval("dog_zooseyo_r<-xpathSApply(doc_zooseyo,'//td[@width='68']//div[@align='center']',xmlValue)");
			r.eval("df_zooseyo_r<-data.frame(지역=dog_zooseyo_r)");
			r.eval("df.zooseyo_r<-rbind(df.zooseyo_r,df_zooseyo_r)");
			r.eval("dog_zooseyo_t<-xpathSApply(doc_zooseyo,'//td[@width='59']//div[@align='center']',xmlValue)");
			r.eval("df_zooseyo_t<-data.frame(견종=dog_zooseyo_t)");
			r.eval("df.zooseyo_t<-rbind(df.zooseyo_t,df_zooseyo_t)");
			r.eval("dog_zooseyo_d<-xpathSApply(doc_zooseyo, '//td[@width='54']//div[@align='center']',xmlValue)");
			r.eval("df_zooseyo_d<-data.frame(작성일=dog_zooseyo_d)");
			r.eval("df.zooseyo_d<-rbind(df.zooseyo_d,df_zooseyo_d)");
			r.eval("dog_zooseyo_xo<-xpathSApply(doc_zooseyo, '//td[@width='88']//img', xmlGetAttr, 'src')");
			r.eval("df_zooseyo_xo<-data.frame(분양완료여부=dog_zooseyo_xo)");
			r.eval("df.zooseyo_xo<-rbind(df.zooseyo_xo,df_zooseyo_xo) }");
			r.eval("df.zooseyo<-cbind(df.zooseyo_r,df.zooseyo_g)");
			r.eval("df.zooseyo<-cbind(df.zooseyo,df.zooseyo_t)");
			r.eval("df.zooseyo<-cbind(df.zooseyo,df.zooseyo_d)");
			r.eval("df.zooseyo<-cbind(df.zooseyo,df.zooseyo_xo)");
			r.eval("df.zooseyo$분양완료여부<-gsub('../images/new-',' ',df.zooseyo$분양완료여부)");
			r.eval("df.zooseyo$분양완료여부<-gsub('.gif',' ',df.zooseyo$분양완료여부)");
			r.eval("df.zooseyo$견종<-gsub('강아지...',' ',df.zooseyo$견종)");
			r.eval("df.zooseyo$견종<-substr(dog_type_count,1,4)");
			r.eval("sell <- df.zooseyo");
			r.eval("df.zooseyo_sell <- sell%>%filter(분양완료여부!=' complete ')");
			r.eval("drv <- JDBC('oracle.jdbc.driver.OracleDriver','c:/palette/ojdbc6.jar')");
			r.eval("conn <- dbConnect(drv,'jdbc:oracle:thin:@localhost:1521:xe','palette','palette')");
			r.eval("dbSendUpdate(conn,'drop table lostdog')");
			r.eval("dbWriteTable(conn,'lostdog',df.zooseyo_sell)");
		}catch(RserveException e) {
			System.out.println(e);
			result = "오류발생!!";
		}finally {
			r.close();
		}
		return result;
	}
}
