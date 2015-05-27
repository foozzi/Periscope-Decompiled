package o;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.api.PsUser;

public class ajo
  implements amx<ajp, PsUser>
{
  private final zo bHA;
  
  public ajo(zo paramzo)
  {
    this.bHA = paramzo;
  }
  
  public void ˊ(ajp paramajp, PsUser paramPsUser, int paramInt)
  {
    Object localObject = paramajp.bB.getResources();
    paramajp.boA = paramPsUser;
    paramajp.bHD.setText(paramPsUser.bpy);
    if (TextUtils.isEmpty(paramPsUser.description))
    {
      paramajp.bHF.setVisibility(8);
    }
    else
    {
      paramajp.bHF.setVisibility(0);
      paramajp.bHF.setText(paramPsUser.description);
    }
    if (paramPsUser.bpI) {
      paramajp.bHH.setVisibility(0);
    } else {
      paramajp.bHH.setVisibility(8);
    }
    aah localaah = this.bHA.Ị(paramPsUser.id);
    if (localaah == null)
    {
      paramajp.bHE.setText("");
    }
    else
    {
      switch (1.bsG[localaah.ordinal()])
      {
      default: 
        break;
      case 1: 
      case 2: 
        paramajp.bHC.setVisibility(8);
        paramajp.bHE.setText(((Resources)localObject).getString(2131099778, new Object[] { akn.ˊ((Resources)localObject, paramPsUser.bpB, true) }));
        break;
      case 3: 
        paramajp.bHC.setVisibility(8);
        paramajp.bHE.setText(((Resources)localObject).getString(2131099781));
        break;
      }
      paramajp.bHC.setVisibility(0);
      paramajp.bHE.setText(akn.ˊ((Resources)localObject, paramPsUser.uk(), false));
    }
    paramajp.bHG.setChecked(ˎ(paramPsUser));
    localObject = paramPsUser.uj();
    if (anw.ᐨ((CharSequence)localObject))
    {
      ᓲ.ˌ(paramajp.bB.getContext()).ʻ((String)localObject).ˊ(abe.bvo).ﹷ(2130837567).ץ().ˊ(paramajp.bHB);
      return;
    }
    akl.ˊ(paramajp.bHB, paramPsUser.bpy, paramInt + 1);
  }
  
  protected boolean ˎ(PsUser paramPsUser)
  {
    return paramPsUser.bpE;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajo
 * JD-Core Version:    0.7.0.1
 */