package o;

import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.api.PsUser;

public class akb
  implements amx<akc, PsUser>
{
  public void ˊ(akc paramakc, PsUser paramPsUser, int paramInt)
  {
    paramakc.boA = paramPsUser;
    paramakc.bHD.setText(paramPsUser.bpy);
    if ((paramPsUser.id.equals(vf.tI().vx())) || (paramPsUser.bpF) || (vf.tI().רּ(paramPsUser.id))) {
      paramakc.bIf.setVisibility(8);
    } else {
      paramakc.bIf.setVisibility(0);
    }
    paramakc.bIf.setChecked(ˎ(paramPsUser));
    String str = paramPsUser.uj();
    if (anw.ᐨ(str))
    {
      ᓲ.ˌ(paramakc.bHB.getContext()).ʻ(str).ˊ(abe.bvo).ﹷ(2130837567).ץ().ˊ(paramakc.bHB);
      return;
    }
    akl.ˊ(paramakc.bHB, paramPsUser.bpy, paramInt + 1);
  }
  
  protected boolean ˎ(PsUser paramPsUser)
  {
    return paramPsUser.bpE;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akb
 * JD-Core Version:    0.7.0.1
 */