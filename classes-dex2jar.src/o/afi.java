package o;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.location.Location;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsResult;
import java.util.ArrayList;

class afi
  implements View.OnClickListener, aay.if, ay, ajw.if
{
  private static final ArrayList<String> bCa = new ArrayList();
  private final aju bBB;
  private boolean bBj;
  private final TextView bCb;
  private final TextView bCc;
  private final amc bCd;
  private final amc bCe;
  private final amc bCf;
  private final amv bCg;
  private final aay bCh;
  private final if bCi;
  private final mr bCj;
  private final age bCk;
  private final ArrayList<String> bCl = new ArrayList();
  private final int bCm;
  private Location bCn;
  private boolean bCo;
  private afi.ˊ bCp;
  private String bCq;
  private boolean bCr;
  private final Activity mActivity;
  
  public afi(Activity paramActivity, TextView paramTextView1, TextView paramTextView2, amc paramamc1, amc paramamc2, amc paramamc3, if paramif, int paramInt, aju paramaju)
  {
    this.mActivity = paramActivity;
    this.bCd = paramamc1;
    this.bCb = paramTextView1;
    this.bCc = paramTextView2;
    this.bCe = paramamc2;
    this.bCf = paramamc3;
    this.bCi = paramif;
    this.bCh = new aay(paramActivity, this, this);
    this.bCj = ((mr)mn.bd().bj().aU());
    this.bCk = ˣ(paramActivity);
    this.bBB = paramaju;
    this.bCm = paramInt;
    this.bCg = new amv(paramActivity);
    this.bCd.setOnClickListener(this);
    this.bCb.setOnClickListener(this);
    this.bCc.setOnClickListener(this);
    this.bCe.setOnClickListener(this);
    this.bCf.setOnClickListener(this);
    this.bBB.ˊ(this);
    this.bCc.setVisibility(0);
    ˎ(bCa);
  }
  
  private void yH()
  {
    if (yI()) {
      this.bCi.ᐝ(this.bCn);
    }
  }
  
  private void yN()
  {
    if (this.bCo)
    {
      Toast.makeText(this.mActivity, 2131099805, 1).show();
      return;
    }
    ˊ(this.bCd);
    if (this.bCd.isActivated())
    {
      vi.ˊ(vi.if.bmz);
      this.bCh.vN();
      return;
    }
    vi.ˊ(vi.if.bmA);
    this.bCh.vO();
  }
  
  private void yO()
  {
    vi.ˊ(vi.if.bmS);
    this.bBB.show();
  }
  
  private void yP()
  {
    this.bCe.setVisibility(8);
    this.bCf.setVisibility(8);
  }
  
  private void yQ()
  {
    this.bCe.setVisibility(0);
    this.bCf.setVisibility(0);
  }
  
  private void ˊ(amc paramamc)
  {
    boolean bool;
    if (!paramamc.isActivated()) {
      bool = true;
    } else {
      bool = false;
    }
    ˊ(paramamc, bool);
    if (this.bCg.isShowing()) {
      this.bCg.dismiss();
    }
    if (bool)
    {
      this.bCg.ˊ(paramamc, this.mActivity.getString(paramamc.BK()));
      return;
    }
    this.bCg.ˊ(paramamc, this.mActivity.getString(paramamc.BL()));
  }
  
  private void ˊ(amc paramamc, boolean paramBoolean)
  {
    paramamc.setActivated(paramBoolean);
    paramamc.setAlpha(ᵒ(paramBoolean));
  }
  
  private void ˋ(int paramInt, Intent paramIntent)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      this.bCo = true;
      ˊ(this.bCd, false);
      Toast.makeText(this.mActivity, 2131099805, 1).show();
      return;
    }
    this.bCo = false;
  }
  
  private void ˎ(ArrayList<String> paramArrayList)
  {
    boolean bool1;
    if (!paramArrayList.isEmpty()) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    this.bCc.setActivated(bool1);
    TextView localTextView = this.bCb;
    boolean bool2;
    if (!bool1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localTextView.setActivated(bool2);
    if (bool1)
    {
      yP();
      this.bCc.setText(this.mActivity.getString(2131099702, new Object[] { Integer.valueOf(paramArrayList.size()) }));
      return;
    }
    yQ();
    this.bCc.setText(2131099701);
  }
  
  private age ˣ(Context paramContext)
  {
    if ("development".equals("production")) {
      return new afj(this, paramContext);
    }
    if (this.bCj != null) {
      return new agf(paramContext.getResources(), mn.bd().ˋ(this.bCj));
    }
    ɬ.ˋ(new IllegalStateException("No valid twitter session!!!"));
    return new afk(this, paramContext);
  }
  
  private boolean ڍ(String paramString)
  {
    return (yM()) && (!this.bCr) && (paramString != null);
  }
  
  private void ᐟ(String paramString1, String paramString2)
  {
    this.bCk.ˊ(paramString1, paramString2, new afl(this));
  }
  
  private float ᵒ(boolean paramBoolean)
  {
    if (paramBoolean) {
      return 1.0F;
    }
    return 0.3F;
  }
  
  public void onActivityStop()
  {
    this.bCh.disconnect();
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.bCd)
    {
      yN();
      return;
    }
    if (paramView == this.bCb)
    {
      ˎ(bCa);
      this.bCp.ٴ(bCa);
      return;
    }
    if (paramView == this.bCc)
    {
      yO();
      return;
    }
    if (paramView == this.bCe)
    {
      ˊ(this.bCe);
      return;
    }
    if (paramView == this.bCf)
    {
      if (this.bCj != null)
      {
        ˊ(this.bCf);
        return;
      }
      if (this.bCg.isShowing()) {
        this.bCg.dismiss();
      }
      this.bCg.ˊ(this.bCf, this.mActivity.getString(2131099708));
    }
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    akk.ˑ("BroadcasterOptions", "onLocationChanged " + paramLocation);
    this.bCn = paramLocation;
    if (this.bBj) {
      yH();
    }
  }
  
  public void yD()
  {
    this.bCh.connect();
  }
  
  public void yE()
  {
    if ((this.bCh.isConnected()) && (this.bCd.isActivated())) {
      this.bCh.vN();
    }
  }
  
  public void yF()
  {
    if (this.bCh.isConnected()) {
      this.bCh.vO();
    }
  }
  
  public void yG()
  {
    this.bBj = true;
    yH();
  }
  
  public boolean yI()
  {
    return (this.bCd.isActivated()) && (aba.ˏ(this.bCn));
  }
  
  public Location yJ()
  {
    return this.bCn;
  }
  
  public ArrayList<String> yK()
  {
    if (this.bCc.isActivated()) {
      return this.bCl;
    }
    return bCa;
  }
  
  public boolean yL()
  {
    return (this.bCe.getVisibility() == 0) && (this.bCe.isActivated());
  }
  
  public boolean yM()
  {
    return (this.bCf.getVisibility() == 0) && (this.bCf.isActivated());
  }
  
  public void ˊ(afi.ˊ paramˊ)
  {
    this.bCp = paramˊ;
  }
  
  public void ˋ(ArrayList<String> paramArrayList)
  {
    this.bCl.clear();
    this.bCl.addAll(paramArrayList);
    ˎ(this.bCl);
    if (this.bCp != null) {
      this.bCp.ٴ(this.bCl);
    }
  }
  
  public boolean ˋ(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == this.bCm)
    {
      ˋ(paramInt2, paramIntent);
      return true;
    }
    return false;
  }
  
  public void ˎ(LocationSettingsResult paramLocationSettingsResult)
  {
    try
    {
      paramLocationSettingsResult.হ().ˊ(this.mActivity, this.bCm);
      return;
    }
    catch (IntentSender.SendIntentException paramLocationSettingsResult) {}
  }
  
  public void ڌ(String paramString)
  {
    if (ڍ(paramString)) {
      ᐟ(this.bCq, paramString);
    }
  }
  
  public void יּ(String paramString1, String paramString2)
  {
    this.bCq = paramString1;
    if (yM()) {
      vi.ˊ(vi.if.bmC);
    } else {
      vi.ˊ(vi.if.bmD);
    }
    if (ڍ(paramString2)) {
      ᐟ(paramString1, paramString2);
    }
  }
  
  static abstract interface if
  {
    public abstract void ᐝ(Location paramLocation);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afi
 * JD-Core Version:    0.7.0.1
 */