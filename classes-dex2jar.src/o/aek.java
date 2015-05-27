package o;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.Map;
import tv.periscope.android.api.PsUser;

public class aek
  implements aaq.ˏ, aaq.ʻ, aaq.if, TextureView.SurfaceTextureListener, aat.if
{
  private int bAC;
  private String bAD;
  protected boolean bAE;
  protected boolean bAF;
  protected int bAG;
  private boolean bAH;
  private boolean bAI;
  private boolean bAJ;
  private boolean bAK;
  private boolean bAL;
  private boolean bAM;
  private if bAN;
  private double bAO;
  protected PsUser bsE;
  private aaq buK;
  private Surface bvD;
  private boolean bwl;
  private Context mContext;
  private Handler mHandler = new Handler(Looper.getMainLooper());
  
  public aek(Context paramContext, PsUser paramPsUser, TextureView paramTextureView, if paramif, boolean paramBoolean)
  {
    this.mContext = paramContext.getApplicationContext();
    this.bAE = false;
    this.bAN = paramif;
    paramTextureView.setSurfaceTextureListener(this);
    if (paramTextureView.isAvailable())
    {
      this.bAJ = true;
      this.bvD = new Surface(paramTextureView.getSurfaceTexture());
    }
    this.bsE = paramPsUser;
    this.bAE = paramBoolean;
  }
  
  private aaq.aux xO()
  {
    String str = ː(this.mContext);
    switch (this.bAC)
    {
    default: 
      break;
    case 1: 
      throw new UnsupportedOperationException("unsupported type ss");
    case 0: 
      throw new UnsupportedOperationException("unsupported type dash");
    case 3: 
      return new aap(this.mContext, str, this.bAD, null, null);
    case 4: 
      return new aat(this.bAD, this);
    }
    return new aao(this.mContext, str, Uri.parse(this.bAD), null, new ᒺ());
  }
  
  private void xP()
  {
    if (this.buK != null)
    {
      new ael(this, this.buK).start();
      this.buK = null;
    }
  }
  
  private void xS()
  {
    if (this.bAL) {
      return;
    }
    if (this.buK == null) {
      return;
    }
    this.bAL = true;
    yc();
    this.buK.seekTo(0L);
    this.buK.ᑊ(true);
  }
  
  private void yc()
  {
    this.mHandler.post(new aen(this));
  }
  
  private void yd()
  {
    this.mHandler.post(new aeo(this));
  }
  
  private void ye()
  {
    this.mHandler.post(new aep(this));
  }
  
  private void yf()
  {
    this.mHandler.post(new aeq(this));
  }
  
  private void yg()
  {
    this.mHandler.post(new aer(this));
  }
  
  private void ʽ(Exception paramException)
  {
    this.mHandler.post(new aes(this, paramException));
  }
  
  public static String ː(Context paramContext)
  {
    String str2;
    try
    {
      String str1 = paramContext.getPackageName();
      str1 = paramContext.getPackageManager().getPackageInfo(str1, 0).versionName;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      str2 = "?";
    }
    return paramContext.getString(2131099908, new Object[] { str2, Build.VERSION.RELEASE, "ExoPlayerLib/1.3.3" });
  }
  
  private void ᔾ(boolean paramBoolean)
  {
    if (this.buK == null)
    {
      this.bAK = true;
      this.buK = new aaq(xO());
      this.buK.ˊ(this);
      this.buK.ˊ(this);
      this.buK.ˊ(this);
      aan localaan = new aan();
      localaan.vB();
      this.buK.ˊ(localaan);
      this.buK.ˊ(localaan);
      this.buK.ˊ(localaan);
    }
    if (this.bAK)
    {
      this.buK.prepare();
      this.bAK = false;
    }
    this.buK.setSurface(this.bvD);
    if (paramBoolean) {
      xQ();
    }
  }
  
  public boolean isPaused()
  {
    return this.bwl;
  }
  
  public boolean isPlaying()
  {
    return this.bAL;
  }
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    if (!this.bAJ)
    {
      this.bAJ = true;
      this.bvD = new Surface(paramSurfaceTexture);
    }
    if (!this.bAI) {
      return;
    }
    ᔾ(this.bAE);
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    return false;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
  
  public void release()
  {
    this.bAH = true;
    xP();
  }
  
  public void vL()
  {
    if (this.bAH) {
      return;
    }
    this.mHandler.post(new aem(this));
  }
  
  public void xQ()
  {
    if (this.bAL) {
      return;
    }
    ye();
    if (this.bAF) {
      xS();
    }
  }
  
  public void xR()
  {
    if (this.bAM) {
      return;
    }
    this.bAM = true;
    xQ();
  }
  
  public BigInteger xT()
  {
    if (this.bAO == 0.0D) {
      return akn.AB();
    }
    return BigDecimal.valueOf(this.bAO).toBigInteger();
  }
  
  public BigInteger xU()
  {
    return BigDecimal.valueOf(this.bAO).toBigInteger();
  }
  
  public long xV()
  {
    if (this.buK != null) {
      return this.buK.ｖ();
    }
    return 0L;
  }
  
  public long xW()
  {
    if (this.buK != null) {
      return this.buK.getDuration();
    }
    return 0L;
  }
  
  public void xX()
  {
    this.bAH = true;
    if (this.buK != null) {
      this.buK.stop();
    }
    yd();
  }
  
  public void xY()
  {
    this.bwl = true;
    if (this.buK != null) {
      this.buK.ᑊ(false);
    }
  }
  
  public boolean xZ()
  {
    return (this.buK != null) && (this.buK.ｉ() == 3);
  }
  
  public void ya()
  {
    this.bwl = false;
    if (this.buK != null) {
      this.buK.ᑊ(true);
    }
  }
  
  public boolean yb()
  {
    return this.bAC == 3;
  }
  
  public void ˊ(int paramInt1, int paramInt2, float paramFloat) {}
  
  public void ˊ(Map<String, Object> paramMap, long paramLong)
  {
    if (paramMap == null) {
      return;
    }
    if (paramMap.get("ntp") == null) {
      return;
    }
    double d1 = ((Double)paramMap.get("ntp")).doubleValue();
    double d2 = (paramLong - xV()) / 1000.0D;
    this.bAO = (d1 - d2);
    double d3 = akx.Bl().getTime();
    double d4 = d3 / 1000.0D;
    double d5 = this.bAO;
    paramMap = new DecimalFormat("0.###");
    akk.ᐪ("BroadcastPlayer", "Latency: " + paramMap.format(d4 + 2208988800.0D - d5) + " queued: " + paramMap.format(d2) + " ntp " + paramMap.format(d1));
    paramMap = new Date(((this.bAO - 2208988800.0D) * 1000.0D));
    akk.ᐪ("BroadcastPlayer", "Capture: " + paramMap + " now: " + new Date(d3));
  }
  
  public boolean ˊ(vm paramvm)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
    if ((ze.ˊ(vf.tI())) && (localSharedPreferences.getBoolean("pref_force_hls", false)))
    {
      akk.ᐪ("BroadcastPlayer", "Using FORCED HLS.");
      this.bAC = 3;
      this.bAD = paramvm.bnq;
    }
    else if (anw.ᐨ(paramvm.bno))
    {
      akk.ᐪ("BroadcastPlayer", "Using RTMP url.");
      this.bAC = 4;
      this.bAD = paramvm.bno;
    }
    else if (anw.ᐨ(paramvm.bnq))
    {
      akk.ᐪ("BroadcastPlayer", "Using HLS url.");
      this.bAC = 3;
      this.bAD = paramvm.bnq;
    }
    else if (anw.ᐨ(paramvm.bnp))
    {
      if (Uri.parse(paramvm.bnp).getLastPathSegment().endsWith(".m3u8"))
      {
        akk.ᐪ("BroadcastPlayer", "Found .m3u8 extension, using HLS.");
        this.bAC = 3;
      }
      else
      {
        akk.ᐪ("BroadcastPlayer", "Using other url (probably mp4)");
        this.bAC = 2;
      }
      this.bAD = paramvm.bnp;
    }
    else
    {
      return false;
    }
    this.bAG = paramvm.bnl;
    this.bAI = true;
    if (this.bAJ)
    {
      ᔾ(this.bAE);
      return true;
    }
    return false;
  }
  
  public void ˎ(boolean paramBoolean, int paramInt)
  {
    if (this.buK == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 4: 
      this.bAF = true;
      yf();
      if ((this.bAM) || (this.bAE))
      {
        this.bAM = false;
        xS();
        return;
      }
      akk.ᐪ("BroadcastPlayer", "playback was not requested");
      return;
    case 5: 
      this.bAL = false;
      yd();
      return;
    }
    yg();
  }
  
  public void ˏ(Map<String, Object> paramMap)
  {
    this.bAO = Double.parseDouble(new String((byte[])paramMap.get("TIT3")));
  }
  
  public void ᐝ(Exception paramException)
  {
    ʽ(paramException);
    this.bAK = true;
  }
  
  public void ᓫ(boolean paramBoolean)
  {
    this.bAE = paramBoolean;
  }
  
  public void ⁱ(String paramString) {}
  
  public boolean ﮈ()
  {
    return (this.bAH) || ((this.buK != null) && (this.buK.ｉ() == 5));
  }
  
  public boolean ﺓ()
  {
    return (this.buK != null) && (this.buK.ｉ() == 4);
  }
  
  public static abstract interface if
  {
    public abstract void yh();
    
    public abstract void yi();
    
    public abstract void yj();
    
    public abstract void yk();
    
    public abstract void yl();
    
    public abstract void ᐝ(Exception paramException);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aek
 * JD-Core Version:    0.7.0.1
 */