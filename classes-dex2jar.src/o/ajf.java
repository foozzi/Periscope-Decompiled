package o;

import android.app.ActivityOptions;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.LaunchActivity;

public abstract class ajf
  extends ado
  implements View.OnClickListener
{
  private static long bHh = 0L;
  private ImageView bHi;
  private TextView bHj;
  private TextView bHk;
  private TextView bHl;
  private TextView bHm;
  private TextView bHn;
  private TextView bHo;
  private TextView bHp;
  private final DialogInterface.OnClickListener bHq = new ajg(this);
  private aad bnA;
  private ImageView bzW;
  
  private void Ad()
  {
    Resources localResources = getResources();
    this.bHm.setText(akn.ˊ(localResources, this.bnA.vr(), true));
    this.bHn.setText(akn.ˊ(localResources, this.bnA.vs(), true));
    this.bHp.setText(akn.ˊ(localResources, this.bnA.vt(), false));
    Ae();
  }
  
  private void Ae()
  {
    this.bHo.setText(akn.ˊ(getResources(), this.bnA.vv(), true));
  }
  
  private void Af()
  {
    startActivity(new Intent(this, adp.class), ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
  }
  
  private void Ag()
  {
    startActivity(new Intent(this, adh.class), ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
  }
  
  private void Ah()
  {
    startActivity(new Intent(this, adi.class), ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
  }
  
  private boolean Ai()
  {
    return SystemClock.elapsedRealtime() - bHh > 300000L;
  }
  
  private void logout()
  {
    bHh = 0L;
    vn.ᵋ(this).ˊ(aaj.btK);
    Intent localIntent = new Intent(this, LaunchActivity.class);
    localIntent.setFlags(67141632);
    startActivity(localIntent);
    localIntent = new Intent();
    localIntent.setAction("action_logout");
    setResult(-1, localIntent);
    finish();
  }
  
  private void ˋ(aah paramaah)
  {
    startActivity(new Intent(this, ake.class).putExtra("e_user_type", paramaah), ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
  }
  
  public void Ac()
  {
    Object localObject = this.bnA;
    ᓲ.ᐝ(this).ʻ(((aad)localObject).vo()).ˊ(this.bzW);
    ᓲ.ᐝ(this).ʻ(((aad)localObject).vo()).ˊ(this.bHi);
    this.bHj.setText(((aad)localObject).vp());
    this.bHk.setText(getString(2131099909, new Object[] { ((aad)localObject).vq() }));
    localObject = ((aad)localObject).vw();
    if (anw.ᐨ((CharSequence)localObject))
    {
      this.bHl.setVisibility(0);
      this.bHl.setText((CharSequence)localObject);
    }
    else
    {
      this.bHl.setVisibility(8);
    }
    Ad();
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    overridePendingTransition(2130968586, 2130968591);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131427516: 
      onBackPressed();
      return;
    case 2131427546: 
      vi.ˊ(vi.if.blu);
      ˋ(aah.bsL);
      return;
    case 2131427548: 
      vi.ˊ(vi.if.blv);
      ˋ(aah.bsM);
      return;
    case 2131427550: 
      vi.ˊ(vi.if.blw);
      ˋ(aah.bsN);
      return;
    case 2131427552: 
      Af();
      return;
    case 2131427554: 
      vi.ˊ(vi.if.blA);
      Ag();
      return;
    case 2131427557: 
      vi.ˊ(vi.if.blB);
      new AlertDialog.Builder(this).setMessage(getString(2131099772)).setNegativeButton(2131099767, null).setPositiveButton(2131099769, this.bHq).show();
      return;
    }
    Ah();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    this.bzW = ((ImageView)findViewById(2131427433));
    this.bHi = ((ImageView)findViewById(2131427542));
    this.bHj = ((TextView)findViewById(2131427544));
    this.bHk = ((TextView)findViewById(2131427501));
    this.bHl = ((TextView)findViewById(2131427519));
    this.bHm = ((TextView)findViewById(2131427549));
    this.bHn = ((TextView)findViewById(2131427547));
    this.bHo = ((TextView)findViewById(2131427551));
    this.bHp = ((TextView)findViewById(2131427545));
    this.bnA = vf.tI();
    findViewById(2131427557).setOnClickListener(this);
    findViewById(2131427546).setOnClickListener(this);
    findViewById(2131427548).setOnClickListener(this);
    findViewById(2131427552).setOnClickListener(this);
    findViewById(2131427554).setOnClickListener(this);
    findViewById(2131427550).setOnClickListener(this);
    findViewById(2131427516).setOnClickListener(this);
    findViewById(2131427556).setOnClickListener(this);
    ((TextView)findViewById(2131427558)).setVisibility(8);
    paramBundle = (TextView)findViewById(2131427555);
    if (ze.ˊ(this.bnA))
    {
      paramBundle.setVisibility(0);
      paramBundle.setOnClickListener(this);
    }
    else
    {
      paramBundle.setVisibility(8);
    }
    ((ImageView)findViewById(2131427553)).setColorFilter(getResources().getColor(2131296319));
    Ac();
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    case 1: 
      Ac();
      return;
    }
    Ae();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (Ai())
    {
      vn localvn = wZ();
      localvn.tS();
      localvn.tV();
      bHh = SystemClock.elapsedRealtime();
      return;
    }
    Ad();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajf
 * JD-Core Version:    0.7.0.1
 */