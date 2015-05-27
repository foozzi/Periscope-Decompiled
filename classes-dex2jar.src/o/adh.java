package o;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

public class adh
  extends Activity
  implements View.OnClickListener
{
  private adf byA;
  private EditText byB;
  private EditText byC;
  
  private void wV()
  {
    Toast.makeText(this, 2131099787, 1).show();
    String str = this.byB.getText().toString() + "\n\n" + this.byC.getText().toString();
    startActivityForResult(ι(wX(), wW(), str), 8000);
  }
  
  private String wW()
  {
    return getString(2131099784, new Object[] { "v" + akn.ᐤ(this) + " (" + getPackageName() + ")" });
  }
  
  private String wX()
  {
    if (ze.uH()) {
      return "contact@periscope.tv";
    }
    return "periscope-android-beta-feedback@twitter.com";
  }
  
  private Intent ι(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = new StringBuilder(paramString3).append("\n\n").append("--------------------").append(this.byA.wT());
    return new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", paramString1, null)).putExtra("android.intent.extra.SUBJECT", paramString2).putExtra("android.intent.extra.TEXT", paramString3.toString());
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 8000) {
      finish();
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    vi.ˊ(vi.if.blC);
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
    }
    vi.ˊ(vi.if.blD);
    wV();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903096);
    this.byA = new adf(this, vf.tI());
    this.byB = ((EditText)findViewById(2131427518));
    this.byC = ((EditText)findViewById(2131427519));
    paramBundle = getString(2131099783) + "\n\n";
    this.byC.setText(paramBundle);
    findViewById(2131427516).setOnClickListener(this);
    findViewById(2131427517).setOnClickListener(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adh
 * JD-Core Version:    0.7.0.1
 */