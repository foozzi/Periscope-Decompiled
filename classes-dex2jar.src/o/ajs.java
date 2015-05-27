package o;

import android.content.Context;
import android.support.v7.widget.RecyclerView.if;
import android.support.v7.widget.RecyclerView.ˑ;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import tv.periscope.android.api.PsUser;

abstract class ajs<Holder extends RecyclerView.ˑ, Binder extends amx>
  extends RecyclerView.if
{
  protected final zo bHA;
  private final ajh bHM;
  protected final amw byZ;
  protected final Context mContext;
  
  public ajs(Context paramContext, zo paramzo, amw paramamw, ajh paramajh)
  {
    this.mContext = paramContext;
    this.bHA = paramzo;
    this.byZ = paramamw;
    this.bHM = paramajh;
  }
  
  protected abstract Binder Ao();
  
  protected Object getItem(int paramInt)
  {
    return this.bHA.ﾅ(paramInt);
  }
  
  public int getItemCount()
  {
    return this.bHA.vc();
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((getItem(paramInt) instanceof aad.if))
    {
      if (paramInt == 0) {
        return 3;
      }
      return 1;
    }
    return 2;
  }
  
  protected abstract Holder ʻ(ViewGroup paramViewGroup);
  
  public void ˊ(RecyclerView.ˑ paramˑ, int paramInt)
  {
    switch (paramˑ.getItemViewType())
    {
    default: 
      return;
    case 1: 
    case 3: 
      localObject = (aad.if)getItem(paramInt);
      this.bHM.ˊ((aji)paramˑ, (aad.if)localObject, paramInt);
      return;
    }
    Object localObject = (PsUser)getItem(paramInt);
    Ao().ˊ(paramˑ, localObject, paramInt);
  }
  
  public RecyclerView.ˑ ˎ(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 3: 
      return new aji(LayoutInflater.from(this.mContext).inflate(2130903099, paramViewGroup, false));
    case 1: 
      return new aji(LayoutInflater.from(this.mContext).inflate(2130903098, paramViewGroup, false));
    }
    return ʻ(paramViewGroup);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajs
 * JD-Core Version:    0.7.0.1
 */