package o;

import java.util.Map;

class ᖮ
  extends ᵥ<K, V>
{
  ᖮ(ᒢ paramᒢ) {}
  
  protected int ʴ()
  {
    return this.ᓑ.Ị;
  }
  
  protected void ʿ(int paramInt)
  {
    this.ᓑ.removeAt(paramInt);
  }
  
  protected Map<K, V> ˆ()
  {
    return this.ᓑ;
  }
  
  protected void ˇ()
  {
    this.ᓑ.clear();
  }
  
  protected V ˊ(int paramInt, V paramV)
  {
    return this.ᓑ.setValueAt(paramInt, paramV);
  }
  
  protected void ˊ(K paramK, V paramV)
  {
    this.ᓑ.put(paramK, paramV);
  }
  
  protected int ˋ(Object paramObject)
  {
    return this.ᓑ.indexOfKey(paramObject);
  }
  
  protected int ˎ(Object paramObject)
  {
    return this.ᓑ.indexOfValue(paramObject);
  }
  
  protected Object ˏ(int paramInt1, int paramInt2)
  {
    return this.ᓑ.ﭡ[((paramInt1 << 1) + paramInt2)];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á®
 * JD-Core Version:    0.7.0.1
 */