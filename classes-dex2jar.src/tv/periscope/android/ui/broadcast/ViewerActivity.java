package tv.periscope.android.ui.broadcast;

import android.app.AlertDialog.Builder;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import o.aad;
import o.aai;
import o.aai.if;
import o.aak;
import o.aal;
import o.aax;
import o.abc;
import o.abr;
import o.abt;
import o.abv;
import o.aca;
import o.acc;
import o.ace;
import o.acg;
import o.acp;
import o.acr;
import o.acu;
import o.adj;
import o.ado;
import o.ads;
import o.adw;
import o.adx;
import o.ady;
import o.adz;
import o.aeh.aux;
import o.aeh.ᐝ;
import o.aei;
import o.aej;
import o.aek;
import o.aek.if;
import o.aek.ˊ;
import o.afn;
import o.afo;
import o.afq;
import o.afq.if;
import o.afq.ˋ;
import o.agd;
import o.agg;
import o.agh;
import o.agi;
import o.agj;
import o.agk;
import o.agl;
import o.agm;
import o.agn;
import o.ago;
import o.agp;
import o.agq;
import o.agq.if;
import o.ahb;
import o.ahe;
import o.aju;
import o.ajv;
import o.ajw;
import o.akh;
import o.akj;
import o.akk;
import o.akl;
import o.akn;
import o.alf;
import o.alo;
import o.amd;
import o.amo;
import o.ane;
import o.ani;
import o.ant;
import o.anv;
import o.anw;
import o.bq;
import o.ot;
import o.vf;
import o.vi;
import o.vi.if;
import o.vj;
import o.vk;
import o.vm;
import o.vn;
import o.vv;
import o.vx;
import o.xh;
import o.xi;
import o.yz;
import o.ze;
import o.zp;
import o.ڏ;
import o.ઽ;
import o.ᓲ;
import o.ᕻ;
import o.ᘇ;
import o.ⁱ.ˋ;
import o.ⁱ.ˎ;
import retrofit.RetrofitError;
import retrofit.client.Response;
import tv.periscope.android.api.PsUser;

