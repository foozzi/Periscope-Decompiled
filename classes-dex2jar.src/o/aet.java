package o;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.ActivityOptions;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Typeface;
import android.location.Location;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import java.io.File;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.ui.broadcast.ViewerActivity;
import tv.periscope.android.ui.broadcast.ViewerActivity.ˊ;

public class aet
  extends ado
  implements yp.if, akq.ˊ, View.OnClickListener, agq.if, aek.ˊ, afn, afi.ˊ
{
  private abr bAS;
  private boolean bAT = false;
  private yp bAU;
  private akq bAV;
  private akp bAW;
  private boolean bAX = false;
  private boolean bAY = false;
  private View bAZ;
  private adj bBA;
  private aju bBB;
  private aet.ˋ bBC = new aet.ˋ();
  private View bBD;
  private Typeface bBE;
  private Typeface bBF;
  private boolean bBG;
  private MediaFormat bBH;
  private MediaFormat bBI;
  private String bBJ;
  private ads bBK;
  private long bBL = 0L;
  private long bBM = 0L;
  private final Runnable bBN = new aeu(this);
  private final Runnable bBO = new aez(this);
  private afm bBP;
  private View bBQ;
  private final int bBR = 5000;
  private long bBS = 0L;
  Handler bBT = new Handler();
  Runnable bBU = new aey(this);
  private View bBa;
  private Button bBb;
  private EditText bBc;
  private vz bBd;
  private String bBe;
  private boolean bBf;
  private ajw bBg;
  private afi bBh;
  private agq bBi;
  private boolean bBj;
  private boolean bBk;
  private boolean bBl;
  private String bBm;
  private abv bBn;
  private ahe bBo;
  private ahb bBp;
  private final Runnable bBq = new aet.ˊ(this, null);
  private final Semaphore bBr = new Semaphore(1, true);
  private View bBs;
  private Runnable bBt;
  private aei bBu;
  private xh bBv;
  private adx bBw;
  private aej bBx;
  private TextView bBy;
  private ady bBz;
  private aad bnA;
  protected zp bnB;
  private abl bqq;
  private HashMap<String, Object> brZ = new HashMap();
  private String bwV;
  private String bxA;
  private yz bxD = yz.ᑉ(false);
  private alo byD;
  private adw byT;
  private final Handler mHandler = new Handler(Looper.getMainLooper());
  
  private void up()
  {
    yu();
    akj.ᔉ(this.bBc);
    this.bBQ.setVisibility(0);
    this.bBJ = this.bBz.ד(this.bwV);
    this.bAV.ᴴ(this.bBJ);
    this.bAU.up();
    this.bAX = true;
    yA();
    ys();
    this.byT.removeView(this.bAZ);
    this.byT.setDraggable(true);
    this.bBa.setVisibility(0);
    yq();
    this.bBf = true;
    this.bBh.יּ(this.bBc.getText().toString(), this.bBm);
    this.bBy.setVisibility(0);
    this.bBD.setVisibility(0);
    this.bBp.ˍ(ant.Cz());
  }
  
  private void uq()
  {
    this.bAX = false;
    yA();
    yC();
    this.bAW.AK();
    if (this.bAV != null) {
      this.bAV.shutdown();
    }
    if ((this.bBJ != null) && (this.bBz.xv())) {
      this.bBz.ױ(this.bwV);
    }
    this.bAU.stopPreview();
    this.bAU.uq();
  }
  
  private void yA()
  {
    this.brZ.put("bps", Integer.valueOf(this.bAU.ur()));
    this.brZ.put("UploadRate", Integer.valueOf(this.bAW.AC() * 8));
    this.brZ.put("live", Boolean.valueOf(this.bAX));
    if (this.bAV != null) {
      this.bAV.ˊ(this.brZ);
    }
  }
  
  private void yB()
  {
    this.bBT.postDelayed(this.bBU, 5000L);
  }
  
  private void yC()
  {
    this.bBT.removeCallbacks(this.bBU);
  }
  
  private void yo()
  {
    wZ().ua();
  }
  
  private void yp()
  {
    int i;
    if (this.bAU.us() == 1) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      this.bAS.log("Flip to rear facing camera");
    } else {
      this.bAS.log("Flip to front facing camera");
    }
    new afg(this).start();
  }
  
  private void yq()
  {
    this.mHandler.postDelayed(new aew(this), 500L);
    yr();
  }
  
  private void yr()
  {
    this.mHandler.postDelayed(this.bBt, TimeUnit.SECONDS.toMillis(5L));
  }
  
  private void ys()
  {
    boolean bool2 = this.bBh.yI();
    float f1;
    float f2;
    if (bool2)
    {
      f1 = (float)this.bBh.yJ().getLatitude();
      f2 = (float)this.bBh.yJ().getLongitude();
    }
    else
    {
      f1 = 0.0F;
      f2 = 0.0F;
    }
    String str = this.bBc.getText().toString();
    ArrayList localArrayList = this.bBh.yK();
    boolean bool1;
    if (!localArrayList.isEmpty()) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    boolean bool3 = this.bBh.yL();
    boolean bool4 = this.bBh.yM();
    HashMap localHashMap = new HashMap();
    localHashMap.put("has_text", String.valueOf(anw.ᐨ(str)));
    localHashMap.put("is_private", String.valueOf(bool1));
    localHashMap.put("is_follower_only_chat", String.valueOf(bool3));
    localHashMap.put("share_twitter_enabled", String.valueOf(bool4));
    vi.ˊ(vi.if.bmB, localHashMap);
    wZ().ˊ(this.bwV, str, localArrayList, bool2, f1, f2, bool3);
  }
  
  private void yt()
  {
    this.byT.setSystemUiVisibility(0);
  }
  
  private void yu()
  {
    this.byT.setSystemUiVisibility(1);
  }
  
  private void yv()
  {
    vz localvz = this.bBd;
    int i;
    if (this.bBh.yK().isEmpty())
    {
      localObject = localvz.protocol;
      i = localvz.port;
    }
    else
    {
      localObject = localvz.bog;
      i = localvz.boh;
    }
    boolean bool = false;
    if (this.bAV != null)
    {
      bool = true;
      yC();
      akq localakq = this.bAV;
      this.bAV = null;
      localakq.shutdown();
    }
    this.bAS.log("Setting up RTMP with " + (String)localObject + ", wasRunning was " + bool);
    Object localObject = new akq((String)localObject, localvz.boc, i, localvz.bod, localvz.boe, localvz.bof);
    ((akq)localObject).ˊ(this);
    ((akq)localObject).ˊ(this.brZ);
    if (bool)
    {
      ((akq)localObject).ˊ(this.bBH, this.bBI);
      this.bAU.ut();
      ((akq)localObject).AS();
    }
    this.bAV = ((akq)localObject);
    yB();
  }
  
  private void yw()
  {
    this.mHandler.post(this.bBq);
  }
  
  private String yz()
  {
    String str;
    if (this.bAT) {
      str = this.bAS.wz();
    } else {
      str = "";
    }
    this.bAS.wA();
    return str;
  }
  
  private void ʿ(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = ant.ˊ(this.bxA, akn.AB(), paramString3, paramString1, paramString2);
    this.bxD.ˊ(this.bBe, paramString1);
    this.bBp.ˍ(paramString1);
  }
  
  private void ˊ(aju paramaju)
  {
    amc localamc = (amc)findViewById(2131427457);
    this.bBh = new afi(this, (TextView)findViewById(2131427475), (TextView)findViewById(2131427450), localamc, (amc)findViewById(2131427491), (amc)findViewById(2131427492), new aff(this), 100, paramaju);
    this.bBh.ˊ(this);
  }
  
  private void ˊ(boolean paramBoolean, int paramInt, Typeface paramTypeface)
  {
    this.bBb.setEnabled(paramBoolean);
    this.bBb.setText(paramInt);
    this.bBb.setTypeface(paramTypeface);
  }
  
  private float ˋ(float paramFloat, int paramInt)
  {
    return 65.0F * (8.0F * paramFloat / 10.0F - paramInt) / 100.0F;
  }
  
  private boolean ˎ(float paramFloat, int paramInt)
  {
    return paramFloat < paramInt * 1024 / 8;
  }
  
  private void ˏ(boolean paramBoolean, int paramInt)
  {
    new AlertDialog.Builder(this).setMessage(getString(paramInt)).setPositiveButton(getString(2131099768), new if(paramBoolean)).setNegativeButton(getString(2131099766), null).show();
  }
  
  private Animator ᒻ(View paramView)
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(paramView, "alpha", new float[] { 0.0F, 1.0F });
    localObjectAnimator.setInterpolator(alk.ᵌ(this));
    localObjectAnimator.addListener(new aev(this, paramView));
    return localObjectAnimator;
  }
  
  private void ᕐ(boolean paramBoolean)
  {
    try
    {
      boolean bool = this.bBk;
      if (bool) {
        return;
      }
      this.bBk = true;
    }
    finally {}
    uq();
    ant localant = ant.ˊ(this.bxA, akn.AB());
    this.bAS.log("sending message END BROADCAST");
    this.bxD.ˊ(this.bBe, localant);
    wZ().ᐠ(this.bwV, yz());
    if (paramBoolean)
    {
      startActivity(new Intent(this, ViewerActivity.class).putExtra("e_b_id", this.bwV).putExtra("e_p_mode", ViewerActivity.ˊ.bDz).putExtra("e_saved", this.bBz.xu()).putExtra("e_saved_file", this.bBJ), ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
      this.bBl = true;
    }
    finish();
  }
  
  private void ᕝ(boolean paramBoolean)
  {
    this.bAS.ᒾ(paramBoolean);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.bBh.ˋ(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (this.bBg.isShowing())
    {
      this.bBg.hide();
      return;
    }
    if (this.bBK.xf())
    {
      this.bBK.xe();
      return;
    }
    if (this.byT.ˢ(this.bBu))
    {
      this.byT.ᕀ(this.bBu);
      return;
    }
    if (this.bBf)
    {
      ˏ(false, 2131099771);
      return;
    }
    if (this.bBc.getText().length() > 0)
    {
      ˏ(true, 2131099770);
      return;
    }
    super.onBackPressed();
    overridePendingTransition(2130968586, 2130968590);
  }
  
  public void onCancel() {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131427470: 
      this.byT.ι(this.bBP);
      return;
    case 2131427424: 
      this.byT.ι(this.bBu);
      return;
    case 2131427473: 
      onBackPressed();
      return;
    case 2131427478: 
      up();
      return;
    case 2131427464: 
      if (this.byT.ˢ(this.bBP))
      {
        vi.ˊ(vi.if.bmG);
        this.bAS.log("Stop Broadcast pressed");
        ᕐ(true);
        return;
      }
      break;
    case 2131427463: 
      if (this.byT.ˢ(this.bBP))
      {
        vi.ˊ(vi.if.bmI);
        yp();
        return;
      }
      break;
    case 2131427481: 
      this.byT.ι(this.bBu);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    getWindow().addFlags(128);
    this.bnB = vf.tL();
    this.bnA = vf.tI();
    this.bAS = new abr();
    akk.ˊ(this.bAS);
    this.byT = ((adw)findViewById(2131427461));
    this.byT.setDraggable(false);
    this.byT.setFriction(0.5F);
    this.byT.setOnViewDragListener(new afa(this));
    this.byT.setOnSystemUiVisibilityChangeListener(new afb(this));
    this.bBP = ((afm)findViewById(2131427465));
    this.bBP.setGestureListener(new afc(this));
    this.bAZ = findViewById(2131427471);
    this.bBc = ((EditText)findViewById(2131427477));
    this.bBa = findViewById(2131427462);
    this.bBa.findViewById(2131427464).setOnClickListener(this);
    this.bBa.findViewById(2131427463).setOnClickListener(this);
    findViewById(2131427473).setOnClickListener(this);
    this.bBE = amm.ͺ(this, "fonts/MuseoSans-500.otf");
    this.bBF = amm.ͺ(this, "fonts/MuseoSans-700.otf");
    this.bBb = ((Button)findViewById(2131427478));
    this.bBb.setOnClickListener(this);
    ˊ(false, 2131099799, this.bBE);
    paramBundle = xa();
    this.bBn = new abv(paramBundle, this.bnA, this, this.bAS);
    this.byD = ((alo)findViewById(2131427483));
    this.bBA = new afd(this, this, wZ(), this.bnA, this.byD);
    this.byD.setDelegate(this.bBA);
    this.bBg = ((ajw)findViewById(2131427484));
    this.bBg.ں(2131099857).ܥ(2131099856).ধ(2131427599).ร(2131099855);
    this.bBB = new ajv(wZ(), this.bBg);
    this.bBK = new ads(this.byT, (alf)findViewById(2131427485), this.bBA);
    this.bBp = ((ahb)findViewById(2131427480));
    this.bBp.setChatAdapter(new agp(this, this));
    this.bBz = new adz(this, wZ(), this.bBK, this.bBA, null, new afp(this.bBp));
    this.bBo = ((ahe)findViewById(2131427479));
    this.bqq = ((abl)findViewById(2131427466));
    this.bBi = new agq(paramBundle, this, this.bnA.vx());
    this.bBi.Ⅰ(true);
    yo();
    this.bAU = yy.ᵗ(this);
    this.bAU.ˊ(this);
    this.bAW = new akp();
    this.bAU.ﻠ(this.bAW.AH() * 8);
    if (!this.bAU.ˊ(this.bqq)) {
      akk.ᐪ("RTMP", "Unable to connect to camera");
    }
    if ("development".equals("production")) {
      findViewById(2131427476).setVisibility(0);
    }
    this.bBs = findViewById(2131427467);
    this.bBt = new afe(this);
    ((TextView)this.bBs.findViewById(2131427468)).setText(akn.ᴗ(getString(2131099721)), TextView.BufferType.SPANNABLE);
    ((TextView)this.bBs.findViewById(2131427469)).setText(akn.ᴗ(getString(2131099720)), TextView.BufferType.SPANNABLE);
    this.bBQ = findViewById(2131427470);
    this.bBQ.setOnClickListener(this);
    this.bBu = ((aei)findViewById(2131427482));
    this.bBu.setOnClickListener(this);
    this.bBu.setActionButtonVisibility(true);
    this.bBu.xJ();
    this.bBD = findViewById(2131427481);
    this.bBD.setOnClickListener(this);
    this.bBD.setVisibility(8);
    this.bBy = ((TextView)this.bBD.findViewById(2131427494));
    this.bBy.setVisibility(8);
    ˊ(this.bBB);
    paramBundle.ʲ(this.bBA);
    paramBundle.ʲ(this.bBz);
    paramBundle.ʲ(this.bBB);
  }
  
  protected void onDestroy()
  {
    if (this.bAU != null)
    {
      this.bAU.stopPreview();
      this.bAU.uq();
      this.bAU = null;
    }
    this.bAS.log("onDestroy");
    if (this.bBj)
    {
      this.bxD.ᐩ(this.bxA, this.bwV);
      this.bBj = false;
    }
    this.bBn.kill();
    this.bxD.kill();
    this.bBi.kill();
    ot localot = xa();
    localot.ː(this.bBA);
    localot.ː(this.bBz);
    localot.ː(this.bBB);
    if ((!this.bBl) && (this.bBJ != null) && (!this.bBz.xu()))
    {
      akk.ˑ("RTMP", "Video was not saved to camera, deleting");
      new File(this.bBJ).delete();
    }
    akk.ˊ(null);
    super.onDestroy();
  }
  
  public void onEventMainThread(aai paramaai)
  {
    switch (1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
    case 1: 
      if (paramaai.vA())
      {
        this.bAS.log("createBroadcast succeeded");
        paramaai = (vz)paramaai.data;
        this.bwV = paramaai.bnr.id;
        this.bBd = paramaai;
        yv();
        akk.ᐪ("RTMP", "Starting encoding");
        this.bAU.uo();
        wZ().ᴲ(this.bwV);
        this.bBC.boi = paramaai.boj;
        this.bBC.upload();
        return;
      }
      this.bAS.log("createBroadcast: FAILED! error: " + paramaai.bsW);
      return;
    case 2: 
      if (paramaai.vA())
      {
        this.bAS.log("publishBroadcast succeeded");
        wZ().ᴬ(this.bwV);
        yw();
        return;
      }
      this.bAS.log("publishBroadcast: FAILED! error: " + paramaai.bsW);
      return;
    case 3: 
      if (paramaai.vA())
      {
        vm localvm = (vm)paramaai.data;
        if (localvm.bnr.id.equals(this.bwV))
        {
          if (this.bBj) {
            return;
          }
          this.bAT = localvm.bnu;
          this.bAS.log("accessChannel succeeded");
          this.bBj = true;
          this.bxA = localvm.bnm;
          this.bBe = localvm.bns;
          this.bBv = localvm.bnr;
          this.bBh.yG();
          this.bxD.ʼ(localvm.bnj, localvm.bni, "");
          try
          {
            this.bAS.log("Joining channel " + localvm.bnm);
            acr localacr = new acr(localvm.bnt);
            this.bxD.ˊ(localvm.bnm, localvm.bnk, new acu(localacr, "SHA256withECDSA", "SC"), localvm.bnv.booleanValue(), this.bnA.vx(), this.bnA.vq(), this.bnA.vp(), this.bnA.vu(), this.bnA.vo(), localvm.bnl, this.bwV, localvm.Rp, localvm.key, localvm.bnw);
            this.bBn.ʽ(localvm.bnm, localvm.bnr.id, localvm.bnr.nD);
          }
          catch (Exception localException)
          {
            this.bAS.log("accessChannel: FAILED! error: " + paramaai.bsW);
            localException.printStackTrace();
          }
          return;
        }
      }
      break;
    case 4: 
      if (paramaai.vA())
      {
        paramaai = (wo)paramaai.data;
        if (this.bwV.equals(paramaai.id))
        {
          this.bBm = paramaai.url;
          this.bBh.ڌ(this.bBm);
        }
        return;
      }
      break;
    case 5: 
      if (paramaai.vA())
      {
        paramaai = (yi)paramaai.data;
        float f1 = paramaai.bqf;
        float f2 = ˋ(f1, 4000);
        int i;
        if (!ˎ(f2, 70)) {
          i = 1;
        } else {
          i = 0;
        }
        akk.ᐪ("RTMP", "Upload " + (int)(8.0F * f1 / 1024.0F) + " Video rate " + (int)f2 * 8 / 1024 + " kbits/s");
        if (i != 0)
        {
          akk.ᐪ("RTMP", "Video byterate is acceptable.");
          this.bBG = true;
          this.bAW.ᐜ((int)f1);
          this.bAU.ﻠ(this.bAW.AH() * 8);
          this.bAS.log("creating Broadcast");
          wZ().ᵁ(paramaai.bnZ);
        }
        else
        {
          ˊ(false, 2131099685, this.bBE);
          akk.ᐪ("RTMP", "Video byterate is NOT acceptable.");
        }
        return;
      }
      ˊ(false, 2131099686, this.bBE);
      akk.ᐪ("RTMP", "An error occurred testing video byterates: " + paramaai.bsW);
      return;
    case 6: 
      ᕝ(paramaai.vA());
      return;
    case 7: 
      ᕝ(paramaai.vA());
    }
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    }
    if (this.bBw == null)
    {
      this.bBx = new aej(this, this.bnA, this.bnB, this.bBz, this.bwV);
      this.bBw = new adx(this, this.bBx, this.bBz);
      this.bBu.setAdapter(this.bBw);
    }
    this.bBx.xL();
    this.bBw.notifyDataSetChanged();
    this.bBu.setTitle(this.bBv.getTitle(), this.bBv.getLocation());
  }
  
  protected void onPause()
  {
    this.bAS.log("onPause");
    this.bBh.yF();
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.mHandler.removeCallbacks(this.bBO);
    this.bAS.log("onResume");
    this.bBh.yE();
  }
  
  protected void onStart()
  {
    super.onStart();
    this.bAS.log("onStart");
    this.bBh.yD();
  }
  
  public void onStop()
  {
    super.onStop();
    this.bAS.log("onStop");
    if (isFinishing())
    {
      akk.ᐪ("RTMP", "onStop and Finishing, ending broadcast");
      ᕐ(false);
    }
    else
    {
      akk.ᐪ("RTMP", "Unexpected onStop, setting 5000 second timer to end broadcast.");
      this.mHandler.postDelayed(this.bBO, 5000L);
    }
    this.bBh.onActivityStop();
  }
  
  public void uu() {}
  
  public BigInteger xT()
  {
    return akn.AB();
  }
  
  public long xV()
  {
    return 0L;
  }
  
  public long xW()
  {
    throw new UnsupportedOperationException("Attempted getTotalDuration on live broadcast");
  }
  
  public BigInteger ym()
  {
    return BigInteger.ZERO;
  }
  
  public boolean yn()
  {
    return true;
  }
  
  public void yx() {}
  
  public void yy() {}
  
  public void ɫ(int paramInt)
  {
    this.bBy.setText(akn.ˊ(getResources(), paramInt, true));
  }
  
  public void ʾ(String paramString, int paramInt)
  {
    this.bnA.ˊ(this.bwV, paramString, paramInt, false);
  }
  
  public void ʾ(ant paramant)
  {
    this.bBp.ˍ(paramant);
  }
  
  public void ʿ(ant paramant) {}
  
  public void ˊ(MediaFormat paramMediaFormat1, MediaFormat paramMediaFormat2)
  {
    if ((paramMediaFormat1 != null) && (paramMediaFormat2 != null))
    {
      this.bBH = paramMediaFormat1;
      this.bBI = paramMediaFormat2;
      if (this.bAV != null) {
        this.bAV.ˊ(paramMediaFormat1, paramMediaFormat2);
      }
    }
  }
  
  public void ˊ(ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo)
  {
    try
    {
      this.bBM = System.currentTimeMillis();
    }
    finally
    {
      paramByteBuffer = finally;
      throw paramByteBuffer;
    }
    if (this.bAV != null)
    {
      this.bAV.ˊ(paramByteBuffer, paramBufferInfo);
      this.bAW.ˊ(paramByteBuffer.limit(), paramBufferInfo.presentationTimeUs / 1000L);
    }
  }
  
  public void ˊ(akq.if paramif)
  {
    switch (1.bBX[paramif.ordinal()])
    {
    default: 
      return;
    }
    runOnUiThread(new aex(this));
  }
  
  public void ˋ(ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo)
  {
    if (this.bAV != null)
    {
      this.bAV.ˋ(paramByteBuffer, paramBufferInfo);
      this.bAW.ˋ(paramByteBuffer.limit(), paramBufferInfo.presentationTimeUs / 1000L);
    }
  }
  
  public void ˋ(ant paramant, vk paramvk)
  {
    this.bBK.ˊ(paramant, paramvk);
  }
  
  public void ٴ(List<String> paramList)
  {
    boolean bool2 = this.bAY;
    boolean bool1;
    if (paramList.size() > 0) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    this.bAY = bool1;
    if ((this.bBd != null) && (bool2 != this.bAY))
    {
      StringBuilder localStringBuilder = new StringBuilder().append("Switching ");
      if (this.bAY) {
        paramList = "to";
      } else {
        paramList = "from";
      }
      akk.ᐪ("RTMP", paramList + " private");
      ˊ(false, 2131099799, this.bBE);
      yv();
    }
  }
  
  public void ᒾ(byte[] paramArrayOfByte)
  {
    this.bBC.bBY = paramArrayOfByte;
    this.bBC.upload();
  }
  
  public void ᴵ(List<anv> paramList)
  {
    this.bnA.ˊ(this.bnA.vx(), this.bwV, paramList);
  }
  
  public void ι(ant paramant)
  {
    this.bBo.Ѓ(akl.ˊ(getResources(), paramant.Ch().intValue()));
  }
  
  public boolean ﹸ(long paramLong)
  {
    double d = paramLong / 1000000000.0D;
    return this.bAW.ˏ(d);
  }
  
  class if
    implements DialogInterface.OnClickListener
  {
    private final boolean mCancel;
    
    if(boolean paramBoolean)
    {
      this.mCancel = paramBoolean;
    }
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (this.mCancel)
      {
        aet.this.finish();
        return;
      }
      aet.ˊ(aet.this, true);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aet
 * JD-Core Version:    0.7.0.1
 */