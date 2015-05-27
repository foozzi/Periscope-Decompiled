package o;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import retrofit.RetrofitError;
import retrofit.client.Response;
import retrofit.mime.TypedInput;
import tv.periscope.android.api.PsUser;

public class vn
{
  private static vn bnx;
  private final acm bll;
  private final aad bnA;
  private final zp bnB;
  private final acx bnC;
  private final Handler bnD;
  private final if bnE;
  private final zx bnF;
  private final ot bny;
  private final ot bnz;
  private final Context mContext;
  
  private vn(Context paramContext, ot paramot, aad paramaad, zp paramzp, acm paramacm, zx paramzx)
  {
    this.mContext = paramContext;
    this.bny = paramot;
    this.bnA = paramaad;
    this.bnF = paramzx;
    this.bnB = paramzp;
    this.bll = paramacm;
    this.bnC = new acx();
    this.bnE = new if();
    this.bnz = ot.bW().ᔉ(false).bY();
    this.bnz.ʲ(this.bnE);
    this.bnD = new Handler(Looper.getMainLooper());
  }
  
  private String ˊ(int paramInt1, Bundle paramBundle, int paramInt2, long paramLong)
  {
    return this.bnC.ˏ(new vq(this.bnz, paramInt1, paramBundle, paramInt2, paramLong));
  }
  
  private String ˊ(ot paramot)
  {
    return ˊ(paramot, 16, new Bundle());
  }
  
  private String ˊ(ot paramot, int paramInt, Bundle paramBundle)
  {
    return this.bnC.ˏ(new vq(paramot, paramInt, paramBundle));
  }
  
  private String ˋ(ot paramot)
  {
    return ˊ(paramot, 17, new Bundle());
  }
  
  private String ˎ(ot paramot)
  {
    return ˊ(paramot, 18, new Bundle());
  }
  
  private String ˏ(int paramInt, Bundle paramBundle)
  {
    return ˊ(this.bnz, paramInt, paramBundle);
  }
  
  public static vn ᵋ(Context paramContext)
  {
    if (bnx == null) {
      bnx = new vn(paramContext, vf.tH(), vf.tI(), vf.tL(), vf.tK(), vf.tJ());
    }
    return bnx;
  }
  
  public void tQ()
  {
    Intent localIntent = new Intent(this.mContext, acw.class);
    this.mContext.bindService(localIntent, this.bnC, 1);
  }
  
