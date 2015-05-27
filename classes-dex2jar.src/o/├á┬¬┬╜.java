package o;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;

public class ઽ<ModelType>
  extends ڏ<ModelType>
{
  private final ɽ<ModelType, InputStream> dR;
  private final ɽ<ModelType, ParcelFileDescriptor> dS;
  private final ᕻ.ˋ dT;
  
  ઽ(Class<ModelType> paramClass, ɽ<ModelType, InputStream> paramɽ, ɽ<ModelType, ParcelFileDescriptor> paramɽ1, Context paramContext, ᓲ paramᓲ, ᐜ paramᐜ, ধ paramধ, ᕻ.ˋ paramˋ)
  {
    super(paramContext, paramClass, ˊ(paramᓲ, paramɽ, paramɽ1, ĸ.class, לּ.class, null), paramᓲ, paramᐜ, paramধ);
    this.dR = paramɽ;
    this.dS = paramɽ1;
    this.dT = paramˋ;
  }
  
  private static <A, Z, R> ᔀ<A, ﾌ, Z, R> ˊ(ᓲ paramᓲ, ɽ<A, InputStream> paramɽ, ɽ<A, ParcelFileDescriptor> paramɽ1, Class<Z> paramClass, Class<R> paramClass1, ғ<Z, R> paramғ)
  {
    if ((paramɽ == null) && (paramɽ1 == null)) {
      return null;
    }
    Object localObject = paramғ;
    if (paramғ == null) {
      localObject = paramᓲ.ˊ(paramClass, paramClass1);
    }
    paramᓲ = paramᓲ.ˋ(ﾌ.class, paramClass);
    return new ᔀ(new ｲ(paramɽ, paramɽ1), (ғ)localObject, paramᓲ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.àª½
 * JD-Core Version:    0.7.0.1
 */