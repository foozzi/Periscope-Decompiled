package o;

import android.os.Bundle;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.RetrofitError.Kind;
import retrofit.client.Response;
import retrofit.mime.TypedFile;
import tv.periscope.android.api.ApiService;

public class vq
  implements Runnable
{
  private final aad bnA;
  private final ApiService bnN;
  private final int bnO;
  private final Bundle bnP;
  private long bnQ;
  private final long bnR;
  private int bnS;
  private final ot bny;
  
  public vq(ot paramot, int paramInt, Bundle paramBundle)
  {
    this(paramot, paramInt, paramBundle, 5, 2000L);
  }
  
  public vq(ot paramot, int paramInt1, Bundle paramBundle, int paramInt2, long paramLong)
  {
    this.bnO = paramInt1;
    this.bnP = paramBundle;
    this.bnN = ((ApiService)xt.un().create(ApiService.class));
    this.bnA = vf.tI();
    this.bny = paramot;
    this.bnS = paramInt2;
    this.bnR = paramLong;
    this.bnQ = this.bnR;
  }
  
  private aai uc()
  {
    Object localObject = new xk();
    try
    {
      localObject = this.bnN.getBlocked((xk)localObject);
      localObject = new aai(aai.if.btG, localObject);
      return localObject;
    }
    catch (RetrofitError localRetrofitError)
    {
      return new aai(aai.if.btG, localRetrofitError);
    }
  }
  
  private aai ʻ(Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("e_broadcast_id");
    wc localwc = new wc();
    localwc.bnh = paramBundle;
    try
    {
      paramBundle = this.bnN.deleteReplay(localwc);
      paramBundle = new aai(aai.if.btr, paramBundle);
      return paramBundle;
    }
    catch (RetrofitError paramBundle) {}
    return new aai(aai.if.btr, paramBundle);
  }
  
  private boolean ʻ(RetrofitError paramRetrofitError)
  {
    return (paramRetrofitError.getKind() == RetrofitError.Kind.NETWORK) || ((paramRetrofitError.getCause() != null) && (((paramRetrofitError.getCause() instanceof UnknownHostException)) || ((paramRetrofitError.getCause() instanceof ConnectException))));
  }
  
  private aai ʼ(Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("e_broadcast_id");
    wa localwa = new wa();
    localwa.bnh = paramBundle;
    try
    {
      paramBundle = this.bnN.deleteBroadcast(localwa);
      paramBundle = new aai(aai.if.btu, paramBundle);
      return paramBundle;
    }
    catch (RetrofitError paramBundle) {}
    return new aai(aai.if.btu, paramBundle);
  }
  
  private aai ʽ(Bundle paramBundle)
  {
    xy localxy = new xy();
    localxy.bnh = paramBundle.getString("e_broadcast_id");
    localxy.bpT = paramBundle.getStringArrayList("e_user_ids");
    try
    {
      paramBundle = this.bnN.shareBroadcast(localxy);
      paramBundle = new aai(aai.if.btv, paramBundle);
      return paramBundle;
    }
    catch (RetrofitError paramBundle) {}
    return new aai(aai.if.btv, paramBundle);
  }
  
  private aai ʾ(Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("e_user_id");
    vs localvs = new vs();
    localvs.nD = paramBundle;
    try
    {
      paramBundle = this.bnN.block(localvs);
      paramBundle = new aai(aai.if.btE, paramBundle);
      return paramBundle;
    }
    catch (RetrofitError paramBundle) {}
    return new aai(aai.if.btE, paramBundle);
  }
  
  private aai ʿ(Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("e_user_id");
    vs localvs = new vs();
    localvs.nD = paramBundle;
    try
    {
      paramBundle = this.bnN.unblock(localvs);
      paramBundle = new aai(aai.if.btF, paramBundle);
      return paramBundle;
    }
    catch (RetrofitError paramBundle) {}
    return new aai(aai.if.btF, paramBundle);
  }
  
  private aai ͺ(Bundle paramBundle)
  {
    xd localxd = new xd();
    localxd.bnh = paramBundle.getString("e_broadcast_id");
    try
    {
      paramBundle = this.bnN.markAbuse(localxd);
      paramBundle = new aai(aai.if.btw, paramBundle);
      return paramBundle;
    }
    catch (RetrofitError paramBundle) {}
    return new aai(aai.if.btw, paramBundle);
  }
  
  private aai ᐝ(int paramInt, Bundle paramBundle)
  {
    Object localObject1;
    Object localObject4;
    Object localObject5;
    Object localObject6;
    Object localObject2;
    int i;
    Object localObject3;
    float f1;
    float f2;
    boolean bool1;
    boolean bool2;
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
      localObject1 = paramBundle.getString("e_secret_key");
      localObject4 = paramBundle.getString("e_secret_token");
      localObject5 = paramBundle.getString("e_username");
      localObject6 = paramBundle.getString("e_user_id");
      String str = paramBundle.getString("e_phone_number");
      paramBundle = paramBundle.getString("e_install_id");
      try
      {
        yd localyd = new yd();
        localyd.bpZ = ((String)localObject4);
        localyd.bqa = ((String)localObject1);
        localyd.nF = ((String)localObject5);
        localyd.nD = ((String)localObject6);
        localyd.bqb = str;
        localyd.bqc = paramBundle;
        paramBundle = this.bnN.login(localyd);
        paramBundle = new aai(aai.if.bsX, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bsX, paramBundle);
      }
    case 2: 
      localObject1 = paramBundle.getString("e_username");
      try
      {
        localObject4 = paramBundle.getString("e_secret_key");
        paramBundle = paramBundle.getString("e_secret_token");
        localObject5 = new yl();
        ((yl)localObject5).bpx = ((String)localObject1);
        ((yl)localObject5).bpZ = ((String)localObject4);
        ((yl)localObject5).bqa = paramBundle;
        paramBundle = this.bnN.validateUsername((yl)localObject5);
        paramBundle = new aai(aai.if.bsY, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        try
        {
          localObject1 = new aai(aai.if.bsY, paramBundle, paramBundle.getBodyAs(yk.class));
          return localObject1;
        }
        catch (RuntimeException localRuntimeException)
        {
          return new aai(aai.if.bsY, paramBundle);
        }
      }
    case 3: 
      localObject2 = paramBundle.getString("e_username");
      localObject4 = paramBundle.getString("e_display_name");
      localObject5 = paramBundle.getString("e_secret_key");
      paramBundle = paramBundle.getString("e_secret_token");
      localObject6 = new yn();
      ((yn)localObject6).bpx = ((String)localObject2);
      ((yn)localObject6).bpy = ((String)localObject4);
      ((yn)localObject6).bpZ = ((String)localObject5);
      ((yn)localObject6).bqa = paramBundle;
      try
      {
        paramBundle = this.bnN.verifyUsername((yn)localObject6);
        paramBundle = new aai(aai.if.bsZ, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bsZ, paramBundle);
      }
    case 5: 
      paramBundle = this.bnA.vx();
      localObject2 = new wv();
      ((wv)localObject2).nD = paramBundle;
      try
      {
        paramBundle = this.bnN.getUser((wv)localObject2);
        paramBundle = new aai(aai.if.btb, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btb, paramBundle);
      }
    case 6: 
      paramBundle = this.bnA.vx();
      localObject2 = new wr();
      ((wr)localObject2).nD = paramBundle;
      try
      {
        localObject2 = this.bnN.getFollowers((wr)localObject2);
        paramBundle = new aai(aai.if.btc, new wj(paramBundle, (List)localObject2));
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btc, paramBundle);
      }
    case 7: 
      paramBundle = this.bnA.vx();
      localObject2 = new ws();
      ((ws)localObject2).nD = paramBundle;
      try
      {
        localObject2 = this.bnN.getFollowing((ws)localObject2);
        paramBundle = new aai(aai.if.btd, new wj(paramBundle, (List)localObject2));
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btd, paramBundle);
      }
    case 8: 
      paramBundle = paramBundle.getString("e_user_id");
      localObject2 = new wk();
      ((wk)localObject2).nD = paramBundle;
      try
      {
        paramBundle = this.bnN.follow((wk)localObject2);
        paramBundle = new aai(aai.if.bte, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bte, paramBundle);
      }
    case 21: 
      localObject2 = paramBundle.getStringArray("extra_ids");
      paramBundle = (Bundle)localObject2;
      if (localObject2.length > 100) {
        paramBundle = (String[])Arrays.copyOfRange((Object[])localObject2, 0, 100);
      }
      int k = paramBundle.length;
      paramInt = 0;
      int m = paramBundle.length;
      i = 0;
      while (i < m)
      {
        localObject2 = paramBundle[i];
        localObject4 = new wk();
        ((wk)localObject4).nD = ((String)localObject2);
        int j = paramInt;
        try
        {
          localObject2 = this.bnN.follow((wk)localObject4);
          paramInt += 1;
          if (paramInt == k)
          {
            j = paramInt;
            localObject2 = new aai(aai.if.btp, localObject2);
            return localObject2;
          }
        }
        catch (RetrofitError localRetrofitError)
        {
          j += 1;
          paramInt = j;
          if (j == k) {
            return new aai(aai.if.btp, localRetrofitError);
          }
        }
        i += 1;
      }
      break;
    case 9: 
      paramBundle = paramBundle.getString("e_user_id");
      localObject3 = new yg();
      ((yg)localObject3).nD = paramBundle;
      try
      {
        paramBundle = this.bnN.unfollow((yg)localObject3);
        paramBundle = new aai(aai.if.btf, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btf, paramBundle);
      }
    case 10: 
      paramBundle = paramBundle.getString("e_user_id");
      localObject3 = new wv();
      ((wv)localObject3).nD = paramBundle;
      try
      {
        paramBundle = this.bnN.getUser((wv)localObject3);
        paramBundle = new aai(aai.if.btb, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btb, paramBundle);
      }
    case 12: 
      paramBundle = paramBundle.getString("e_user_id");
      localObject3 = new wr();
      ((wr)localObject3).nD = paramBundle;
      try
      {
        localObject3 = this.bnN.getFollowers((wr)localObject3);
        paramBundle = new aai(aai.if.btc, new wj(paramBundle, (List)localObject3));
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btc, paramBundle);
      }
    case 11: 
      paramBundle = paramBundle.getString("e_user_id");
      localObject3 = new ws();
      ((ws)localObject3).nD = paramBundle;
      try
      {
        localObject3 = this.bnN.getFollowing((ws)localObject3);
        paramBundle = new aai(aai.if.btd, new wj(paramBundle, (List)localObject3));
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btd, paramBundle);
      }
    case 13: 
      paramBundle = paramBundle.getString("e_broadcast_id");
      localObject3 = new vl();
      ((vl)localObject3).bnh = paramBundle;
      try
      {
        paramBundle = this.bnN.accessChannel((vl)localObject3);
        paramBundle = new aai(aai.if.btg, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btg, paramBundle);
      }
    case 14: 
      paramBundle = this.bnA.vm();
      localObject3 = this.bnA.vn();
      localObject4 = new yb();
      ((yb)localObject4).bpU = paramBundle;
      ((yb)localObject4).bpV = ((String)localObject3);
      try
      {
        paramBundle = this.bnN.suggestedPeople((yb)localObject4);
        paramBundle = new aai(aai.if.bth, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bth, paramBundle);
      }
    case 15: 
      paramBundle = paramBundle.getString("extra_query");
      localObject3 = new yj();
      ((yj)localObject3).bqg = paramBundle;
      try
      {
        paramBundle = this.bnN.userSearch((yj)localObject3);
        paramBundle = new aai(aai.if.bti, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bti, paramBundle);
      }
    case 16: 
      paramBundle = new xc();
      try
      {
        paramBundle = this.bnN.liveBroadcastFeed(paramBundle);
        paramBundle = new aai(aai.if.btj, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btj, paramBundle);
      }
    case 17: 
      paramBundle = new xa();
      try
      {
        paramBundle = this.bnN.followingBroadcastFeed(paramBundle);
        paramBundle = new aai(aai.if.btl, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btl, paramBundle);
      }
    case 18: 
      paramBundle = new wz();
      try
      {
        paramBundle = this.bnN.featuredBroadcastFeed(paramBundle);
        paramBundle = new aai(aai.if.btk, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btk, paramBundle);
      }
    case 19: 
      paramBundle = paramBundle.getStringArrayList("extra_ids");
      localObject3 = new wm();
      ((wm)localObject3).bor = paramBundle;
      try
      {
        paramBundle = this.bnN.getBroadcasts((wm)localObject3);
        paramBundle = new aai(aai.if.btm, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btm, paramBundle);
      }
    case 20: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      paramBundle = paramBundle.getString("e_user_id");
      localObject4 = new wp();
      ((wp)localObject4).id = ((String)localObject3);
      try
      {
        localObject4 = this.bnN.getBroadcastViewers((wp)localObject4);
        ((wq)localObject4).bnh = ((String)localObject3);
        ((wq)localObject4).box = paramBundle;
        paramBundle = new aai(aai.if.bto, localObject4);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bto, paramBundle);
      }
    case 22: 
      paramBundle = new xc();
      try
      {
        paramBundle = this.bnN.liveBroadcastFeed(paramBundle);
        paramBundle = new aai(aai.if.btq, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btq, paramBundle);
      }
    case 23: 
      paramInt = paramBundle.getInt("extra_width");
      i = paramBundle.getInt("extra_height");
      paramBundle = paramBundle.getString("e_region");
      localObject3 = new vy();
      ((vy)localObject3).bnX = 0.0D;
      ((vy)localObject3).bnY = 0.0D;
      ((vy)localObject3).width = paramInt;
      ((vy)localObject3).height = i;
      ((vy)localObject3).bnZ = paramBundle;
      try
      {
        paramBundle = this.bnN.startBroadcast((vy)localObject3);
        paramBundle = new aai(aai.if.bts, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bts, paramBundle);
      }
    case 24: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      paramBundle = paramBundle.getString("e_session_id");
      localObject4 = new xr();
      ((xr)localObject4).bnh = ((String)localObject3);
      ((xr)localObject4).bnn = paramBundle;
      try
      {
        this.bnN.replayViewed((xr)localObject4);
      }
      catch (RetrofitError paramBundle) {}
    case 25: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      localObject4 = paramBundle.getString("e_session_id");
      f1 = paramBundle.getFloat("e_duration");
      f2 = paramBundle.getFloat("e_completion");
      paramInt = paramBundle.getInt("e_num_hearts");
      paramBundle = new wf();
      paramBundle.bnh = ((String)localObject3);
      paramBundle.bnn = ((String)localObject4);
      paramBundle.bol = f1;
      paramBundle.bom = f2;
      paramBundle.bon = paramInt;
      try
      {
        this.bnN.endReplayViewed(paramBundle);
      }
      catch (RetrofitError paramBundle) {}
    case 42: 
      return ʻ(paramBundle);
    case 26: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      localObject4 = paramBundle.getString("e_title");
      localObject5 = paramBundle.getStringArrayList("e_locked_ids");
      bool1 = paramBundle.getBoolean("e_has_loc");
      f1 = paramBundle.getFloat("e_lat");
      f2 = paramBundle.getFloat("e_long");
      bool2 = paramBundle.getBoolean("e_following_only_chat");
      paramBundle = new xp();
      paramBundle.bnh = ((String)localObject3);
      paramBundle.YW = ((String)localObject4);
      paramBundle.bpM = ((ArrayList)localObject5);
      paramBundle.boL = bool1;
      paramBundle.bpN = f1;
      paramBundle.bpO = f2;
      paramBundle.bpP = bool2;
      try
      {
        paramBundle = this.bnN.publishBroadcast(paramBundle);
        paramBundle = new aai(aai.if.btt, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btt, paramBundle);
      }
    case 43: 
      return ʼ(paramBundle);
    case 27: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      localObject4 = paramBundle.getString("e_session_id");
      paramBundle = paramBundle.getString("e_log");
      localObject5 = new xk().bpu;
      try
      {
        paramBundle = this.bnN.pingWatching((String)localObject5, (String)localObject3, (String)localObject4, new yf(paramBundle, "log.txt"));
        paramBundle = new aai(aai.if.btx, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btx, paramBundle);
      }
    case 28: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      localObject4 = paramBundle.getString("e_session_id");
      localObject5 = paramBundle.getString("e_log");
      paramInt = paramBundle.getInt("e_num_hearts");
      i = paramBundle.getInt("e_n_comments");
      f1 = paramBundle.getFloat("e_duration");
      paramBundle = new xk().bpu;
      try
      {
        paramBundle = this.bnN.stopWatching(paramBundle, (String)localObject3, (String)localObject4, new yf((String)localObject5, "log.txt"), String.valueOf(paramInt), String.valueOf(i), String.valueOf(f1));
        paramBundle = new aai(aai.if.bty, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.bty, paramBundle);
      }
    case 29: 
      bool1 = paramBundle.getBoolean("e_user_follow_enabled");
      bool2 = paramBundle.getBoolean("e_autosave_enabled");
      paramBundle = new xw();
      localObject3 = new xm();
      ((xm)localObject3).bpv = bool1;
      ((xm)localObject3).bpw = bool2;
      paramBundle.bpS = ((xm)localObject3);
      try
      {
        paramBundle = this.bnN.setSettings(paramBundle);
        paramBundle = new aai(aai.if.btA, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btA, paramBundle);
      }
    case 30: 
      paramBundle = new wt();
      try
      {
        paramBundle = this.bnN.getSettings(paramBundle);
        paramBundle = new aai(aai.if.btz, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btz, paramBundle);
      }
    case 31: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      paramBundle = paramBundle.getString("e_log");
      localObject4 = new xk().bpu;
      try
      {
        paramBundle = this.bnN.endBroadcast((String)localObject4, (String)localObject3, new yf(paramBundle, "log.txt"));
        paramBundle = new aai(aai.if.btB, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btB, paramBundle);
      }
    case 32: 
      localObject3 = paramBundle.getString("e_broadcast_id");
      paramBundle = paramBundle.getString("e_log");
      localObject4 = new xk().bpu;
      try
      {
        paramBundle = this.bnN.pingBroadcast((String)localObject4, (String)localObject3, new yf(paramBundle, "log.txt"));
        paramBundle = new aai(aai.if.btC, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btC, paramBundle);
      }
    case 38: 
      return ʽ(paramBundle);
    case 41: 
      return ͺ(paramBundle);
    case 33: 
      return ι(paramBundle);
    case 34: 
      paramBundle = paramBundle.getString("e_broadcast_id");
      localObject3 = new vw();
      ((vw)localObject3).bnh = paramBundle;
      try
      {
        paramBundle = this.bnN.broadcastSummary((vw)localObject3);
        paramBundle = new aai(aai.if.btD, paramBundle);
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btD, paramBundle);
      }
    case 35: 
      return ʾ(paramBundle);
    case 36: 
      return ʿ(paramBundle);
    case 37: 
      akk.ᐪ("BLOCK", "GETTING BLOCKED.");
      return uc();
    case 39: 
      paramBundle = paramBundle.getString("e_token");
      localObject3 = new vu();
      ((vu)localObject3).Qn = paramBundle;
      try
      {
        paramBundle = new aai(aai.if.btH, this.bnN.getBroadcastIdForShareToken((vu)localObject3));
        return paramBundle;
      }
      catch (RetrofitError paramBundle)
      {
        return new aai(aai.if.btH, paramBundle);
      }
    case 40: 
      try
      {
        localObject3 = new File(paramBundle.getString("e_file_dir"), "padding.padding");
        paramBundle = new OutputStreamWriter(new FileOutputStream((File)localObject3));
        paramBundle.write(new char[250000]);
        localObject3 = new TypedFile("multipart/form-data", (File)localObject3);
        long l = System.currentTimeMillis();
        try
        {
          localObject3 = adb.ˊ(vf.tJ().ve(), (TypedFile)localObject3);
          paramBundle.flush();
          paramBundle.close();
          ((yi)localObject3).bqf = (250000.0F / ((float)(System.currentTimeMillis() - l) / 1000.0F));
          paramBundle = new aai(aai.if.btI, localObject3);
          return paramBundle;
        }
        catch (RetrofitError paramBundle)
        {
          paramBundle = new aai(aai.if.btI, paramBundle);
          return paramBundle;
        }
        return null;
      }
      catch (IOException paramBundle)
      {
        return new aai(aai.if.btI, paramBundle);
      }
    }
  }
  
  private boolean ᐝ(RetrofitError paramRetrofitError)
  {
    if (paramRetrofitError.getResponse() != null)
    {
      int i = paramRetrofitError.getResponse().getStatus();
      return (i >= 500) && (i < 600);
    }
    return false;
  }
  
  private aai ι(Bundle paramBundle)
  {
    wn localwn = new wn();
    localwn.id = paramBundle.getString("e_broadcast_id");
    try
    {
      paramBundle = this.bnN.getBroadcastShareUrl(localwn);
      paramBundle.id = localwn.id;
      paramBundle = new aai(aai.if.btn, paramBundle);
      return paramBundle;
    }
    catch (RetrofitError paramBundle) {}
    return new aai(aai.if.btn, paramBundle);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    aai localaai = ᐝ(this.bnO, this.bnP);
    if ((localaai != null) && (!localaai.vA()) && ((ᐝ(localaai.bsW)) || (ʻ(localaai.bsW))))
    {
      akk.ᐪ("PsApi", "A problem was detected for action code " + this.bnO + ". Retrying. Num retries left: " + this.bnS + ". Current backoff: " + this.bnQ);
      if (this.bnS <= 0)
      {
        akk.ᐪ("PsApi", "No retries remaining for " + this.bnO + ". Posting error.");
        this.bny.ˣ(localaai);
        return;
      }
      this.bnS -= 1;
      this.bnQ += this.bnR;
      this.bny.ˣ(new aam(this));
      return;
    }
    akk.ᐪ("PsApi", "No problems detected for action code: " + this.bnO + ". Num retries left: " + this.bnS + ". Current backoff:" + this.bnQ);
    if (localaai != null) {
      this.bny.ˣ(localaai);
    }
  }
  
  public long ub()
  {
    return this.bnQ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.vq
 * JD-Core Version:    0.7.0.1
 */