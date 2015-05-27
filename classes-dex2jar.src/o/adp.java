package o;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

public class adp
  extends ado
  implements amh.if, View.OnClickListener
{
  private acz bxX;
  private amh byM;
  private amh byN;
  private amh byO;
  private amh byP;
  private amh byQ;
  private amt byR;
  
  private void setUp()
  {
    this.byR = ((amt)findViewById(2131427472));
    this.byR.findViewById(2131427516).setOnClickListener(this);
    this.byR.setTitle(2131099877);
    this.byM = ((amh)findViewById(2131427571));
    this.byN = ((amh)findViewById(2131427572));
    this.byO = ((amh)findViewById(2131427573));
    this.byP = ((amh)findViewById(2131427574));
    this.byQ = ((amh)findViewById(2131427575));
  }
  
  private void xb()
  {
    acy localacy = this.bxX.wS();
    this.byM.setChecked(localacy.byh);
    this.byN.setChecked(localacy.byi);
    this.byO.setChecked(localacy.byj);
    this.byP.setChecked(localacy.byk);
    this.byQ.setChecked(localacy.byl);
    wZ().tZ();
  }
  
  private void xc()
  {
    this.byM.setOnCheckedChangeListener(this);
    this.byN.setOnCheckedChangeListener(this);
    this.byO.setOnCheckedChangeListener(this);
    this.byP.setOnCheckedChangeListener(this);
    this.byQ.setOnCheckedChangeListener(this);
  }
  
  private void xd()
  {
    this.bxX.ˊ(new acy(this.byM.isChecked(), this.byN.isChecked(), this.byO.isChecked(), this.byP.isChecked(), this.byQ.isChecked()));
  }
  
  private void ˋ(amh paramamh, boolean paramBoolean)
  {
    switch (paramamh.getId())
    {
    default: 
      break;
    case 2131427571: 
      if (paramBoolean) {
        paramamh = vi.if.blI;
      } else {
        paramamh = vi.if.blJ;
      }
      break;
    case 2131427572: 
      if (paramBoolean) {
        paramamh = vi.if.blK;
      } else {
        paramamh = vi.if.blL;
      }
      break;
    case 2131427573: 
      if (paramBoolean) {
        paramamh = vi.if.blG;
      } else {
        paramamh = vi.if.blH;
      }
      break;
    case 2131427574: 
      if (paramBoolean) {
        paramamh = vi.if.blM;
      } else {
        paramamh = vi.if.blN;
      }
      break;
    case 2131427575: 
      if (paramBoolean) {
        paramamh = vi.if.blE;
      } else {
        paramamh = vi.if.blF;
      }
      break;
    }
    paramamh = null;
    if (paramamh != null) {
      vi.ˊ(paramamh);
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    overridePendingTransition(2130968586, 2130968591);
  }
  
  public void onClick(View paramView)
  {
    finish();
    overridePendingTransition(2130968586, 2130968591);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bxX = new acz(this);
    setContentView(2130903113);
    setUp();
    xb();
    xc();
  }
  
  public void onEventMainThread(aai paramaai)
  {
    switch (1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
    case 1: 
      if (!paramaai.vA())
      {
        Toast.makeText(this, 2131099776, 0).show();
        return;
      }
      break;
    case 2: 
      if (paramaai.vA())
      {
        paramaai = (wu)paramaai.data;
        this.byQ.setChecked(paramaai.boz);
        this.byO.setChecked(paramaai.boy);
        xd();
      }
      break;
    }
  }
  
  public void ˊ(amh paramamh, boolean paramBoolean)
  {
    ˋ(paramamh, paramBoolean);
    xd();
    wZ().ʼ(this.byO.isChecked(), this.byQ.isChecked());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adp
 * JD-Core Version:    0.7.0.1
 */