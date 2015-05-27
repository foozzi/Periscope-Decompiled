package o;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ˑ;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public abstract class aef<T extends aeh>
  extends RecyclerView.ˑ
{
  protected final ady bzc;
  
  public aef(View paramView, ady paramady)
  {
    super(paramView);
    this.bzc = paramady;
  }
  
  public abstract void ˊ(T paramT);
  
  public static class aux
    extends aef<aeh.aux>
  {
    private final TextView bzS;
    private final TextView bzT;
    private final TextView bzU;
    private final TextView bzV;
    
    public aux(View paramView, ady paramady)
    {
      super(paramady);
      paramady = paramView.findViewById(2131427428);
      ((TextView)paramady.findViewById(2131427577)).setText(2131099888);
      this.bzT = ((TextView)paramady.findViewById(2131427576));
      paramady = paramView.findViewById(2131427429);
      ((TextView)paramady.findViewById(2131427577)).setText(2131099890);
      this.bzU = ((TextView)paramady.findViewById(2131427576));
      paramady = paramView.findViewById(2131427430);
      ((TextView)paramady.findViewById(2131427577)).setText(2131099889);
      this.bzV = ((TextView)paramady.findViewById(2131427576));
      paramView = paramView.findViewById(2131427431);
      ((TextView)paramView.findViewById(2131427577)).setText(2131099887);
      this.bzS = ((TextView)paramView.findViewById(2131427576));
    }
    
    public static aux ʻ(Context paramContext, ViewGroup paramViewGroup, ady paramady)
    {
      return new aux(LayoutInflater.from(paramContext).inflate(2130903073, paramViewGroup, false), paramady);
    }
    
    private String ˁ(long paramLong)
    {
      long l1 = TimeUnit.SECONDS.toHours(paramLong);
      long l2 = paramLong - TimeUnit.HOURS.toSeconds(1L) * l1;
      paramLong = TimeUnit.SECONDS.toMinutes(l2);
      l2 -= TimeUnit.MINUTES.toSeconds(1L) * paramLong;
      if (l1 > 0L) {
        return String.format("%02d:%02d:%02d", new Object[] { Long.valueOf(l1), Long.valueOf(paramLong), Long.valueOf(l2) });
      }
      return String.format("%02d:%02d", new Object[] { Long.valueOf(paramLong), Long.valueOf(l2) });
    }
    
    public void ˊ(aeh.aux paramaux)
    {
      paramaux = paramaux.xF();
      this.bzS.setText(ˁ(paramaux.bAn.ˊ(TimeUnit.SECONDS)));
      if (paramaux.bAm.Cd() > 0.0F) {
        this.bzT.setText(String.format("%.1f%%", new Object[] { Float.valueOf(paramaux.bAm.Cd() * 100.0F) }));
      } else {
        this.bzT.setText(2131099649);
      }
      this.bzU.setText(akn.ˊ(this.bB.getResources(), paramaux.bAm.BY(), true));
      long l;
      if (paramaux.bAm.BY() > 0) {
        l = paramaux.bAm.BX();
      } else {
        l = 0L;
      }
      this.bzV.setText(ˁ(l));
    }
  }
  
  public static class if
    extends aef<aeh.if>
    implements View.OnClickListener
  {
    private final alh bzE;
    private final View bzF;
    private adv bzG;
    private List<adv> bzH;
    
    public if(View paramView, ady paramady)
    {
      super(paramady);
      this.bzE = ((alh)paramView.findViewById(2131427419));
      this.bzE.setOnClickListener(this);
      this.bzF = paramView.findViewById(2131427418);
      this.bzF.setOnClickListener(this);
    }
    
    private void xw()
    {
      this.bzE.setLabel(this.bzG.ʲ(this.bB.getContext()).toUpperCase(), this.bzG.xj());
    }
    
    public static if ˊ(Context paramContext, ViewGroup paramViewGroup, ady paramady)
    {
      return new if(LayoutInflater.from(paramContext).inflate(2130903068, paramViewGroup, false), paramady);
    }
    
    private void ˊ(adv paramadv)
    {
      if (paramadv.execute()) {
        xw();
      }
    }
    
    public void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      default: 
        return;
      case 2131427418: 
        this.bzc.י(this.bzH);
        return;
      }
      ˊ(this.bzG);
    }
    
    public void ˊ(aeh.if paramif)
    {
      paramif = new ArrayList(paramif.xz());
      this.bzG = ((adv)paramif.remove(0));
      this.bzH = paramif;
      xw();
      if (this.bzH.isEmpty())
      {
        this.bzF.setVisibility(8);
        return;
      }
      this.bzF.setVisibility(0);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aef
 * JD-Core Version:    0.7.0.1
 */