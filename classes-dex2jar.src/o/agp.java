package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.RecyclerView.if;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

public class agp
  extends RecyclerView.if<agy>
{
  private afn bDC;
  private long bDD;
  private if bDE;
  private int bDF;
  private anu bDG;
  private Context mContext;
  private Handler mHandler;
  private ArrayList<agr> ﮂ;
  
  public agp(Context paramContext, afn paramafn)
  {
    this.mContext = paramContext;
    this.ﮂ = new ArrayList();
    this.mHandler = new Handler(Looper.getMainLooper());
    this.bDC = paramafn;
    this.bDE = new if(4);
    ﹶ(true);
  }
  
  private void ˊ(ahd paramahd, agr paramagr)
  {
    ant localant = paramagr.bxr;
    Resources localResources = this.mContext.getResources();
    paramahd.bEq = paramagr;
    paramahd.bEn.setText(localResources.getString(2131099909, new Object[] { localant.Cl() }));
    paramahd.bEo.setText(localant.du());
    paramahd.bEp.setColorFilter(akl.ˋ(localResources, localant.Ch().intValue()));
    ᓲ.ˌ(this.mContext).ʻ(localant.Cn()).ˊ(abe.bvo).ץ().ˊ(paramahd.bEp);
  }
  
  public int getItemCount()
  {
    return this.ﮂ.size();
  }
  
  public long getItemId(int paramInt)
  {
    return ((agr)this.ﮂ.get(paramInt)).id;
  }
  
  public int getItemViewType(int paramInt)
  {
    agr localagr = ʋ(paramInt);
    switch (1.bwW[localagr.bxr.Cf().ordinal()])
    {
    default: 
      break;
    case 1: 
    case 2: 
    case 3: 
      return 2;
    case 5: 
      return 3;
    }
    return 1;
  }
  
  public agr ʋ(int paramInt)
  {
    return (agr)this.ﮂ.get(paramInt);
  }
  
  public agy ʻ(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 2: 
      return new ahf(LayoutInflater.from(this.mContext).inflate(2130903089, paramViewGroup, false), this.bDC);
    case 3: 
      return new agy(LayoutInflater.from(this.mContext).inflate(2130903081, paramViewGroup, false));
    }
    return new ahd(LayoutInflater.from(this.mContext).inflate(2130903088, paramViewGroup, false), this.bDC);
  }
  
  public void ʼ(ant paramant)
  {
    switch (1.bwW[paramant.Cf().ordinal()])
    {
    default: 
      break;
    case 2: 
    case 3: 
      if (this.bDF >= 20) {
        return;
      }
      this.bDF += 1;
      if ((paramant.Cf() == anu.bNZ) && (paramant.Cf() == this.bDG))
      {
        int i = this.ﮂ.size() - 1;
        localObject = (agr)this.ﮂ.remove(i);
        agr localagr = new agr(paramant, ((agr)localObject).id);
        if ((this.bDE.size() > 0) && (!this.bDE.zx().zB()))
        {
          ang localang = ang.ˎ(((agr)localObject).id, ((agr)localObject).zA());
          this.bDE.ˊ(localang);
          localagr.Υ(((agr)localObject).zA() + 1);
          this.ﮂ.add(localagr);
          ˢ(i);
          this.bDG = paramant.Cf();
          return;
        }
      }
      break;
    }
    Object localObject = this.ﮂ;
    long l = this.bDD;
    this.bDD = (1L + l);
    ((ArrayList)localObject).add(new agr(paramant, l));
    ˤ(this.ﮂ.size());
    this.bDG = paramant.Cf();
  }
  
  public String ˈ(ant paramant)
  {
    String str = paramant.Cl();
    if (anw.isEmpty(str)) {
      return paramant.displayName();
    }
    return str;
  }
  
  public void ˊ(agy paramagy, int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    Object localObject1 = ʋ(paramInt);
    Object localObject2 = this.mContext.getResources();
    ahf localahf;
    switch (1.bwW[localObject1.bxr.Cf().ordinal()])
    {
    default: 
      break;
    case 1: 
      localahf = (ahf)paramagy;
      localahf.bB.getBackground().mutate().setColorFilter(((Resources)localObject2).getColor(2131296299), PorterDuff.Mode.SRC_ATOP);
      localahf.bEs.setText(akn.ᴗ(this.mContext.getString(2131099712, new Object[] { ((agr)localObject1).bxr.Cu() })));
      break;
    case 2: 
      localahf = (ahf)paramagy;
      paramInt = akl.ˊ((Resources)localObject2, ((agr)localObject1).bxr.Ch().intValue());
      localahf.bB.getBackground().mutate().setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      if (((agr)localObject1).bxr.Cr().intValue() > 0) {
        localahf.bEs.setText(akn.ᴗ(((Resources)localObject2).getQuantityString(2131558401, ((agr)localObject1).bxr.Cr().intValue(), new Object[] { ˈ(((agr)localObject1).bxr), akn.ˊ((Resources)localObject2, ((agr)localObject1).bxr.Cr().intValue(), true) })));
      } else {
        localahf.bEs.setText(akn.ᴗ(((Resources)localObject2).getString(2131099800, new Object[] { ˈ(((agr)localObject1).bxr) })));
      }
      localahf.bEq = ((agr)localObject1);
      break;
    case 3: 
      localahf = (ahf)paramagy;
      if (((agr)localObject1).zA() > 0) {
        paramInt = ((Resources)localObject2).getColor(2131296299);
      } else {
        paramInt = akl.ˊ((Resources)localObject2, ((agr)localObject1).bxr.Ch().intValue());
      }
      localahf.bB.getBackground().mutate().setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      localahf.bEs.setText(akn.ᴗ(this.mContext.getString(2131099723, new Object[] { ˈ(((agr)localObject1).bxr) })));
      localahf.bEq = ((agr)localObject1);
      break;
    case 4: 
      ˊ((ahd)paramagy, (agr)localObject1);
    }
    if (paramagy.bEb != null) {
      this.bDE.ˊ(paramagy.bEb);
    }
    paramagy.bB.setAlpha(((agr)localObject1).zy());
    localObject2 = new agy.if(paramagy.bB, (agr)localObject1);
    localObject1 = ang.ˎ(paramagy.getItemId(), ((agr)localObject1).zA());
    paramagy.bEb = ((ang)localObject1);
    this.bDE.ˊ((ang)localObject1, (agy.if)localObject2);
  }
  
  class if
  {
    private final int bDH;
    private final SortedMap<ang, agy.if> bDI;
    private final LinkedList<ang> bDJ;
    
    if(int paramInt)
    {
      this.bDH = paramInt;
      this.bDI = new TreeMap(new agp.ˊ());
      this.bDJ = new LinkedList();
    }
    
    public int size()
    {
      return this.bDI.size();
    }
    
    agy.if zx()
    {
      if (this.bDI.isEmpty()) {
        return null;
      }
      return (agy.if)this.bDI.get(this.bDI.lastKey());
    }
    
    void ˊ(agy.if paramif)
    {
      if (paramif.zC()) {
        agp.ˊ(agp.this).removeCallbacks(paramif);
      }
    }
    
    void ˊ(ang paramang)
    {
      paramang = (agy.if)this.bDI.remove(paramang);
      if (paramang != null)
      {
        agp.ˊ(agp.this).removeCallbacks(paramang);
        paramang.reset();
      }
    }
    
    void ˊ(ang paramang, agy.if paramif)
    {
      paramang = (agy.if)this.bDI.put(paramang, paramif);
      if (this.bDH > 0)
      {
        this.bDJ.addAll(this.bDI.keySet());
        int i = 0;
        paramang = this.bDI.values().iterator();
        while (paramang.hasNext())
        {
          int j = i;
          if (!((agy.if)paramang.next()).zB()) {
            j = i + 1;
          }
          i = j;
        }
        long l = Math.max((4500.0F * (this.bDH / i)), 300L);
        paramang = this.bDJ.descendingIterator();
        i = 0;
        while (paramang.hasNext())
        {
          Object localObject = (ang)paramang.next();
          localObject = (agy.if)this.bDI.get(localObject);
          if (i >= this.bDH)
          {
            ((agy.if)localObject).setDuration(l);
            ˊ((agy.if)localObject);
          }
          i += 1;
        }
        this.bDJ.clear();
      }
      agp.ˊ(agp.this).postDelayed(paramif, TimeUnit.SECONDS.toMillis(7L));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agp
 * JD-Core Version:    0.7.0.1
 */