  public void tR()
  {
    try
    {
      this.mContext.unbindService(this.bnC);
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public String tS()
  {
    return ˏ(5, new Bundle());
  }
  
  public String tT()
  {
    return ˏ(6, new Bundle());
  }
  
  public String tU()
  {
    return ˏ(7, new Bundle());
  }
  
  public String tV()
  {
    return ˏ(37, Bundle.EMPTY);
  }
  
  public String tW()
  {
    return ˏ(14, new Bundle());
  }
  
  public String tX()
  {
    vr localvr = new vr(new vo(this)).ˊ(new aai.if[] { aai.if.btj, aai.if.btk, aai.if.btl });
    ot localot = ot.bW().ᔉ(false).bY();
    localot.ʲ(localvr);
    ˎ(localot);
    ˋ(localot);
    return ˊ(localot);
  }
  
  public String tY()
  {
    return ˏ(22, new Bundle());
  }
  
  public String tZ()
  {
    return ˏ(30, new Bundle());
  }
  
  public void ua()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_file_dir", this.mContext.getFilesDir().getAbsolutePath());
    ˊ(40, localBundle, 0, 0L);
  }
  
  public String ʻ(String paramString1, String paramString2, String paramString3)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString1);
    localBundle.putString("e_session_id", paramString2);
    localBundle.putString("e_log", paramString3);
    return ˏ(27, localBundle);
  }
  
  public String ʼ(boolean paramBoolean1, boolean paramBoolean2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("e_user_follow_enabled", paramBoolean1);
    localBundle.putBoolean("e_autosave_enabled", paramBoolean2);
    return ˏ(29, localBundle);
  }
  
  public String ˊ(String paramString1, String paramString2, float paramFloat1, float paramFloat2, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString1);
    localBundle.putString("e_session_id", paramString2);
    localBundle.putFloat("e_duration", paramFloat1);
    localBundle.putFloat("e_completion", paramFloat2);
    localBundle.putInt("e_num_hearts", paramInt);
    return ˏ(25, localBundle);
  }
  
  public String ˊ(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, float paramFloat)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString1);
    localBundle.putString("e_session_id", paramString2);
    localBundle.putString("e_log", paramString3);
    localBundle.putInt("e_num_hearts", paramInt1);
    localBundle.putInt("e_n_comments", paramInt2);
    localBundle.putFloat("e_duration", paramFloat);
    return ˏ(28, localBundle);
  }
  
  public String ˊ(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_secret_key", paramString1);
    localBundle.putString("e_secret_token", paramString2);
    localBundle.putString("e_username", paramString3);
    localBundle.putString("e_user_id", paramString4);
    localBundle.putString("e_phone_number", paramString5);
    localBundle.putString("e_install_id", paramString6);
    return ˏ(1, localBundle);
  }
  
  public String ˊ(String paramString1, String paramString2, ArrayList<String> paramArrayList, boolean paramBoolean1, float paramFloat1, float paramFloat2, boolean paramBoolean2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString1);
    localBundle.putString("e_title", paramString2);
    localBundle.putStringArrayList("e_locked_ids", paramArrayList);
    localBundle.putBoolean("e_has_loc", paramBoolean1);
    localBundle.putFloat("e_lat", paramFloat1);
    localBundle.putFloat("e_long", paramFloat2);
    localBundle.putBoolean("e_following_only_chat", paramBoolean2);
    return ˏ(26, localBundle);
  }
  
  public String ˊ(String paramString, ArrayList<String> paramArrayList)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString);
    localBundle.putStringArrayList("e_user_ids", paramArrayList);
    return ˏ(38, localBundle);
  }
  
  public String ˊ(ArrayList<String> paramArrayList)
  {
    Bundle localBundle = new Bundle();
    localBundle.putStringArrayList("extra_ids", paramArrayList);
    return ˊ(19, localBundle, 0, 0L);
  }
  
  public String ˊ(HashSet<String> paramHashSet)
  {
    this.bnA.ˋ(paramHashSet);
    Bundle localBundle = new Bundle();
    localBundle.putStringArray("extra_ids", (String[])paramHashSet.toArray(new String[paramHashSet.size()]));
    return ˏ(21, localBundle);
  }
  
  public void ˊ(aaj paramaaj)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
    mn.bd().bi();
    this.bnA.logout();
    this.bnB.logout();
    this.bll.unregister();
    vf.tJ().logout();
    localSharedPreferences.edit().clear().apply();
    this.bny.ˣ(paramaaj);
  }
  
  public String ˋ(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_username", paramString1);
    localBundle.putString("e_display_name", paramString2);
    localBundle.putString("e_secret_key", paramString3);
    localBundle.putString("e_secret_token", paramString4);
    return ˏ(3, localBundle);
  }
  
  public String ˮ(String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString1);
    localBundle.putString("e_broadcast_id", paramString2);
    return ˏ(20, localBundle);
  }
  
  public String ۥ(String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_session_id", paramString2);
    localBundle.putString("e_broadcast_id", paramString1);
    return ˏ(24, localBundle);
  }
  
  public String ว(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString);
    return ˏ(10, localBundle);
  }
  
  public String ᐝ(String paramString1, String paramString2, String paramString3)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_username", paramString1);
    localBundle.putString("e_secret_key", paramString2);
    localBundle.putString("e_secret_token", paramString3);
    return ˏ(2, localBundle);
  }
  
  public String ᐠ(String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString1);
    localBundle.putString("e_log", paramString2);
    return ˏ(31, localBundle);
  }
  
  public String ᐣ(String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString1);
    localBundle.putString("e_log", paramString2);
    return ˏ(32, localBundle);
  }
  
  public String ᐦ(String paramString)
  {
    this.bnA.ﭕ(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString);
    return ˏ(8, localBundle);
  }
  
  public String ᒄ(String paramString)
  {
    this.bnA.ﭜ(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString);
    return ˏ(9, localBundle);
  }
  
  public String ᒼ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString);
    return ˏ(11, localBundle);
  }
  
  public String ᓑ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString);
    return ˏ(12, localBundle);
  }
  
  public String ᔆ(String paramString)
  {
    this.bnA.ﭡ(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString);
    return ˏ(35, localBundle);
  }
  
  public String ᴖ(String paramString)
  {
    this.bnA.ﭤ(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("e_user_id", paramString);
    return ˏ(36, localBundle);
  }
  
  public String ᴬ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString);
    return ˏ(13, localBundle);
  }
  
  public String ᴱ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString);
    return ˏ(41, localBundle);
  }
  
  public String ᴲ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString);
    return ˏ(33, localBundle);
  }
  
  public String ᴾ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("extra_query", paramString);
    return ˏ(15, localBundle);
  }
  
  public String ᵁ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_width", 320);
    localBundle.putInt("extra_height", 568);
    localBundle.putString("e_region", paramString);
    return ˏ(23, localBundle);
  }
  
  public String ᵃ(String paramString)
  {
    Object localObject = this.bnB.ị(paramString);
    ((xh)localObject).boT = false;
    this.bnB.ˋ((xh)localObject);
    localObject = new Bundle();
    ((Bundle)localObject).putString("e_broadcast_id", paramString);
    return ˏ(42, (Bundle)localObject);
  }
  
  public String ᵅ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString);
    return ˏ(43, localBundle);
  }
  
  public void ᵉ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_broadcast_id", paramString);
    ˏ(34, localBundle);
  }
  
  public void ᵊ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("e_token", paramString);
    ˏ(39, localBundle);
  }
  
  class if
  {
    if() {}
    
    private void ˋ(aai paramaai)
    {
      Object localObject;
      switch (vn.1.bnK[paramaai.bsV.ordinal()])
      {
      default: 
      case 4: 
        if (paramaai.vA())
        {
          paramaai = (ye)paramaai.data;
          vn.ʻ(vn.this).ˋ(paramaai.boA);
          vn.ʼ(vn.this).ヽ(paramaai.bpu);
          return;
        }
        break;
      case 5: 
        if (paramaai.vA())
        {
          paramaai = (yo)paramaai.data;
          vn.ʻ(vn.this).ˋ(paramaai.boA);
          vn.ʻ(vn.this).vk();
          return;
        }
        break;
      case 6: 
        if (paramaai.vA())
        {
          paramaai = (ww)paramaai.data;
          if (Objects.equals(paramaai.boA.id, vn.ʻ(vn.this).vx())) {
            vn.ʻ(vn.this).ˋ(paramaai.boA);
          }
          vn.ʻ(vn.this).ˊ(paramaai.boA);
          return;
        }
        break;
      case 7: 
        if (paramaai.vA())
        {
          paramaai = (wj)paramaai.data;
          if (Objects.equals(paramaai.bop, vn.ʻ(vn.this).vx())) {
            vn.ʻ(vn.this).ᐨ(paramaai.boq);
          } else {
            vn.ʻ(vn.this).ˊ(aah.bsL, paramaai.bop, paramaai.boq);
          }
          return;
        }
        break;
      case 8: 
        if (paramaai.vA())
        {
          paramaai = (wj)paramaai.data;
          if (Objects.equals(paramaai.bop, vn.ʻ(vn.this).vx())) {
            vn.ʻ(vn.this).ﹳ(paramaai.boq);
          } else {
            vn.ʻ(vn.this).ˊ(aah.bsM, paramaai.bop, paramaai.boq);
          }
          return;
        }
        break;
      case 9: 
        if (paramaai.vA())
        {
          paramaai = (List)paramaai.data;
          vn.ʻ(vn.this).ﾞ(paramaai);
          return;
        }
        break;
      case 10: 
        if (paramaai.vA())
        {
          paramaai = (List)paramaai.data;
          localObject = vn.ʻ(vn.this).vx();
          vn.ʻ(vn.this).ˊ(aah.bsR, (String)localObject, paramaai);
          return;
        }
        break;
      case 11: 
        if (paramaai.vA())
        {
          paramaai = (yc)paramaai.data;
          localObject = vn.ʻ(vn.this);
          String str = ((aad)localObject).vx();
          ((aad)localObject).ˊ(aah.bsP, str, paramaai.bpW);
          ((aad)localObject).ˊ(aah.bsO, str, paramaai.bpX);
          ((aad)localObject).ˊ(aah.bsQ, str, paramaai.bpY);
          ((aad)localObject).vf();
          return;
        }
        break;
      case 12: 
        if (paramaai.vA())
        {
          paramaai = (vm)paramaai.data;
          vn.ˋ(vn.this).ˋ(paramaai.bnr);
          return;
        }
        break;
      case 13: 
        if (paramaai.vA())
        {
          paramaai = (List)paramaai.data;
          vn.ˋ(vn.this).ᐧ(paramaai);
          return;
        }
        break;
      case 14: 
        if (paramaai.vA())
        {
          paramaai = (wq)paramaai.data;
          vn.ʻ(vn.this).ˊ(paramaai.box, paramaai.bnh, paramaai.bos, paramaai.bot);
          vn.ˋ(vn.this).ˊ(paramaai.bnh, anf.ۥ(paramaai.bou, paramaai.bov, paramaai.bow));
          return;
        }
        break;
      case 15: 
        if (paramaai.vA())
        {
          paramaai = (vx)paramaai.data;
          vn.ˋ(vn.this).ˋ(paramaai.bnr);
          return;
        }
        break;
      case 16: 
        if (paramaai.vA())
        {
          vn.ˋ(vn.this).ـ((List)paramaai.data);
          return;
        }
        vn.ˋ(vn.this).uY();
      }
    }
    
    public void onEventMainThread(aai paramaai)
    {
      if ((!paramaai.vA()) && (paramaai.bsW.getResponse() != null) && (paramaai.bsW.getResponse().getStatus() == 401))
      {
        if (paramaai.bsW.getResponse().getBody().mimeType().equals("application/json")) {
          try
          {
            wh localwh = (wh)paramaai.bsW.getBodyAs(wh.class);
            if ((localwh != null) && (localwh.boo.code == 64))
            {
              akk.ᐪ("ApiManager", "Banned user detected for " + paramaai.bsV + ", logging out.");
              vn.this.ˊ(aaj.btM);
              return;
            }
          }
          catch (RuntimeException localRuntimeException) {}
        }
        akk.ᐪ("ApiManager", "Unauthorized detected for " + paramaai.bsV + ", logging out.");
        vn.this.ˊ(aaj.btL);
        return;
      }
      ˋ(paramaai);
      vn.ˎ(vn.this).ˣ(paramaai);
    }
    
    public void onEventMainThread(aam paramaam)
    {
      vn.ᐝ(vn.this).postDelayed(new vp(this, paramaam), paramaam.buh.ub());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.vn
 * JD-Core Version:    0.7.0.1
 */