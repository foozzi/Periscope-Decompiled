package o;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.aux;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import java.util.Iterator;
import java.util.List;

public class aig
  extends ﹲ
{
  private final List<aif> bFA;
  private final aln bGj;
  
  public aig(List<aif> paramList, aln paramaln)
  {
    this.bFA = paramList;
    this.bGj = paramaln;
  }
  
  public int getCount()
  {
    return this.bFA.size();
  }
  
  public void onPause()
  {
    Iterator localIterator = this.bFA.iterator();
    while (localIterator.hasNext()) {
      ((aif)localIterator.next()).zH().pause();
    }
  }
  
  public void onResume()
  {
    Iterator localIterator = this.bFA.iterator();
    while (localIterator.hasNext()) {
      ((aif)localIterator.next()).zH().resume();
    }
  }
  
  public Object ˊ(ViewGroup paramViewGroup, int paramInt)
  {
    Object localObject2 = paramViewGroup.getContext();
    aif localaif = (aif)this.bFA.get(paramInt);
    aij localaij = (aij)LayoutInflater.from((Context)localObject2).inflate(2130903102, paramViewGroup, false);
    localaij.setId(paramInt);
    localaij.setOnRefreshListener(new if(localaif, localaij));
    localaij.setColorSchemeResources(akl.bIq);
    Object localObject1 = (RecyclerView)localaij.findViewById(2131427423);
    ((RecyclerView)localObject1).setAdapter(localaif.zG());
    ((RecyclerView)localObject1).setLayoutManager(new LinearLayoutManager((Context)localObject2));
    ((RecyclerView)localObject1).setBackgroundResource(localaif.bGi);
    localObject2 = localaif.zI();
    if (localObject2 != null) {
      ((RecyclerView)localObject1).ˊ((RecyclerView.aux)localObject2);
    }
    localObject1 = (ProgressBar)localaij.findViewById(2131427534);
    ((ProgressBar)localObject1).setVisibility(0);
    this.bGj.ˊ(new ail(localaij));
    paramViewGroup.addView(localaij, 0);
    paramViewGroup = localaif.zH();
    paramViewGroup.init();
    paramViewGroup.ˊ(new aih(this, (ProgressBar)localObject1));
    return localaif;
  }
  
  public void ˊ(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeViewAt(paramInt);
    ((aif)this.bFA.remove(paramInt)).zH().destroy();
  }
  
  public boolean ˋ(View paramView, Object paramObject)
  {
    return ((aif)this.bFA.get(paramView.getId())).equals(paramObject);
  }
  
  static class if
    implements ﺩ.if, aif.if.ˊ
  {
    private final aif bGn;
    private final aij bGo;
    
    public if(aif paramaif, aij paramaij)
    {
      this.bGn = paramaif;
      this.bGo = paramaij;
    }
    
    public void zM()
    {
      this.bGo.setRefreshing(false);
    }
    
    public void ᕁ()
    {
      this.bGn.zH().ˊ(this);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aig
 * JD-Core Version:    0.7.0.1
 */