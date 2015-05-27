package o;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class gs$ˋ
  implements WildcardType, Serializable
{
  private final Type lowerBound;
  private final Type upperBound;
  
  public gs$ˋ(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    boolean bool;
    if (paramArrayOfType2.length <= 1) {
      bool = true;
    } else {
      bool = false;
    }
    gr.יּ(bool);
    if (paramArrayOfType1.length == 1) {
      bool = true;
    } else {
      bool = false;
    }
    gr.יּ(bool);
    if (paramArrayOfType2.length == 1)
    {
      gr.יּ(paramArrayOfType2[0]);
      gs.access$000(paramArrayOfType2[0]);
      if (paramArrayOfType1[0] == Object.class) {
        bool = true;
      } else {
        bool = false;
      }
      gr.יּ(bool);
      this.lowerBound = gs.ᐝ(paramArrayOfType2[0]);
      this.upperBound = Object.class;
      return;
    }
    gr.יּ(paramArrayOfType1[0]);
    gs.access$000(paramArrayOfType1[0]);
    this.lowerBound = null;
    this.upperBound = gs.ᐝ(paramArrayOfType1[0]);
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof WildcardType)) && (gs.equals(this, (WildcardType)paramObject));
  }
  
  public Type[] getLowerBounds()
  {
    if (this.lowerBound != null) {
      return new Type[] { this.lowerBound };
    }
    return gs.EMPTY_TYPE_ARRAY;
  }
  
  public Type[] getUpperBounds()
  {
    return new Type[] { this.upperBound };
  }
  
  public int hashCode()
  {
    int i;
    if (this.lowerBound != null) {
      i = this.lowerBound.hashCode() + 31;
    } else {
      i = 1;
    }
    return i ^ this.upperBound.hashCode() + 31;
  }
  
  public String toString()
  {
    if (this.lowerBound != null) {
      return "? super " + gs.typeToString(this.lowerBound);
    }
    if (this.upperBound == Object.class) {
      return "?";
    }
    return "? extends " + gs.typeToString(this.upperBound);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gs.Ë
 * JD-Core Version:    0.7.0.1
 */