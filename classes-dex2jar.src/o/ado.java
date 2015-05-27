package o;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import tv.periscope.android.LaunchActivity;

public abstract class ado
  extends Activity
{
  private final if byJ = new if(null);
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent().getBooleanExtra("e_from_push", false)) {
      vi.ˊ(vi.if.bnb);
    }
    wZ().tQ();
  }
  
  public void onDestroy()
  {
    wZ().tR();
    super.onDestroy();
  }
  
  public void onEventMainThread(aaj paramaaj) {}
  
  public void onStart()
  {
    super.onStart();
    ot localot = xa();
    localot.ʲ(this.byJ);
    localot.ʲ(this);
  }
  
  public void onStop()
  {
    ot localot = xa();
    localot.ː(this);
    localot.ː(this.byJ);
    super.onStop();
  }
  
  public vn wZ()
  {
    return vn.ᵋ(this);
  }
  
  public ot xa()
  {
    return vf.tH();
  }
  
  class if
  {
    private if() {}
    
    private void logout()
    {
      Intent localIntent1 = new Intent(ado.this, LaunchActivity.class);
      localIntent1.setFlags(67141632);
      Intent localIntent2 = new Intent();
      localIntent2.setAction("action_logout");
      ado.this.setResult(-1, localIntent2);
      ado.this.finish();
      ado.this.startActivity(localIntent1);
    }
    
    public void onEventMainThread(aaj paramaaj)
    {
      switch (ado.1.byK[paramaaj.ordinal()])
      {
      default: 
        return;
      case 1: 
        ɬ.ˋ(new IllegalStateException("Received OnUnauthroizedLogout event"));
        Toast.makeText(ado.this, 2131099794, 1).show();
        logout();
        return;
      }
      Toast.makeText(ado.this, 2131099684, 1).show();
      logout();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ado
 * JD-Core Version:    0.7.0.1
 */