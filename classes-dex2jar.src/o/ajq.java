package o;

import android.support.v7.widget.RecyclerView.if;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import tv.periscope.android.api.PsUser;

public class ajq
  extends RecyclerView.if<akc>
{
  private final aag bHI;
  private final akd bHJ;
  private final akb bHK;
  
  public ajq(aag paramaag, akd paramakd, akb paramakb)
  {
    this.bHI = paramaag;
    this.bHJ = paramakd;
    this.bHK = paramakb;
  }
  
  public ajq(aag paramaag, amw paramamw)
  {
    this(paramaag, ˊ(paramamw), new akb());
  }
  
  private static akd ˊ(amw paramamw)
  {
    return new ajr(paramamw);
  }
  
  public int getItemCount()
  {
    return this.bHI.vc();
  }
  
  public akc ʽ(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    }
    return new akc(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903126, paramViewGroup, false), this.bHJ, 2131427580);
  }
  
  public void ˊ(aah paramaah)
  {
    this.bHI.ˊ(paramaah);
  }
  
  public void ˊ(akc paramakc, int paramInt)
  {
    PsUser localPsUser = ٳ(paramInt);
    this.bHK.ˊ(paramakc, localPsUser, paramInt);
  }
  
  public PsUser ٳ(int paramInt)
  {
    return this.bHI.ﾝ(paramInt);
  }
  
  public void ﯧ(String paramString)
  {
    this.bHI.ﯧ(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajq
 * JD-Core Version:    0.7.0.1
 */