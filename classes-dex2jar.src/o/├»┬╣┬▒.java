package o;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class ﹱ<T>
  implements ﺭ<T>
{
  private final Collection<? extends ﺭ<T>> gU;
  private String id;
  
  @SafeVarargs
  public ﹱ(ﺭ<T>... paramVarArgs)
  {
    if (paramVarArgs.length < 1) {
      throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }
    this.gU = Arrays.asList(paramVarArgs);
  }
  
  public String getId()
  {
    if (this.id == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = this.gU.iterator();
      while (localIterator.hasNext()) {
        localStringBuilder.append(((ﺭ)localIterator.next()).getId());
      }
      this.id = localStringBuilder.toString();
    }
    return this.id;
  }
  
  public ڔ<T> ˊ(ڔ<T> paramڔ, int paramInt1, int paramInt2)
  {
    Object localObject = paramڔ;
    Iterator localIterator = this.gU.iterator();
    while (localIterator.hasNext())
    {
      ڔ localڔ = ((ﺭ)localIterator.next()).ˊ((ڔ)localObject, paramInt1, paramInt2);
      if ((localObject != null) && (!localObject.equals(paramڔ)) && (!localObject.equals(localڔ))) {
        ((ڔ)localObject).recycle();
      }
      localObject = localڔ;
    }
    return localObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹±
 * JD-Core Version:    0.7.0.1
 */