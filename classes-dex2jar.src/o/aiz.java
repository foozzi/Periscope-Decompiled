package o;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.twitter.sdk.android.core.TwitterAuthToken;
import tv.periscope.android.ui.main.MainActivity;

public class aiz
  extends ado
  implements View.OnClickListener
{
  private ng bGQ;
  private boolean bGR;
  private boolean bGS;
  private ProgressDialog bGT;
  private aad bnA;
  
  private void ٲ(int paramInt)
  {
    startActivity(new Intent(this, MainActivity.class).putExtra("pager_pos", paramInt));
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      break;
    case 989582: 
      ٲ(1);
      return;
    }
    this.bGQ.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == 0) {
      vi.ˊ(vi.if.blT);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    this.bGR = true;
    vi.ˊ(vi.if.blS);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bnA = vf.tI();
    setContentView(2130903100);
    this.bGQ = ((ng)findViewById(2131427524));
    this.bGQ.setCallback(new if(null));
    this.bGQ.setOnClickListener(this);
  }
  
  protected void onDestroy()
  {
    if (!this.bGS) {
      if (this.bGR) {
        vi.ˊ(vi.if.blT);
      } else {
        vi.ˊ(vi.if.blU);
      }
    }
    super.onDestroy();
  }
  
  public void onEventMainThread(aai paramaai)
  {
    switch (1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
      return;
    }
    this.bGT.dismiss();
    if (paramaai.vA())
    {
      this.bGS = true;
      paramaai = (ye)paramaai.data;
      if (TextUtils.isEmpty(paramaai.bqd))
      {
        this.bnA.vk();
        paramaai = vf.tK();
        try
        {
          paramaai.ژ();
        }
        catch (acn paramaai)
        {
          akk.ˏ("LoginActivity", "Failed to register push", paramaai);
        }
        ٲ(0);
      }
      else
      {
        Intent localIntent = new Intent(this, aiq.class);
        localIntent.putExtra("e_user", paramaai.boA);
        localIntent.putExtra("e_suggested", paramaai.bqd);
        startActivityForResult(localIntent, 989582);
      }
      return;
    }
    Toast.makeText(this, paramaai.getReason(), 1).show();
  }
  
  class if
    extends lz<mr>
  {
    private if() {}
    
    public void ˊ(mf<mr> parammf)
    {
      TwitterAuthToken localTwitterAuthToken = (TwitterAuthToken)((mr)parammf.data).aX();
      aiz.ˊ(aiz.this).ᑊ(localTwitterAuthToken.Qn, localTwitterAuthToken.Qo);
      aiz.ˋ(aiz.this).ˊ(localTwitterAuthToken.Qo, localTwitterAuthToken.Qn, ((mr)parammf.data).getUserName(), String.valueOf(((mr)parammf.data).bk()), null, akn.ו(aiz.this));
      aiz.ˊ(aiz.this, new ProgressDialog(aiz.this));
      aiz.ˎ(aiz.this).setMessage(aiz.this.getString(2131099806));
      aiz.ˎ(aiz.this).setIndeterminate(true);
      aiz.ˎ(aiz.this).setCancelable(false);
      aiz.ˎ(aiz.this).show();
    }
    
    public void ˊ(mo parammo) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aiz
 * JD-Core Version:    0.7.0.1
 */