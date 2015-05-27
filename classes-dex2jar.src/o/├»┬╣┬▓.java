package o;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class ﹲ
{
  private DataSetObservable ἱ = new DataSetObservable();
  
  public abstract int getCount();
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.ἱ.registerObserver(paramDataSetObserver);
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.ἱ.unregisterObserver(paramDataSetObserver);
  }
  
  public int ʻ(Object paramObject)
  {
    return -1;
  }
  
  public void ʼ(View paramView) {}
  
  public void ʽ(View paramView) {}
  
  public Object ˊ(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }
  
  public Object ˊ(ViewGroup paramViewGroup, int paramInt)
  {
    return ˊ(paramViewGroup, paramInt);
  }
  
  public void ˊ(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public void ˊ(View paramView, int paramInt, Object paramObject)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }
  
  public void ˊ(ViewGroup paramViewGroup)
  {
    ʼ(paramViewGroup);
  }
  
  public void ˊ(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    ˊ(paramViewGroup, paramInt, paramObject);
  }
  
  public void ˋ(View paramView, int paramInt, Object paramObject) {}
  
  public void ˋ(ViewGroup paramViewGroup)
  {
    ʽ(paramViewGroup);
  }
  
  public void ˋ(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    ˋ(paramViewGroup, paramInt, paramObject);
  }
  
  public abstract boolean ˋ(View paramView, Object paramObject);
  
  public float ˑ(int paramInt)
  {
    return 1.0F;
  }
  
  public Parcelable ᐡ()
  {
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹²
 * JD-Core Version:    0.7.0.1
 */