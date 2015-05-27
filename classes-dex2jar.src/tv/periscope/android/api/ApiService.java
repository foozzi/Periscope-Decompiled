package tv.periscope.android.api;

import java.util.List;
import o.vl;
import o.vm;
import o.vs;
import o.vt;
import o.vu;
import o.vv;
import o.vw;
import o.vx;
import o.vy;
import o.vz;
import o.wa;
import o.wb;
import o.wc;
import o.wd;
import o.we;
import o.wf;
import o.wg;
import o.wk;
import o.wl;
import o.wm;
import o.wn;
import o.wo;
import o.wp;
import o.wq;
import o.wr;
import o.ws;
import o.wt;
import o.wu;
import o.wv;
import o.ww;
import o.wx;
import o.wy;
import o.wz;
import o.xa;
import o.xb;
import o.xc;
import o.xd;
import o.xe;
import o.xf;
import o.xg;
import o.xh;
import o.xk;
import o.xp;
import o.xq;
import o.xr;
import o.xs;
import o.xw;
import o.xx;
import o.xy;
import o.xz;
import o.ya;
import o.yb;
import o.yc;
import o.yd;
import o.ye;
import o.yf;
import o.yg;
import o.yh;
import o.yj;
import o.yl;
import o.ym;
import o.yn;
import o.yo;
import retrofit.http.Body;
import retrofit.http.Multipart;
import retrofit.http.POST;
import retrofit.http.Part;

public abstract interface ApiService
{
  @POST("/accessChannel")
  public abstract vm accessChannel(@Body vl paramvl);
  
  @POST("/block/add")
  public abstract vt block(@Body vs paramvs);
  
  @POST("/broadcastSummary")
  public abstract vx broadcastSummary(@Body vw paramvw);
  
  @POST("/deleteBroadcast")
  public abstract wb deleteBroadcast(@Body wa paramwa);
  
  @POST("/deleteReplay")
  public abstract wd deleteReplay(@Body wc paramwc);
  
  @Multipart
  @POST("/endBroadcast")
  public abstract we endBroadcast(@Part("cookie") String paramString1, @Part("broadcast_id") String paramString2, @Part("log") yf paramyf);
  
  @POST("/endReplayViewed")
  public abstract wg endReplayViewed(@Body wf paramwf);
  
  @POST("/featuredBroadcastFeed")
  public abstract List<xh> featuredBroadcastFeed(@Body wz paramwz);
  
  @POST("/follow")
  public abstract wl follow(@Body wk paramwk);
  
  @POST("/followingBroadcastFeed")
  public abstract List<xh> followingBroadcastFeed(@Body xa paramxa);
  
  @POST("/block/users")
  public abstract List<PsUser> getBlocked(@Body xk paramxk);
  
  @POST("/getBroadcastIdForShareToken")
  public abstract vv getBroadcastIdForShareToken(@Body vu paramvu);
  
  @POST("/getBroadcastShareURL")
  public abstract wo getBroadcastShareUrl(@Body wn paramwn);
  
  @POST("/getBroadcastViewers")
  public abstract wq getBroadcastViewers(@Body wp paramwp);
  
  @POST("/getBroadcasts")
  public abstract List<xh> getBroadcasts(@Body wm paramwm);
  
  @POST("/followers")
  public abstract List<PsUser> getFollowers(@Body wr paramwr);
  
  @POST("/following")
  public abstract List<PsUser> getFollowing(@Body ws paramws);
  
  @POST("/getSettings")
  public abstract wu getSettings(@Body wt paramwt);
  
  @POST("/user")
  public abstract ww getUser(@Body wv paramwv);
  
  @POST("/globalBroadcastFeed")
  public abstract List<xh> globalBroadcastFeed(@Body xb paramxb);
  
  @POST("/liveBroadcastFeed")
  public abstract List<xh> liveBroadcastFeed(@Body xc paramxc);
  
  @POST("/login")
  public abstract wy login(@Body wx paramwx);
  
  @POST("/loginTwitter")
  public abstract ye login(@Body yd paramyd);
  
  @POST("/markAbuse")
  public abstract xe markAbuse(@Body xd paramxd);
  
  @Multipart
  @POST("/pingBroadcast")
  public abstract xf pingBroadcast(@Part("cookie") String paramString1, @Part("broadcast_id") String paramString2, @Part("log") yf paramyf);
  
  @Multipart
  @POST("/pingWatching")
  public abstract xg pingWatching(@Part("cookie") String paramString1, @Part("broadcast_id") String paramString2, @Part("session") String paramString3, @Part("log") yf paramyf);
  
  @POST("/publishBroadcast")
  public abstract xq publishBroadcast(@Body xp paramxp);
  
  @POST("/replayViewed")
  public abstract xs replayViewed(@Body xr paramxr);
  
  @POST("/setSettings")
  public abstract xx setSettings(@Body xw paramxw);
  
  @POST("/shareBroadcast")
  public abstract xz shareBroadcast(@Body xy paramxy);
  
  @POST("/createBroadcast")
  public abstract vz startBroadcast(@Body vy paramvy);
  
  @Multipart
  @POST("/stopWatching")
  public abstract ya stopWatching(@Part("cookie") String paramString1, @Part("broadcast_id") String paramString2, @Part("session") String paramString3, @Part("log") yf paramyf, @Part("n_hearts") String paramString4, @Part("n_comments") String paramString5, @Part("duration") String paramString6);
  
  @POST("/suggestedPeople")
  public abstract yc suggestedPeople(@Body yb paramyb);
  
  @POST("/block/remove")
  public abstract vt unblock(@Body vs paramvs);
  
  @POST("/unfollow")
  public abstract yh unfollow(@Body yg paramyg);
  
  @POST("/userSearch")
  public abstract List<PsUser> userSearch(@Body yj paramyj);
  
  @POST("/validateUsername")
  public abstract ym validateUsername(@Body yl paramyl);
  
  @POST("/verifyUsername")
  public abstract yo verifyUsername(@Body yn paramyn);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.api.ApiService
 * JD-Core Version:    0.7.0.1
 */