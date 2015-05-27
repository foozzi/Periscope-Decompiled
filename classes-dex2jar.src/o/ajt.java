package o;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import tv.periscope.android.api.PsUser;

public class ajt
  extends ajs<akc, akb>
  implements Filterable
{
  private final akd bHJ;
  private final akb bHK;
  private if bHN;
  private List<PsUser> bHO;
  
  public ajt(Context paramContext, aaf paramaaf, akd paramakd, akb paramakb)
  {
    super(paramContext, paramaaf, null, new ajh());
    this.bHJ = paramakd;
    this.bHK = paramakb;
  }
  
  private int Aq()
  {
    return super.getItemCount();
  }
  
  private Object ژ(int paramInt)
  {
    return super.getItem(paramInt);
  }
  
  protected akb Ap()
  {
    return this.bHK;
  }
  
  public Filter getFilter()
  {
    if (this.bHN == null) {
      this.bHN = new if(null);
    }
    return this.bHN;
  }
  
  protected Object getItem(int paramInt)
  {
    if (this.bHO != null) {
      return this.bHO.get(paramInt);
    }
    return ژ(paramInt);
  }
  
  public int getItemCount()
  {
    if (this.bHO != null) {
      return this.bHO.size();
    }
    return Aq();
  }
  
  public akc ʼ(ViewGroup paramViewGroup)
  {
    return new akc(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903125, paramViewGroup, false), this.bHJ, 2131427599);
  }
  
  class if
    extends Filter
  {
    private if() {}
    
    protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      if (TextUtils.isEmpty(paramCharSequence))
      {
        localFilterResults.values = null;
        localFilterResults.count = ajt.ˊ(ajt.this);
        return localFilterResults;
      }
      paramCharSequence = paramCharSequence.toString().toLowerCase();
      ArrayList localArrayList = new ArrayList();
      int j = ajt.ˊ(ajt.this);
      int i = 0;
      while (i < j)
      {
        Object localObject = ajt.ˊ(ajt.this, i);
        if ((localObject instanceof PsUser))
        {
          localObject = (PsUser)localObject;
          if ((((PsUser)localObject).bpx.toLowerCase().startsWith(paramCharSequence)) || (((PsUser)localObject).bpy.toLowerCase().startsWith(paramCharSequence))) {
            localArrayList.add(localObject);
          }
        }
        i += 1;
      }
      localFilterResults.values = localArrayList;
      localFilterResults.count = localArrayList.size();
      return localFilterResults;
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      if (paramFilterResults.count == 0)
      {
        ajt.ˊ(ajt.this, Collections.emptyList());
        ajt.this.notifyDataSetChanged();
        return;
      }
      if (paramFilterResults.values == null)
      {
        ajt.ˊ(ajt.this, null);
        ajt.this.notifyDataSetChanged();
        return;
      }
      ajt.ˊ(ajt.this, (List)paramFilterResults.values);
      ajt.this.notifyDataSetChanged();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajt
 * JD-Core Version:    0.7.0.1
 */