package o;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.if;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.RelativeLayout;

public class ajk
  extends ado
  implements View.OnClickListener, als.if
{
  private static long bHt = 100L;
  private static String bHu = "UserSearch";
  private ajn bGs;
  private Runnable bHv;
  private als bHw;
  private EditText bHx;
  private alo byD;
  
  public void Aj()
  {
    akj.ᔉ(this.bHx);
  }
  
  public void Ak() {}
  
  public void onBackPressed()
  {
    if (this.bHw.wY()) {
      return;
    }
    super.onBackPressed();
    overridePendingTransition(2130968586, 2130968590);
  }
  
  public void onClick(View paramView)
  {
    paramView.getId();
    onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903108);
    paramBundle = (RecyclerView)findViewById(2131427423);
    paramBundle.setLayoutManager(new LinearLayoutManager(this));
    Object localObject = vf.tI();
    this.byD = ((alo)findViewById(2131427483));
    this.bHw = new adj(this, wZ(), (aad)localObject, this.byD, this);
    this.byD.setDelegate(this.bHw);
    xa().ʲ(this.bHw);
    localObject = new ajn(this, new aaa((aad)localObject), this.bHw);
    paramBundle.setAdapter((RecyclerView.if)localObject);
    this.bGs = ((ajn)localObject);
    paramBundle = (RelativeLayout)findViewById(2131427399);
    paramBundle.findViewById(2131427569).setOnClickListener(this);
    localObject = new ajl(this);
    this.bHx = ((EditText)paramBundle.findViewById(2131427570));
    this.bHx.addTextChangedListener((TextWatcher)localObject);
    this.bHv = new ajm(this);
  }
  
  protected void onDestroy()
  {
    xa().ː(this.bHw);
    super.onDestroy();
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
      this.bGs.notifyDataSetChanged();
      return;
    }
    this.bGs.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajk
 * JD-Core Version:    0.7.0.1
 */