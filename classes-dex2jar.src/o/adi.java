package o;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class adi
  extends Activity
  implements View.OnClickListener
{
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
    case 2131427520: 
      vi.ˊ(vi.if.blz);
      paramView = new Intent(this, adq.class);
      paramView.putExtra("e_title", getString(2131099679));
      paramView.putExtra("e_url", getString(2131099680));
      startActivity(paramView, ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
      return;
    case 2131427522: 
      vi.ˊ(vi.if.bly);
      paramView = new Intent(this, adq.class);
      paramView.putExtra("e_title", getString(2131099853));
      paramView.putExtra("e_url", getString(2131099854));
      startActivity(paramView, ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
      return;
    case 2131427521: 
      vi.ˊ(vi.if.blx);
      paramView = new Intent(this, adq.class);
      paramView.putExtra("e_title", getString(2131099893));
      paramView.putExtra("e_url", getString(2131099895));
      startActivity(paramView, ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
      return;
    case 2131427516: 
      onBackPressed();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903097);
    ((amt)findViewById(2131427472)).setTitle(2131099802);
    findViewById(2131427520).setOnClickListener(this);
    findViewById(2131427521).setOnClickListener(this);
    findViewById(2131427522).setOnClickListener(this);
    findViewById(2131427516).setOnClickListener(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adi
 * JD-Core Version:    0.7.0.1
 */