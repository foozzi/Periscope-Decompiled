package o;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

class τ
  implements ﮆ
{
  private final ﮆ ec;
  private final ﺭ es;
  private final ﺀ hT;
  private final ﺀ hU;
  private final ﺪ hV;
  private final ﭥ hW;
  private String hX;
  private int hY;
  private ﮆ hZ;
  private final int height;
  private final ғ hg;
  private final String id;
  private final int width;
  
  public τ(String paramString, ﮆ paramﮆ, int paramInt1, int paramInt2, ﺀ paramﺀ1, ﺀ paramﺀ2, ﺭ paramﺭ, ﺪ paramﺪ, ғ paramғ, ﭥ paramﭥ)
  {
    this.id = paramString;
    this.ec = paramﮆ;
    this.width = paramInt1;
    this.height = paramInt2;
    this.hT = paramﺀ1;
    this.hU = paramﺀ2;
    this.es = paramﺭ;
    this.hV = paramﺪ;
    this.hg = paramғ;
    this.hW = paramﭥ;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (τ)paramObject;
    if (!this.id.equals(paramObject.id)) {
      return false;
    }
    if (!this.ec.equals(paramObject.ec)) {
      return false;
    }
    if (this.height != paramObject.height) {
      return false;
    }
    if (this.width != paramObject.width) {
      return false;
    }
    int i;
    if (this.es == null) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (paramObject.es == null) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i ^ j) != 0) {
      return false;
    }
    if ((this.es != null) && (!this.es.getId().equals(paramObject.es.getId()))) {
      return false;
    }
    if (this.hU == null) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramObject.hU == null) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i ^ j) != 0) {
      return false;
    }
    if ((this.hU != null) && (!this.hU.getId().equals(paramObject.hU.getId()))) {
      return false;
    }
    if (this.hT == null) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramObject.hT == null) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i ^ j) != 0) {
      return false;
    }
    if ((this.hT != null) && (!this.hT.getId().equals(paramObject.hT.getId()))) {
      return false;
    }
    if (this.hV == null) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramObject.hV == null) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i ^ j) != 0) {
      return false;
    }
    if ((this.hV != null) && (!this.hV.getId().equals(paramObject.hV.getId()))) {
      return false;
    }
    if (this.hg == null) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramObject.hg == null) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i ^ j) != 0) {
      return false;
    }
    if ((this.hg != null) && (!this.hg.getId().equals(paramObject.hg.getId()))) {
      return false;
    }
    if (this.hW == null) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramObject.hW == null) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i ^ j) != 0) {
      return false;
    }
    return (this.hW == null) || (this.hW.getId().equals(paramObject.hW.getId()));
  }
  
  public int hashCode()
  {
    if (this.hY == 0)
    {
      this.hY = this.id.hashCode();
      this.hY = (this.hY * 31 + this.ec.hashCode());
      this.hY = (this.hY * 31 + this.width);
      this.hY = (this.hY * 31 + this.height);
      int j = this.hY;
      int i;
      if (this.hT != null) {
        i = this.hT.getId().hashCode();
      } else {
        i = 0;
      }
      this.hY = (j * 31 + i);
      j = this.hY;
      if (this.hU != null) {
        i = this.hU.getId().hashCode();
      } else {
        i = 0;
      }
      this.hY = (j * 31 + i);
      j = this.hY;
      if (this.es != null) {
        i = this.es.getId().hashCode();
      } else {
        i = 0;
      }
      this.hY = (j * 31 + i);
      j = this.hY;
      if (this.hV != null) {
        i = this.hV.getId().hashCode();
      } else {
        i = 0;
      }
      this.hY = (j * 31 + i);
      j = this.hY;
      if (this.hg != null) {
        i = this.hg.getId().hashCode();
      } else {
        i = 0;
      }
      this.hY = (j * 31 + i);
      j = this.hY;
      if (this.hW != null) {
        i = this.hW.getId().hashCode();
      } else {
        i = 0;
      }
      this.hY = (j * 31 + i);
    }
    return this.hY;
  }
  
  public String toString()
  {
    if (this.hX == null)
    {
      StringBuilder localStringBuilder = new StringBuilder().append("EngineKey{").append(this.id).append('+').append(this.ec).append("+[").append(this.width).append('x').append(this.height).append("]+").append('\'');
      String str;
      if (this.hT != null) {
        str = this.hT.getId();
      } else {
        str = "";
      }
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (this.hU != null) {
        str = this.hU.getId();
      } else {
        str = "";
      }
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (this.es != null) {
        str = this.es.getId();
      } else {
        str = "";
      }
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (this.hV != null) {
        str = this.hV.getId();
      } else {
        str = "";
      }
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (this.hg != null) {
        str = this.hg.getId();
      } else {
        str = "";
      }
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (this.hW != null) {
        str = this.hW.getId();
      } else {
        str = "";
      }
      this.hX = (str + '\'' + '}');
    }
    return this.hX;
  }
  
  public void ˊ(MessageDigest paramMessageDigest)
  {
    Object localObject = ByteBuffer.allocate(8).putInt(this.width).putInt(this.height).array();
    this.ec.ˊ(paramMessageDigest);
    paramMessageDigest.update(this.id.getBytes("UTF-8"));
    paramMessageDigest.update((byte[])localObject);
    if (this.hT != null) {
      localObject = this.hT.getId();
    } else {
      localObject = "";
    }
    paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
    if (this.hU != null) {
      localObject = this.hU.getId();
    } else {
      localObject = "";
    }
    paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
    if (this.es != null) {
      localObject = this.es.getId();
    } else {
      localObject = "";
    }
    paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
    if (this.hV != null) {
      localObject = this.hV.getId();
    } else {
      localObject = "";
    }
    paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
    if (this.hW != null) {
      localObject = this.hW.getId();
    } else {
      localObject = "";
    }
    paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
  }
  
  public ﮆ ๆ()
  {
    if (this.hZ == null) {
      this.hZ = new ڐ(this.id, this.ec);
    }
    return this.hZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ï
 * JD-Core Version:    0.7.0.1
 */