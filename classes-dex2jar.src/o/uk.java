package o;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class uk
  implements uz
{
  private final Deflater ZL;
  private boolean closed;
  private final uh sink;
  
  uk(uh paramuh, Deflater paramDeflater)
  {
    if (paramuh == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramDeflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    this.sink = paramuh;
    this.ZL = paramDeflater;
  }
  
  public uk(uz paramuz, Deflater paramDeflater)
  {
    this(up.ˊ(paramuz), paramDeflater);
  }
  
  @IgnoreJRERequirement
  private void ᕁ(boolean paramBoolean)
  {
    ue localue = this.sink.dS();
    for (;;)
    {
      ux localux = localue.ľ(1);
      int i;
      if (paramBoolean) {
        i = this.ZL.deflate(localux.fw, localux.limit, 2048 - localux.limit, 2);
      } else {
        i = this.ZL.deflate(localux.fw, localux.limit, 2048 - localux.limit);
      }
      if (i > 0)
      {
        localux.limit += i;
        localue.size += i;
        this.sink.eh();
      }
      else if (this.ZL.needsInput())
      {
        if (localux.pos == localux.limit)
        {
          localue.ZG = localux.et();
          uy.ˋ(localux);
        }
        return;
      }
    }
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    Object localObject2 = null;
    try
    {
      en();
    }
    catch (Throwable localThrowable1) {}
    Object localObject1;
    try
    {
      this.ZL.end();
      localObject1 = localThrowable1;
    }
    catch (Throwable localThrowable2)
    {
      localObject1 = localThrowable1;
      if (localThrowable1 == null) {
        localObject1 = localThrowable2;
      }
    }
    Object localObject3;
    try
    {
      this.sink.close();
      localObject3 = localObject1;
    }
    catch (Throwable localThrowable3)
    {
      localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = localThrowable3;
      }
    }
    this.closed = true;
    if (localObject3 != null) {
      vd.ʻ(localObject3);
    }
  }
  
  void en()
  {
    this.ZL.finish();
    ᕁ(false);
  }
  
  public void flush()
  {
    ᕁ(true);
    this.sink.flush();
  }
  
  public vb timeout()
  {
    return this.sink.timeout();
  }
  
  public String toString()
  {
    return "DeflaterSink(" + this.sink + ")";
  }
  
  public void write(ue paramue, long paramLong)
  {
    vd.checkOffsetAndCount(paramue.size, 0L, paramLong);
    while (paramLong > 0L)
    {
      ux localux = paramue.ZG;
      int i = (int)Math.min(paramLong, localux.limit - localux.pos);
      this.ZL.setInput(localux.fw, localux.pos, i);
      ᕁ(false);
      paramue.size -= i;
      localux.pos += i;
      if (localux.pos == localux.limit)
      {
        paramue.ZG = localux.et();
        uy.ˋ(localux);
      }
      paramLong -= i;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uk
 * JD-Core Version:    0.7.0.1
 */