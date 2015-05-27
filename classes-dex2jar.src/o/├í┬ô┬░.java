package o;

import android.content.Context;

public class ᓰ<ModelType, DataType, ResourceType>
  extends ເ<ModelType, DataType, ResourceType, ResourceType>
{
  private final ᕻ.ˋ dT;
  private final Class<ResourceType> eA;
  private final ɽ<ModelType, DataType> ey;
  private final Class<DataType> ez;
  
  ᓰ(Context paramContext, ᓲ paramᓲ, Class<ModelType> paramClass, ɽ<ModelType, DataType> paramɽ, Class<DataType> paramClass1, Class<ResourceType> paramClass2, ᐜ paramᐜ, ধ paramধ, ᕻ.ˋ paramˋ)
  {
    super(paramContext, paramClass, ˊ(paramᓲ, paramɽ, paramClass1, paramClass2, Ү.ٳ()), paramClass2, paramᓲ, paramᐜ, paramধ);
    this.ey = paramɽ;
    this.ez = paramClass1;
    this.eA = paramClass2;
    this.dT = paramˋ;
  }
  
  private static <A, T, Z, R> ᔁ<A, T, Z, R> ˊ(ᓲ paramᓲ, ɽ<A, T> paramɽ, Class<T> paramClass, Class<Z> paramClass1, ғ<Z, R> paramғ)
  {
    return new ᔀ(paramɽ, paramғ, paramᓲ.ˋ(paramClass, paramClass1));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á°
 * JD-Core Version:    0.7.0.1
 */