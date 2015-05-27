package o;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class ᵛ<K, V>
{
  private int hitCount;
  private int size;
  private final LinkedHashMap<K, V> ᴲ;
  private int ᴾ;
  private int ᵁ;
  private int ᵃ;
  private int ᵅ;
  private int ᵉ;
  
  public ᵛ(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    this.ᴾ = paramInt;
    this.ᴲ = new LinkedHashMap(0, 0.75F, true);
  }
  
  private int ˋ(K paramK, V paramV)
  {
    int i = sizeOf(paramK, paramV);
    if (i < 0) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return i;
  }
  
  protected V create(K paramK)
  {
    return null;
  }
  
  protected void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      localObject1 = this.ᴲ.get(paramK);
      if (localObject1 != null)
      {
        this.hitCount += 1;
        return localObject1;
      }
      this.ᵉ += 1;
    }
    finally {}
    Object localObject1 = create(paramK);
    if (localObject1 == null) {
      return null;
    }
    Object localObject2;
    try
    {
      this.ᵃ += 1;
      localObject2 = this.ᴲ.put(paramK, localObject1);
      if (localObject2 != null) {
        this.ᴲ.put(paramK, localObject2);
      } else {
        this.size += ˋ(paramK, localObject1);
      }
    }
    finally {}
    if (localObject2 != null)
    {
      entryRemoved(false, paramK, localObject1, localObject2);
      return localObject2;
    }
    trimToSize(this.ᴾ);
    return localObject1;
  }
  
  public final V put(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    Object localObject;
    try
    {
      this.ᵁ += 1;
      this.size += ˋ(paramK, paramV);
      localObject = this.ᴲ.put(paramK, paramV);
      if (localObject != null) {
        this.size -= ˋ(paramK, localObject);
      }
    }
    finally {}
    if (localObject != null) {
      entryRemoved(false, paramK, localObject, paramV);
    }
    trimToSize(this.ᴾ);
    return localObject;
  }
  
  protected int sizeOf(K paramK, V paramV)
  {
    return 1;
  }
  
  public final String toString()
  {
    for (;;)
    {
      try
      {
        i = this.hitCount + this.ᵉ;
        if (i != 0)
        {
          i = this.hitCount * 100 / i;
          String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(this.ᴾ), Integer.valueOf(this.hitCount), Integer.valueOf(this.ᵉ), Integer.valueOf(i) });
          return str;
        }
      }
      finally {}
      int i = 0;
    }
  }
  
  public void trimToSize(int paramInt)
  {
    for (;;)
    {
      Object localObject3;
      try
      {
        if ((this.size < 0) || ((this.ᴲ.isEmpty()) && (this.size != 0))) {
          throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
        }
        if (this.size > paramInt)
        {
          boolean bool = this.ᴲ.isEmpty();
          if (!bool) {}
        }
        else
        {
          return;
        }
        localObject3 = (Map.Entry)this.ᴲ.entrySet().iterator().next();
        Object localObject1 = ((Map.Entry)localObject3).getKey();
        localObject3 = ((Map.Entry)localObject3).getValue();
        this.ᴲ.remove(localObject1);
        this.size -= ˋ(localObject1, localObject3);
        this.ᵅ += 1;
      }
      finally {}
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */