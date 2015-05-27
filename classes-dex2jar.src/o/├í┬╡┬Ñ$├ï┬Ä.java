package o;

import java.util.Iterator;
import java.util.Map.Entry;

final class ᵥ$ˎ
  implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
{
  int mIndex;
  int ー;
  boolean ヽ = false;
  
  ᵥ$ˎ(ᵥ paramᵥ)
  {
    this.ー = (paramᵥ.ʴ() - 1);
    this.mIndex = -1;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!this.ヽ) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    if (!(paramObject instanceof Map.Entry)) {
      return false;
    }
    paramObject = (Map.Entry)paramObject;
    return (ᵌ.equal(paramObject.getKey(), this.ゝ.ˏ(this.mIndex, 0))) && (ᵌ.equal(paramObject.getValue(), this.ゝ.ˏ(this.mIndex, 1)));
  }
  
  public K getKey()
  {
    if (!this.ヽ) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return this.ゝ.ˏ(this.mIndex, 0);
  }
  
  public V getValue()
  {
    if (!this.ヽ) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return this.ゝ.ˏ(this.mIndex, 1);
  }
  
  public boolean hasNext()
  {
    return this.mIndex < this.ー;
  }
  
  public final int hashCode()
  {
    if (!this.ヽ) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    Object localObject1 = this.ゝ.ˏ(this.mIndex, 0);
    Object localObject2 = this.ゝ.ˏ(this.mIndex, 1);
    int i;
    if (localObject1 == null) {
      i = 0;
    } else {
      i = localObject1.hashCode();
    }
    int j;
    if (localObject2 == null) {
      j = 0;
    } else {
      j = localObject2.hashCode();
    }
    return i ^ j;
  }
  
  public void remove()
  {
    if (!this.ヽ) {
      throw new IllegalStateException();
    }
    this.ゝ.ʿ(this.mIndex);
    this.mIndex -= 1;
    this.ー -= 1;
    this.ヽ = false;
  }
  
  public V setValue(V paramV)
  {
    if (!this.ヽ) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return this.ゝ.ˊ(this.mIndex, paramV);
  }
  
  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
  
  public Map.Entry<K, V> ᐣ()
  {
    this.mIndex += 1;
    this.ヽ = true;
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¥.Ë
 * JD-Core Version:    0.7.0.1
 */