package o;

import java.util.Iterator;

final class ᵥ$if<T>
  implements Iterator<T>
{
  int mIndex;
  final int ḯ;
  int Ị;
  boolean ị = false;
  
  ᵥ$if(ᵥ paramᵥ, int paramInt)
  {
    this.ḯ = paramInt;
    this.Ị = paramᵥ.ʴ();
  }
  
  public boolean hasNext()
  {
    return this.mIndex < this.Ị;
  }
  
  public T next()
  {
    Object localObject = this.ゝ.ˏ(this.mIndex, this.ḯ);
    this.mIndex += 1;
    this.ị = true;
    return localObject;
  }
  
  public void remove()
  {
    if (!this.ị) {
      throw new IllegalStateException();
    }
    this.mIndex -= 1;
    this.Ị -= 1;
    this.ị = false;
    this.ゝ.ʿ(this.mIndex);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¥.if
 * JD-Core Version:    0.7.0.1
 */