public class ViewerActivity
  extends ado
  implements View.OnClickListener, aek.ˊ, agq.if, aek.if, View.OnFocusChangeListener, afn, agd, afo, afq.ˋ
{
  private int bAG;
  private abr bAS;
  private boolean bAT = false;
  private adj bBA;
  private aju bBB;
  private View bBD;
  private String bBJ;
  private ads bBK;
  private final Runnable bBN = new agg(this);
  private ajw bBg;
  private agq bBi;
  private boolean bBj;
  private ahe bBo;
  private ahb bBp;
  private final Runnable bBq = new if(null);
  private aei bBu;
  private adx bBw;
  private aej bBx;
  private View bCX;
  private ImageView bCY;
  private TextView bCZ;
  private amd bDa;
  private TextView bDb;
  private xh bDc;
  private ImageView bDd;
  private TextureView bDe;
  private TextView bDf;
  private afq bDg;
  private ady bDh;
  private aek bDi;
  private vm bDj;
  private amo bDk;
  private abt bDl;
  private ViewerActivity.ˊ bDm;
  private boolean bDn;
  private boolean bDo;
  private boolean bDp;
  private int bDq;
  private int bDr;
  private boolean bDs;
  private boolean bDt;
  private Runnable bDu = new agh(this);
  private aad bnA;
  private zp bnB;
  private PsUser bsE;
  private String bwV;
  private yz bxD = yz.ᑉ(false);
  private alo byD;
  private adw byT;
  private final Handler mHandler = new Handler(Looper.getMainLooper());
  private long ᔄ;
  
  private void yt()
  {
    this.byT.setSystemUiVisibility(0);
  }
  
  private void yu()
  {
    this.byT.setSystemUiVisibility(1);
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
  
  private void za()
  {
    this.bnA = vf.tI();
    this.bnB = vf.tL();
    this.bAS = new abr();
    akk.ˊ(this.bAS);
    this.byT = ((adw)findViewById(2131427461));
    this.byT.setDraggable(true);
    this.byT.setDragRecorder(new vj(vi.if.bmd, vi.if.bme));
    this.byT.setOnViewDragListener(new agi(this));
    this.byT.setOnSystemUiVisibilityChangeListener(new agj(this));
    this.bBD = findViewById(2131427481);
    this.bBD.setOnClickListener(this);
    this.bDf = ((TextView)this.bBD.findViewById(2131427494));
    this.bDg = ((afq)findViewById(2131427604));
    this.bDg.setSendCommentDelegate(this);
    findViewById(2131427569).setOnClickListener(this);
    this.bCX = findViewById(2131427607);
    this.bCZ = ((TextView)this.bCX.findViewById(2131427609));
    this.bDa = ((amd)findViewById(2131427602));
    this.bDb = ((TextView)findViewById(2131427603));
    this.bDe = ((TextureView)findViewById(2131427601));
    this.byD = ((alo)findViewById(2131427483));
    this.bBo = ((ahe)findViewById(2131427479));
    this.bBp = ((ahb)findViewById(2131427480));
    this.bBu = ((aei)findViewById(2131427482));
    this.bBu.setOnClickListener(this);
    this.bCY = ((ImageView)findViewById(2131427606));
    this.bCY.setOnClickListener(this);
    this.bDd = ((ImageView)findViewById(2131427442));
    this.bDk = ((amo)findViewById(2131427605));
  }
  
  private void zb()
  {
    this.bDd.animate().alpha(0.0F).setDuration(180L).setListener(new agk(this)).start();
  }
  
  private void zc()
  {
    switch (1.bDw[this.bDm.ordinal()])
    {
    default: 
      return;
    case 1: 
      localLayoutParams = (RelativeLayout.LayoutParams)this.bBp.getLayoutParams();
      localLayoutParams.bottomMargin = 0;
      this.bBp.setLayoutParams(localLayoutParams);
      return;
    }
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.bBp.getLayoutParams();
    localLayoutParams.bottomMargin = getResources().getDimensionPixelOffset(2131361898);
    this.bBp.setLayoutParams(localLayoutParams);
  }
  
  private void zd()
  {
    this.bDg.ˊ(this);
    if (this.bDm == ViewerActivity.ˊ.bDx)
    {
      this.bDg.setVisibility(0);
      this.bDg.setChatState(afq.if.bCK);
    }
    zc();
    ot localot = xa();
    this.bBi = new agq(localot, this, this.bnA.vx());
    Object localObject1 = this.bBi;
    boolean bool;
    if (this.bDm == ViewerActivity.ˊ.bDx) {
      bool = true;
    } else {
      bool = false;
    }
    ((agq)localObject1).Ⅰ(bool);
    if (this.bDm == ViewerActivity.ˊ.bDx)
    {
      ⁿ(true);
      this.bBD.setVisibility(0);
    }
    else
    {
      this.bBD.setVisibility(8);
    }
    this.bDe.setOnClickListener(this);
    this.bsE = this.bnA.vz();
    zs();
    this.bBA = new agl(this, this, wZ(), this.bnA, this.byD);
    this.byD.setDelegate(this.bBA);
    this.bBg = ((ajw)findViewById(2131427484));
    this.bBg.ں(2131099884).ܥ(2131099881).ধ(2131427599).ร(2131099880);
    localObject1 = wZ();
    this.bBB = new ajv((vn)localObject1, this.bBg);
    this.bBK = new ads(this.byT, (alf)findViewById(2131427485), this.bBA);
    this.bDh = new adz(this, (vn)localObject1, this.bBK, this.bBA, this, this, getIntent().getBooleanExtra("e_saved", false));
    this.bBx = new aej(this, this.bnA, this.bnB, this.bDh, this.bwV);
    this.bBw = new adx(this, this.bBx, this.bDh);
    Object localObject2 = new agp(this, this);
    this.bBp.setChatAdapter((agp)localObject2);
    if (this.bDm == ViewerActivity.ˊ.bDx) {
      this.bCY.setVisibility(8);
    }
    switch (1.bDw[this.bDm.ordinal()])
    {
    default: 
      break;
    case 3: 
      ((vn)localObject1).ᵉ(this.bwV);
      break;
    }
    localObject2 = this.bnB.ị(this.bwV);
    if (localObject2 == null)
    {
      ((vn)localObject1).ᴬ(this.bwV);
    }
    else
    {
      ˏ((xh)localObject2);
      if ((((xh)localObject2).boT) || (((xh)localObject2).uh())) {
        ((vn)localObject1).ᴬ(((xh)localObject2).id);
      }
      if ((this.bDm == ViewerActivity.ˊ.bDy) || (this.bDm == ViewerActivity.ˊ.bDz)) {
        ((vn)localObject1).ˮ(((xh)localObject2).nD, this.bwV);
      }
    }
    this.bDk.setVisibility(8);
    this.byT.ˤ(this.bBu);
    localot.ʲ(this.bBA);
    localot.ʲ(this.bDh);
    localot.ʲ(this.bBB);
  }
  
  private void ze()
  {
    boolean bool;
    if (!this.bDn) {
      bool = true;
    } else {
      bool = false;
    }
    ᵘ(bool);
  }
  
  private void zg()
  {
    if (this.bDc == null) {
      return;
    }
    ((NotificationManager)getSystemService("notification")).notify(1, ʻ(this.bDc));
  }
  
  private void zh()
  {
    ((NotificationManager)getSystemService("notification")).cancel(1);
  }
  
  private void zi()
  {
    String str = this.bDj.type;
    int i = -1;
    switch (str.hashCode())
    {
    default: 
      break;
    case -812124764: 
      if (str.equals("StreamTypeLowLatency")) {
        i = 0;
      }
      break;
    case 1852164521: 
      if (str.equals("StreamTypeTooFull")) {
        i = 1;
      }
      break;
    case 972161263: 
      if (str.equals("StreamTypeOnlyFriends")) {
        i = 2;
      }
      break;
    }
    switch (i)
    {
    default: 
      return;
    case 0: 
      this.bAS.log("PubNub State Changed: Connected");
      this.bDg.setChatState(afq.if.bCL);
      return;
    case 1: 
      this.bAS.log("PubNub State Changed: Too Full");
      this.bDg.setChatState(afq.if.bCM);
      return;
    }
    this.bAS.log("PubNub State Changed: Friends Only");
    this.bDg.setChatState(afq.if.bCN);
  }
  
  private void zj()
  {
    if (this.bDs) {
      return;
    }
    if (this.bDj == null)
    {
      ⁿ(true);
      return;
    }
    this.bDs = true;
    if (!this.bDi.isPlaying())
    {
      this.bDi.xR();
      wZ().ۥ(this.bDj.bnr.id, this.bDj.bnn);
    }
    if (this.bDl == null) {
      zf();
    }
    this.bDl.prepare();
    ˊ(null, Boolean.valueOf(false));
    this.bxD.ˎ(this.bDj.bnm, 0L);
  }
  
  private void zk()
  {
    if (this.bDp) {
      return;
    }
    this.bDp = true;
    this.mHandler.removeCallbacks(this.bBq);
    if ((this.bDm == ViewerActivity.ˊ.bDx) && (this.bDi != null) && (this.bDi.isPlaying()))
    {
      zw();
      wZ().ˊ(this.bwV, this.bDj.bnn, yz(), this.bDq, this.bDr, (float)(System.currentTimeMillis() - this.ᔄ) / 1000.0F);
      this.bDq = 0;
      this.bDr = 0;
      this.ᔄ = 0L;
    }
  }
  
  private void zl()
  {
    if (this.bDm == ViewerActivity.ˊ.bDy) {
      return;
    }
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.bBp.getLayoutParams();
    localLayoutParams.bottomMargin = getResources().getDimensionPixelOffset(2131361898);
    this.bBp.setLayoutParams(localLayoutParams);
    this.bDm = ViewerActivity.ˊ.bDy;
    this.bBD.setVisibility(8);
    zs();
    zf();
    wZ().ᴬ(this.bwV);
  }
  
  private void zp()
  {
    if ((this.bDm.bDA) && (this.bDi.isPaused())) {
      this.bDi.ya();
    }
  }
  
  private void zq()
  {
    Bitmap localBitmap = this.bDe.getBitmap();
    if (localBitmap == null) {
      return;
    }
    akh.ˊ(this, localBitmap, 25, new ago(this));
  }
  
  private boolean zr()
  {
    return (this.bDj != null) && ("StreamTypeLowLatency".equals(this.bDj.type));
  }
  
  private void zs()
  {
    if (this.bDi != null) {
      this.bDi.release();
    }
    this.bDi = new aek(this, this.bsE, this.bDe, this, false);
    aek localaek = this.bDi;
    boolean bool;
    if (this.bDm == ViewerActivity.ˊ.bDx) {
      bool = true;
    } else {
      bool = false;
    }
    localaek.ᓫ(bool);
  }
  
  private void zt()
  {
    if (this.byT.ˢ(this.bBu))
    {
      if (this.bDm.bDA)
      {
        if (this.bDi.isPaused())
        {
          zo();
          return;
        }
        if ((this.bDc != null) && (this.bDc.boT) && ((!this.bDi.isPlaying()) || (this.bDi.ﮈ())))
        {
          ᵘ(true);
          zj();
          return;
        }
        if ((this.bDc != null) && (this.bDc.boT)) {
          zo();
        }
      }
      else if (!this.bDi.ﮈ())
      {
        zo();
      }
    }
    else if (this.bDm == ViewerActivity.ˊ.bDx)
    {
      if (!this.bDg.yZ())
      {
        this.bDq += 1;
        this.bBo.Ѓ(akl.ˊ(getResources(), this.bAG));
        zu();
        if (zr())
        {
          ant localant = ant.ˊ(this.bDj.bnm, this.bsE.id, Integer.valueOf(this.bAG), this.bDi.xT());
          this.bAS.log("send heart (live) #" + this.bDq);
          this.bxD.ˊ(this.bDj.bns, localant);
        }
      }
    }
    else
    {
      this.bDq += 1;
      this.bBo.Ѓ(akl.ˊ(getResources(), 0));
      zu();
    }
  }
  
  private void zu()
  {
    akk.ᐪ("ViewerActivity", "Storing our own heart");
    this.bnA.ˊ(this.bwV, this.bsE.id, this.bAG, false);
  }
  
  private float zv()
  {
    return (float)(System.currentTimeMillis() - this.ᔄ) / 1000.0F;
  }
  
  private void zw()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("n_hearts", String.valueOf(this.bDq));
    localHashMap.put("n_chats", String.valueOf(this.bDr));
    vi.ˊ(vi.if.bmk, localHashMap);
    localHashMap = new HashMap();
    localHashMap.put("is_active", Boolean.TRUE.toString());
    localHashMap.put("watched_length", String.valueOf(zv()));
    vi.ˊ(vi.if.bmJ, localHashMap);
  }
  
  private Notification ʻ(xh paramxh)
  {
    Object localObject = paramxh.id;
    localObject = PendingIntent.getActivity(this, 0, new Intent(this, ViewerActivity.class).putExtra("e_b_id", (String)localObject).putExtra("e_p_mode", ViewerActivity.ˊ.bDx).setFlags(335544320), 134217728);
    return new ⁱ.ˎ(this).ͺ(2130837673).ʾ(getResources().getColor(2131296335)).ˋ(getString(2131099826, new Object[] { paramxh.boE })).ˎ(paramxh.YW).ˊ(new ⁱ.ˋ().ˊ(paramxh.YW)).ˊ((PendingIntent)localObject).ˋ(true).build();
  }
  
  private void ʼ(Intent paramIntent)
  {
    new acp(this).ʻ(paramIntent);
    if (paramIntent.hasExtra("e_b_id"))
    {
      this.bwV = paramIntent.getStringExtra("e_b_id");
      this.bDm = ((ViewerActivity.ˊ)paramIntent.getSerializableExtra("e_p_mode"));
      if (this.bDm == null) {
        this.bDm = ViewerActivity.ˊ.bDx;
      }
      zd();
    }
    else
    {
      vi.ˊ(vi.if.bnc);
      String str = ʽ(paramIntent);
      if (anw.ᐨ(str)) {
        vn.ᵋ(this).ᵊ(str);
      }
    }
    this.bBJ = paramIntent.getStringExtra("e_saved_file");
  }
  
  private String ʽ(Intent paramIntent)
  {
    paramIntent = paramIntent.getData().getPathSegments();
    if ("w".equals(paramIntent.get(0))) {
      return (String)paramIntent.get(1);
    }
    return "";
  }
  
  private void ˇ(float paramFloat)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("n_hearts", String.valueOf(this.bDq));
    vi.ˊ(vi.if.bml, localHashMap);
    localHashMap = new HashMap();
    localHashMap.put("is_active", Boolean.FALSE.toString());
    localHashMap.put("watched_length", String.valueOf(zv()));
    vi.ˊ(vi.if.bmJ, localHashMap);
    if (paramFloat == 1.0F) {
      vi.ˊ(vi.if.bmr);
    }
  }
  
  private void ˊ(acu paramacu, Boolean paramBoolean)
  {
    if (!this.bBj)
    {
      this.bBj = true;
      this.bxD.ʼ(this.bDj.bnj, this.bDj.bni, "");
      this.bAS.log("Joining channel " + this.bDj.bnm);
      this.bxD.ˊ(this.bDj.bnm, this.bDj.bnk, paramacu, paramBoolean.booleanValue(), this.bnA.vx(), this.bnA.vq(), this.bnA.vp(), this.bnA.vu(), this.bnA.vo(), this.bDj.bnl, this.bwV, this.bDj.Rp, this.bDj.key, this.bDj.bnw);
      this.bDl.ʽ(this.bDj.bnm, this.bDj.bnr.id, this.bDj.bnr.nD);
    }
  }
  
  private void ˊ(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
    {
      this.bCX.setVisibility(8);
      this.bDa.show();
      this.bDb.setVisibility(0);
      if (anw.ᐨ(paramString))
      {
        this.bDb.setText(paramString);
        return;
      }
      this.bDa.setTag(Integer.valueOf(2131099804));
      return;
    }
    this.bDa.hide();
    this.bDb.setVisibility(8);
  }
  
  private void ˏ(xh paramxh)
  {
    if (paramxh == null) {
      return;
    }
    this.bDc = paramxh;
    boolean bool;
    if ((!paramxh.uh()) && (paramxh.boT)) {
      bool = true;
    } else {
      bool = false;
    }
    ᵤ(bool);
    adw localadw = this.byT;
    if ((this.bDm == ViewerActivity.ˊ.bDx) || (paramxh.boT)) {
      bool = true;
    } else {
      bool = false;
    }
    localadw.setDraggable(bool);
    ᵘ(false);
    ᓲ.ᐝ(this).ʻ(paramxh.boQ).ץ().ˊ(new ᘇ[] { new abc(this) }).ˊ(this.bDd);
    this.bBx.xL();
    this.bBu.setAdapter(this.bBw);
    this.bBu.setTitle(paramxh.YW.trim(), paramxh.getLocation());
    if (this.bDm != ViewerActivity.ˊ.bDx) {
      ᐝ(paramxh);
    }
  }
  
  private void ৳(String paramString)
  {
    vi.ˊ(vi.if.bmT);
    this.bBB.ˊ(new agn(this, paramString));
    this.bBB.show();
  }
  
  private void ฯ(String paramString)
  {
    ˋ(paramString, null);
  }
  
  private void ᐝ(xh paramxh)
  {
    ⁿ(false);
    this.bCX.setVisibility(0);
    if (paramxh != null)
    {
      this.bCZ.setText(akn.ˊ(this, paramxh.uf()));
      return;
    }
    this.bCZ.setText(akn.ˊ(this, System.currentTimeMillis()));
  }
  
  private void ᕝ(boolean paramBoolean)
  {
    this.bAS.ᒾ(paramBoolean);
  }
  
  private void ᵘ(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.bCY.setImageResource(2130837680);
      this.bBu.xI();
    }
    else
    {
      this.bCY.setImageResource(2130837682);
      this.bBu.xH();
    }
    this.bDn = paramBoolean;
  }
  
  private void ᵤ(boolean paramBoolean)
  {
    this.bBu.setActionButtonVisibility(paramBoolean);
    if (paramBoolean)
    {
      this.bCY.setVisibility(0);
      return;
    }
    this.bCY.setVisibility(8);
  }
  
  private void ⁿ(boolean paramBoolean)
  {
    ˊ(paramBoolean, null);
  }
  
  public void onBackPressed()
  {
    if ((this.bBA != null) && (this.bBA.wY())) {
      return;
    }
    if ((this.bBg != null) && (this.bBg.isShowing()))
    {
      this.bBg.hide();
      return;
    }
    if ((this.bBK != null) && (this.bBK.xf()))
    {
      this.bBK.xe();
      return;
    }
    if ((this.byT.ˢ(this.bBu)) && (this.bDi != null) && (!this.bDi.ﮈ()) && (this.bDi.isPlaying()) && (!this.bDi.isPaused()))
    {
      zo();
      return;
    }
    super.onBackPressed();
    overridePendingTransition(2130968586, 2130968590);
  }
  
  public void onCancel()
  {
    zt();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131427481: 
      vi.ˊ(vi.if.bmc);
      zn();
      return;
    case 2131427569: 
      onBackPressed();
      return;
    case 2131427601: 
      zt();
      return;
    }
    if (this.bDm.bDA)
    {
      ze();
      if (this.bDi.isPaused())
      {
        vi.ˊ(vi.if.bmn);
        zo();
        return;
      }
      if (this.bDi.isPlaying())
      {
        vi.ˊ(vi.if.bmo);
        this.bDi.xY();
        zn();
        return;
      }
      vi.ˊ(vi.if.bmn);
      zj();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903128);
    getWindow().addFlags(128);
    za();
    ʼ(getIntent());
  }
  
  protected void onDestroy()
  {
    this.bAS.log("onDestroy");
    Object localObject = xa();
    if (this.bBA != null) {
      ((ot)localObject).ː(this.bBA);
    }
    if (this.bDh != null) {
      ((ot)localObject).ː(this.bDh);
    }
    if (this.bBB != null) {
      ((ot)localObject).ː(this.bBB);
    }
    if (this.bDi != null) {
      this.bDi.release();
    }
    if (this.bDl != null) {
      this.bDl.kill();
    }
    this.bxD.kill();
    if (this.bBi != null) {
      this.bBi.kill();
    }
    if (this.bDk != null) {
      this.bDk.reset();
    }
    if (this.bBw != null)
    {
      localObject = this.bBw.xq().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((bq)((Iterator)localObject).next()).onDestroy();
      }
      this.bBw.xq().clear();
    }
    if ((anw.ᐨ(this.bBJ)) && (this.bDh != null) && (!this.bDh.xu()))
    {
      akk.ˑ("ViewerActivity", "Video was not saved to camera, deleting");
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
    case 2: 
      if (paramaai.vA())
      {
        paramaai = (vm)paramaai.data;
        if (paramaai.bnr.id.equals(this.bwV))
        {
          this.bDj = paramaai;
          this.bAT = this.bDj.bnu;
          this.bAS.log("accessChannel succeeded");
          if (this.bDc == null) {
            ˏ(this.bnB.ị(this.bwV));
          }
          this.bAG = this.bDj.bnl;
          if (!this.bDi.ˊ(this.bDj)) {
            return;
          }
          if ((this.bDm == ViewerActivity.ˊ.bDx) && (!this.bDj.bnr.uh()) && (this.bDj.bnr.boT))
          {
            this.bAS.log("Switching to replay mode.");
            akk.ˑ("ViewerActivity", "Switching to replay mode.");
            this.bDm = ViewerActivity.ˊ.bDy;
            wZ().ˮ(this.bDj.bnr.nD, this.bwV);
            this.bDg.setVisibility(8);
            zc();
            zf();
            ᵘ(true);
            this.bBD.setVisibility(8);
            ˊ(null, Boolean.valueOf(false));
            zj();
            this.bDi.xY();
            zn();
          }
          else if (this.bDm == ViewerActivity.ˊ.bDz)
          {
            zf();
            wZ().ˮ(this.bDj.bnr.nD, this.bwV);
          }
          else
          {
            zf();
          }
          if ((this.bDj.bnr.ﮈ()) && (!this.bDj.bnr.boT))
          {
            yx();
            return;
          }
          if ((ze.ˊ(this.bnA)) && (PreferenceManager.getDefaultSharedPreferences(this).getBoolean("pref_force_hls", false))) {
            this.bDj.type = "StreamTypeTooFull";
          }
          this.bDg.setParticipantInfo(this.bnA.vo(), this.bAG);
          zi();
          if ((this.bDm == ViewerActivity.ˊ.bDx) && (anw.ᐨ(this.bDj.bnt)))
          {
            ˊ(new acu(new acr(this.bDj.bnt), "SHA256withECDSA", "SC"), this.bDj.bnv);
            return;
          }
        }
        return;
      }
      this.bAS.log("Failed to load broadcast " + this.bwV);
      akk.ˏ("ViewerActivity", "Failed to load broadcast " + this.bwV, paramaai.bsW);
      ⁿ(false);
      Toast.makeText(this, paramaai.bsW.getResponse().getReason(), 1).show();
      finish();
      return;
    case 3: 
      ᕝ(paramaai.vA());
      return;
    case 4: 
      ᕝ(paramaai.vA());
      return;
    case 5: 
      if (!paramaai.vA()) {
        return;
      }
      paramaai = (vx)paramaai.data;
      ᐝ(paramaai.bnr);
      long l;
      if (paramaai.bnW.bpk != 0L) {
        l = paramaai.bnW.bpm / paramaai.bnW.bpk;
      } else {
        l = 0L;
      }
      aeh.ᐝ localᐝ = new aeh.ᐝ(ani.ˊ(l, (int)Math.max(0L, paramaai.bnW.bpk - 1L), (int)paramaai.bnW.bpl), ane.ʿ(paramaai.bnr.ue(), paramaai.bnr.uf()));
      this.bBx.ˋ(new aeh.aux(localᐝ));
      this.bBw.ˤ(0);
      ˏ(this.bnB.ị(paramaai.bnr.id));
      if (paramaai.bnr.boT)
      {
        wZ().ᴬ(this.bwV);
        return;
      }
      break;
    case 6: 
      if (!paramaai.vA())
      {
        finish();
        return;
      }
      this.bwV = ((vv)paramaai.data).bnh;
      this.bDm = ViewerActivity.ˊ.bDx;
      zd();
      return;
    case 7: 
      if (!paramaai.vA())
      {
        Toast.makeText(this, 2131099882, 0).show();
        this.bAS.log("share w/ followers error: " + paramaai.getReason());
        return;
      }
      break;
    case 8: 
      finish();
    }
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    case 1: 
      this.bBx.xL();
      this.bBw.notifyDataSetChanged();
      return;
    }
    ˏ(this.bnB.ị(this.bwV));
  }
  
  public void onEventMainThread(aal paramaal)
  {
    this.bBx.ˊ(paramaal);
  }
  
  public void onEventMainThread(aca paramaca)
  {
    this.bDg.setChatState(afq.if.bCK);
  }
  
  public void onEventMainThread(acc paramacc)
  {
    if (zr())
    {
      paramacc = ant.ˊ(this.bDj.bnm, this.bsE.bpx, this.bsE.bpy, this.bsE.bpz, this.bsE.id, this.bsE.bpJ, Integer.valueOf(this.bAG), this.bDi.xT());
      this.bAS.log("sending message: join " + this.bDj.bnm);
      this.bxD.ˊ(this.bDj.bns, paramacc);
    }
  }
  
  public void onEventMainThread(ace paramace)
  {
    zi();
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    if (paramBoolean)
    {
      this.bBD.setVisibility(8);
      return;
    }
    this.bBD.setVisibility(0);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    this.bAS.log("onLowMemory");
    if (this.bBw != null)
    {
      Iterator localIterator = this.bBw.xq().iterator();
      while (localIterator.hasNext()) {
        ((bq)localIterator.next()).onLowMemory();
      }
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    ʼ(paramIntent);
  }
  
  protected void onPause()
  {
    this.bAS.log("onPause");
    if (this.bDm != ViewerActivity.ˊ.bDz) {
      zk();
    }
    if (this.bBj)
    {
      this.bxD.ᐩ(this.bDj.bnm, this.bwV);
      this.bBj = false;
    }
    if ((this.bDi != null) && (this.bDi.isPlaying()))
    {
      this.bDi.xY();
      zm();
    }
    if (this.bBw != null)
    {
      Iterator localIterator = this.bBw.xq().iterator();
      while (localIterator.hasNext()) {
        ((bq)localIterator.next()).onPause();
      }
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.bAS.log("onResume");
    if (this.bBw != null)
    {
      Iterator localIterator = this.bBw.xq().iterator();
      while (localIterator.hasNext()) {
        ((bq)localIterator.next()).onResume();
      }
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    this.bAS.log("onStart");
    if (this.bDm == ViewerActivity.ˊ.bDx) {
      zh();
    }
  }
  
  protected void onStop()
  {
    this.bAS.log("onStop");
    if (((this.bDm == ViewerActivity.ˊ.bDx) || (this.bDm == ViewerActivity.ˊ.bDy)) && (this.bDi != null) && (this.bDi.isPlaying()) && (!isFinishing()))
    {
      zg();
      finish();
    }
    if (this.bDi != null) {
      this.bDi.xX();
    }
    super.onStop();
  }
  
  public BigInteger xT()
  {
    return this.bDi.xT();
  }
  
  public long xV()
  {
    return this.bDi.xV();
  }
  
  public long xW()
  {
    return this.bDi.xW();
  }
  
  public void xr()
  {
    this.bBp.setVisibility(8);
    this.bDg.yX();
  }
  
  public void xs()
  {
    this.bBp.setVisibility(0);
    this.bDg.yY();
  }
  
  public boolean xt()
  {
    return this.bBp.getVisibility() == 0;
  }
  
  public void yh()
  {
    this.bAS.log("onPlaybackStarted");
    this.mHandler.postDelayed(this.bBq, 30000L);
    ⁿ(false);
    this.bDo = true;
    zb();
    this.bDk.setVisibility(0);
    this.bDk.ˊ(this);
    this.ᔄ = System.currentTimeMillis();
    zo();
  }
  
  public void yi()
  {
    this.bAS.log("onPlaybackEnded");
    this.bDk.setVisibility(8);
    this.bDk.reset();
    ᐝ(this.bDc);
    zm();
    zn();
    ᵘ(false);
  }
  
  public void yj()
  {
    this.bAS.log("onPlaybackRequested");
    ⁿ(true);
  }
  
  public void yk()
  {
    this.bAS.log("onPlaybackReady");
    ⁿ(false);
    ᵤ(this.bDm.bDA);
  }
  
  public void yl()
  {
    this.bAS.log("onPlaybackBuffer");
    if (this.bDt) {
      return;
    }
    if ((this.bDo) && (!this.bDi.ﮈ()) && (!this.bDi.isPaused()))
    {
      akk.ᐪ("ViewerActivity", "Buffering detected.");
      this.mHandler.postDelayed(this.bDu, 1000L);
      this.bDt = true;
    }
  }
  
  public BigInteger ym()
  {
    return this.bDi.xU();
  }
  
  public boolean yn()
  {
    return this.bDi.ﺓ();
  }
  
  public void yx()
  {
    zk();
    this.bDi.xX();
    ᐝ(this.bDc);
    this.bDk.reset();
    if (this.bDm == ViewerActivity.ˊ.bDx)
    {
      this.bDg.yW();
      this.bDg.setVisibility(8);
      akj.ᔉ(this.bDg);
    }
    zn();
    ᵘ(false);
    this.byT.setDraggable(false);
  }
  
  public void yy()
  {
    this.bDc.boT = true;
    zl();
    this.byT.setDraggable(true);
  }
  
  protected void zf()
  {
    if (this.bDl != null) {
      this.bDl.kill();
    }
    switch (1.bDw[this.bDm.ordinal()])
    {
    default: 
      break;
    case 1: 
      this.bDl = new abv(xa(), this.bnA, this, this.bAS);
      return;
    }
    this.bDl = new acg(xa(), this.bnA, this.bxD, this, this.bDi.yb());
  }
  
  protected void zm()
  {
    if (!this.bDs) {
      return;
    }
    this.bDs = false;
    if ((this.bDm == ViewerActivity.ˊ.bDx) || (this.bDm == ViewerActivity.ˊ.bDz)) {
      return;
    }
    float f2 = (float)this.bDi.xV() / (float)this.bDi.xW();
    float f1 = f2;
    if (f2 > 0.99F) {
      f1 = 1.0F;
    }
    ˇ(f1);
    if (this.bDj != null) {
      wZ().ˊ(this.bDj.bnr.id, this.bDj.bnn, zv(), f1, this.bDq);
    }
    this.bDq = 0;
    this.bDr = 0;
    this.ᔄ = 0L;
  }
  
  protected void zn()
  {
    if (isFinishing()) {
      return;
    }
    int i;
    if ((this.bDm.bDA) && (this.bDi.isPaused())) {
      i = 1;
    } else {
      i = 0;
    }
    if ((!this.bDi.isPlaying()) || (i != 0) || (this.bDi.ﮈ()))
    {
      if (i != 0) {
        zq();
      } else if ((this.bDi.ﮈ()) && (this.bDc != null)) {
        ᓲ.ᐝ(this).ʻ(this.bDc.boQ).ץ().ˊ(new ᘇ[] { new abc(this) }).ˊ(this.bDd);
      }
      this.bDd.setVisibility(0);
      this.bDd.setAlpha(1.0F);
    }
    if (this.byT.ˢ(this.bBu)) {
      return;
    }
    this.byT.ˤ(this.bBu);
  }
  
  protected void zo()
  {
    if (!this.byT.ˢ(this.bBu)) {
      return;
    }
    this.byT.ᕀ(this.bBu);
    zp();
  }
  
  public void ǐ(String paramString)
  {
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 2130903094, getResources().getStringArray(2131165184));
    new AlertDialog.Builder(this).setAdapter(localArrayAdapter, new agm(this, paramString)).show();
  }
  
  public void ɫ(int paramInt)
  {
    this.bDf.setText(akn.ˊ(getResources(), paramInt, true));
  }
  
  public void ʾ(String paramString, int paramInt)
  {
    aad localaad = this.bnA;
    String str = this.bwV;
    boolean bool;
    if (this.bDm == ViewerActivity.ˊ.bDy) {
      bool = true;
    } else {
      bool = false;
    }
    localaad.ˊ(str, paramString, paramInt, bool);
  }
  
  public void ʾ(ant paramant)
  {
    if ((this.bDi == null) || (!this.bDi.isPlaying())) {
      return;
    }
    this.bBp.ˍ(paramant);
  }
  
  public void ʿ(ant paramant)
  {
    Toast.makeText(this, 2131099713, 1).show();
    finish();
  }
  
  public void ˋ(String paramString, ArrayList<String> paramArrayList)
  {
    wZ().ˊ(paramString, paramArrayList);
    if ((paramArrayList == null) || (paramArrayList.isEmpty()))
    {
      vi.ˊ(vi.if.bmb);
      this.bAS.log("share with all followers");
    }
    else
    {
      vi.ˊ(vi.if.bma);
      this.bAS.log("share with " + paramArrayList.size() + " followers");
    }
    if (this.bBj)
    {
      int i;
      if ((paramArrayList == null) || (paramArrayList.isEmpty()))
      {
        paramString = getString(2131099800);
        i = 0;
      }
      else
      {
        paramString = getResources().getQuantityString(2131558400, paramArrayList.size(), new Object[] { this.bnA.vq(), akn.ˊ(getResources(), paramArrayList.size(), true) });
        i = paramArrayList.size();
      }
      if (zr())
      {
        paramString = ant.ˊ(this.bDj.bnm, paramString, this.bnA.vq(), this.bnA.vp(), this.bnA.vu(), this.bnA.vx(), this.bnA.vo(), Integer.valueOf(this.bAG), this.bDi.xT(), Integer.valueOf(i));
        this.bBp.ˍ(paramString);
        this.bAS.log("sending invite message");
        this.bxD.ˊ(this.bDj.bns, paramString);
      }
    }
  }
  
  public void ˋ(ant paramant, vk paramvk)
  {
    this.bBK.ˊ(paramant, paramvk);
  }
  
  public void ۃ(String paramString)
  {
    paramString = ant.ˊ(this.bDj.bnm, paramString, this.bsE.bpx, this.bsE.bpy, this.bsE.bpz, this.bsE.id, this.bsE.bpJ, Integer.valueOf(this.bAG), this.bDi.xT());
    ʾ(paramString);
    if (zr())
    {
      vi.ˊ(vi.if.blY);
      this.bDr += 1;
      this.bAS.log("sendChat #" + this.bDr);
      this.bxD.ˊ(this.bDj.bns, paramString);
    }
  }
  
  public void ᐝ(Exception paramException)
  {
    if ((paramException instanceof aax)) {
      Toast.makeText(this, "Unsupported DRM exception", 1).show();
    }
  }
  
  public void ᴵ(List<anv> paramList)
  {
    if (this.bDm == ViewerActivity.ˊ.bDx) {
      this.bnA.ˊ(this.bDc.nD, this.bwV, paramList);
    }
  }
  
  public void ι(ant paramant)
  {
    if ((this.bDi == null) || (!this.bDi.isPlaying())) {
      return;
    }
    if (this.bDm == ViewerActivity.ˊ.bDx)
    {
      this.bBo.Ѓ(akl.ˊ(getResources(), paramant.Ch().intValue()));
      return;
    }
    this.bBo.Ѓ(akl.ˊ(getResources(), paramant.Ch().intValue()));
  }
  
  class if
    implements Runnable
  {
    private if() {}
    
    public void run()
    {
      if ((ViewerActivity.ՙ(ViewerActivity.this)) || (ViewerActivity.this.isFinishing())) {
        return;
      }
      if ((ViewerActivity.ʽ(ViewerActivity.this) == ViewerActivity.ˊ.bDx) && (ViewerActivity.ˋ(ViewerActivity.this).isPlaying()))
      {
        ViewerActivity.ٴ(ViewerActivity.this).ʻ(ViewerActivity.ι(ViewerActivity.this), ViewerActivity.ˈ(ViewerActivity.this).bnn, ViewerActivity.י(ViewerActivity.this));
        ViewerActivity.ﹳ(ViewerActivity.this).postDelayed(this, 30000L);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.ui.broadcast.ViewerActivity
 * JD-Core Version:    0.7.0.1
 */