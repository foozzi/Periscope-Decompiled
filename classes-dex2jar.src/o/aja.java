package o;

import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.HashSet;

public class aja
  extends ado
  implements amw, View.OnClickListener
{
  private als bFG;
  private ProgressDialog bGT;
  private alx bGV;
  private alw bGW;
  private ajb bGX;
  private aad bnA;
  private alo byD;
  
  private void zW()
  {
    getSharedPreferences("onboarding", 0).edit().putBoolean("shown", true).apply();
  }
  
  private void zX()
  {
    ajb localajb = this.bGX;
    if (localajb.zZ()) {
      this.bGV.setChecked(true);
    } else {
      this.bGV.setChecked(false);
    }
    int i = localajb.Aa().size();
    if (i == 1)
    {
      this.bGW.setText(getString(2131099848));
      return;
    }
    this.bGW.setText(getString(2131099847, new Object[] { Integer.valueOf(i) }));
  }
  
  public void onBackPressed()
  {
    if (this.bFG.wY()) {
      return;
    }
    setResult(-1);
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131427585: 
      if (this.bGV.isChecked()) {
        this.bGX.zY();
      } else {
        this.bGX.selectAll();
      }
      this.bGX.notifyDataSetChanged();
      zX();
      return;
    case 2131427537: 
      onBackPressed();
      return;
    }
    paramView = this.bGX.Aa();
    if (!paramView.isEmpty())
    {
      wZ().ˊ(paramView);
      this.bGT = new ProgressDialog(this);
      this.bGT.setMessage(getString(2131099849));
      this.bGT.setIndeterminate(true);
      this.bGT.setCancelable(false);
      this.bGT.show();
      return;
    }
    setResult(-1);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bnA = vf.tI();
    setContentView(2130903103);
    this.byD = ((alo)findViewById(2131427483));
    this.bFG = new adj(this, wZ(), this.bnA, this.byD);
    xa().ʲ(this.bFG);
    this.byD.setDelegate(this.bFG);
    paramBundle = (RecyclerView)findViewById(2131427423);
    paramBundle.setLayoutManager(new LinearLayoutManager(this));
    ajb localajb = new ajb(this, new aab(this.bnA), this);
    this.bGX = localajb;
    paramBundle.setAdapter(localajb);
    this.bGV = ((alx)findViewById(2131427585));
    this.bGV.setOnClickListener(this);
    this.bGW = ((alw)findViewById(2131427538));
    this.bGW.setOnClickListener(this);
    zX();
    findViewById(2131427537).setOnClickListener(this);
    wZ().tW();
    zW();
  }
  
  protected void onDestroy()
  {
    xa().ː(this.bFG);
    super.onDestroy();
  }
  
  public void onEventMainThread(aai paramaai)
  {
    switch (1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
      return;
    case 1: 
      this.bGT.dismiss();
      this.bnA.vg();
      wZ().tW();
      setResult(-1);
      finish();
      return;
    }
    this.bGX.selectAll();
    this.bGX.notifyDataSetChanged();
    zX();
  }
  
  public boolean wY()
  {
    return false;
  }
  
  public void ƚ(String paramString)
  {
    this.bFG.ƚ(paramString);
  }
  
  public void ʾ(String paramString1, String paramString2, String paramString3) {}
  
  public void ﭕ(String paramString)
  {
    this.bGX.ᓭ(paramString);
    this.bGX.notifyDataSetChanged();
    zX();
  }
  
  public void ﭜ(String paramString)
  {
    this.bGX.ᓭ(paramString);
    this.bGX.notifyDataSetChanged();
    zX();
  }
  
  public void ﭤ(String paramString) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aja
 * JD-Core Version:    0.7.0.1
 */