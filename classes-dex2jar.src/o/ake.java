package o;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.if;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import tv.periscope.android.api.PsUser;

public class ake
  extends ado
  implements View.OnClickListener
{
  private ajq bIg;
  private adj bIh;
  private String bIi;
  private aad bnA;
  private alo byD;
  
  private void ƚ(String paramString)
  {
    PsUser localPsUser = this.bnA.נּ(paramString);
    if (localPsUser == null)
    {
      wZ().ว(paramString);
      this.bIi = paramString;
      return;
    }
    ˏ(localPsUser);
  }
  
  private void ˏ(PsUser paramPsUser)
  {
    this.bIh.ƚ(paramPsUser.id);
    this.bIi = null;
  }
  
  public void onBackPressed()
  {
    if (this.bIh.wY()) {
      return;
    }
    super.onBackPressed();
    overridePendingTransition(2130968586, 2130968591);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903127);
    this.bnA = vf.tI();
    this.byD = ((alo)findViewById(2131427483));
    this.bIh = new adj(this, wZ(), this.bnA, this.byD);
    xa().ʲ(this.bIh);
    this.byD.setDelegate(this.bIh);
    paramBundle = (RecyclerView)findViewById(2131427423);
    paramBundle.setLayoutManager(new LinearLayoutManager(this));
    Object localObject1 = new ajq(new aag(this.bnA), this.bIh);
    paramBundle.setAdapter((RecyclerView.if)localObject1);
    this.bIg = ((ajq)localObject1);
    amt localamt = (amt)findViewById(2131427472);
    localamt.findViewById(2131427516).setOnClickListener(this);
    Object localObject2 = null;
    String str = null;
    Intent localIntent = getIntent();
    localObject1 = localObject2;
    paramBundle = str;
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      localObject1 = localObject2;
      paramBundle = str;
      if (localBundle != null)
      {
        localObject2 = (aah)localBundle.getSerializable("e_user_type");
        str = localBundle.getString("e_user_id");
        localObject1 = str;
        paramBundle = (Bundle)localObject2;
        if (!TextUtils.isEmpty(str))
        {
          this.bIg.ﯧ(str);
          paramBundle = (Bundle)localObject2;
          localObject1 = str;
        }
      }
    }
    localObject2 = paramBundle;
    if (paramBundle == null) {
      localObject2 = aah.bsL;
    }
    this.bIg.ˊ((aah)localObject2);
    switch (1.bsG[localObject2.ordinal()])
    {
    default: 
      break;
    case 1: 
    case 2: 
    case 3: 
      localamt.setTitle(2131099852);
      break;
    case 4: 
      localamt.setTitle(2131099790);
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        wZ().tT();
      } else {
        wZ().ᓑ((String)localObject1);
      }
      break;
    case 5: 
      localamt.setTitle(2131099792);
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        wZ().tU();
      } else {
        wZ().ᒼ((String)localObject1);
      }
      break;
    case 6: 
      localamt.setTitle(2131099690);
      wZ().tV();
    }
    paramBundle = localIntent.getStringExtra("e_sheet_user_id");
    if (paramBundle != null) {
      ƚ(paramBundle);
    }
  }
  
  protected void onDestroy()
  {
    xa().ː(this.bIh);
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
        wZ().tS();
        return;
      }
      break;
    case 3: 
      paramaai = ((ww)paramaai.data).boA;
      if ((this.bIi != null) && (this.bIi.equals(paramaai.id))) {
        ˏ(paramaai);
      }
      break;
    }
  }
  
  public void onEventMainThread(aak paramaak)
  {
    switch (1.brV[paramaak.ordinal()])
    {
    default: 
      return;
    }
    this.bIg.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ake
 * JD-Core Version:    0.7.0.1
 */