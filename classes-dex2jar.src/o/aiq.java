package o;

import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import tv.periscope.android.api.PsUser;

public class aiq
  extends ado
  implements View.OnClickListener
{
  private TextView bGA;
  private Button bGB;
  private ImageView bGC;
  private ImageView bGD;
  private int bGE;
  private int bGF;
  private int bGG;
  private int bGH;
  private boolean bGI;
  private boolean bGJ;
  private boolean bGK;
  private TextWatcher bGL = new ait(this);
  private TextWatcher bGM = new aiu(this);
  private EditText bGw;
  private EditText bGx;
  private TextView bGy;
  private TextView bGz;
  
  private void zQ()
  {
    aad localaad = vf.tI();
    wZ().ᐝ(this.bGw.getText().toString(), localaad.vm(), localaad.vn());
  }
  
  private void zR()
  {
    zS();
    if ((TextUtils.isEmpty(this.bGx.getText())) || (this.bGx.getText().toString().length() < 1))
    {
      this.bGA.setText(2131099773);
      this.bGK = false;
      ˋ(this.bGA, this.bGx);
      zU();
    }
    else
    {
      this.bGK = true;
      ˎ(this.bGA, this.bGx);
      zU();
    }
    zV();
  }
  
  private boolean zS()
  {
    if ((TextUtils.isEmpty(this.bGw.getText())) || (this.bGw.getText().toString().length() < 3))
    {
      this.bGI = false;
      zT();
      this.bGz.setText(2131099910);
      ˋ(this.bGz, this.bGw);
      zV();
      return false;
    }
    this.bGI = true;
    zV();
    return true;
  }
  
  private void zT()
  {
    if ((this.bGI) && (this.bGJ))
    {
      this.bGw.setTextColor(this.bGE);
      this.bGC.setColorFilter(this.bGF);
      ˎ(this.bGz, this.bGw);
      return;
    }
    this.bGw.setTextColor(this.bGG);
    this.bGC.setColorFilter(this.bGG);
  }
  
  private void zU()
  {
    if (this.bGK)
    {
      this.bGx.setTextColor(this.bGE);
      this.bGD.setColorFilter(this.bGF);
      return;
    }
    this.bGx.setTextColor(this.bGG);
    this.bGD.setColorFilter(this.bGG);
  }
  
  private void zV()
  {
    boolean bool;
    if ((this.bGI) && (this.bGJ) && (this.bGK)) {
      bool = true;
    } else {
      bool = false;
    }
    if (!bool) {
      this.bGB.setAlpha(0.3F);
    } else {
      this.bGB.setAlpha(1.0F);
    }
    this.bGB.setEnabled(bool);
  }
  
  private void ˋ(View paramView1, View paramView2)
  {
    if (paramView1.getVisibility() == 0) {
      return;
    }
    paramView1.setVisibility(0);
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { 0, this.bGH });
    localValueAnimator.addUpdateListener(new aiv(this, paramView1));
    localValueAnimator.addListener(new aiw(this, paramView2));
    localValueAnimator.setDuration(180L);
    localValueAnimator.start();
  }
  
  private void ˎ(View paramView1, View paramView2)
  {
    if (paramView1.getVisibility() != 0) {
      return;
    }
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { this.bGH, 0 });
    localValueAnimator.addUpdateListener(new aix(this, paramView1));
    localValueAnimator.addListener(new aiy(this, paramView1, paramView2));
    localValueAnimator.setDuration(180L);
    localValueAnimator.start();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      return;
    }
    switch (paramInt2)
    {
    default: 
      return;
    }
    setResult(-1);
    finish();
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
    case 2131427515: 
      paramView = vf.tI();
      wZ().ˋ(this.bGw.getText().toString(), this.bGx.getText().toString(), paramView.vm(), paramView.vn());
      return;
    }
    onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    paramBundle = (amt)findViewById(2131427472);
    paramBundle.setTitle(2131099757);
    paramBundle.findViewById(2131427516).setOnClickListener(this);
    if (Build.VERSION.SDK_INT >= 21) {
      paramBundle.setElevation(0.0F);
    }
    this.bGE = getResources().getColor(2131296374);
    this.bGG = getResources().getColor(2131296324);
    this.bGw = ((EditText)findViewById(2131427501));
    this.bGw.addTextChangedListener(this.bGL);
    this.bGC = ((ImageView)findViewById(2131427511));
    this.bGD = ((ImageView)findViewById(2131427508));
    this.bGx = ((EditText)findViewById(2131427509));
    this.bGy = ((TextView)findViewById(2131427514));
    this.bGy.setVisibility(0);
    this.bGB = ((Button)findViewById(2131427515));
    this.bGB.setOnClickListener(this);
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      localObject = paramBundle.getExtras();
      if (localObject != null)
      {
        paramBundle = (PsUser)((Bundle)localObject).getParcelable("e_user");
        localObject = ((Bundle)localObject).getString("e_suggested");
        this.bGw.setText((CharSequence)localObject);
        this.bGx.setText(paramBundle.bpy);
        localObject = (ImageView)findViewById(2131427433);
        ᓲ.ᐝ(this).ʻ(paramBundle.uj()).ˊ((ImageView)localObject);
      }
    }
    this.bGx.addTextChangedListener(this.bGM);
    this.bGz = ((TextView)findViewById(2131427512));
    this.bGz.setVisibility(4);
    this.bGA = ((TextView)findViewById(2131427510));
    this.bGA.setVisibility(4);
    this.bGF = getResources().getColor(2131296403);
    this.bGH = getResources().getDimensionPixelOffset(2131361917);
    paramBundle = (TextView)findViewById(2131427513);
    Object localObject = new air(this);
    ais localais = new ais(this);
    akn.ˊ(paramBundle, getString(2131099894), getResources().getColor(2131296298), new View.OnClickListener[] { localObject, localais });
    this.bGJ = true;
  }
  
  public void onEventMainThread(aai paramaai)
  {
    switch (1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
    case 1: 
      if (paramaai.vA())
      {
        paramaai = (ym)paramaai.data;
        zR();
        if ((paramaai.bqj == null) || (paramaai.bqj.length == 0)) {
          this.bGJ = true;
        } else {
          this.bGJ = false;
        }
        zT();
        zV();
        return;
      }
      if (paramaai.data != null)
      {
        paramaai = ((yk)paramaai.data).bqh.iterator();
        while (paramaai.hasNext())
        {
          yk.if localif = (yk.if)paramaai.next();
          if (localif.bqi.contains("username"))
          {
            this.bGJ = false;
            this.bGz.setText(localif.bpL);
            ˋ(this.bGz, this.bGw);
            zT();
            zV();
          }
        }
        return;
      }
      break;
    case 2: 
      if (paramaai.vA())
      {
        startActivityForResult(new Intent(this, aja.class), 29384);
        finish();
        return;
      }
      Toast.makeText(this, paramaai.getReason(), 1).show();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aiq
 * JD-Core Version:    0.7.0.1
 */