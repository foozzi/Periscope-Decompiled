package o;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class gs$ˊ
  implements ParameterizedType, Serializable
{
  private final Type ownerType;
  private final Type rawType;
  private final Type[] typeArguments;
  
  public gs$ˊ(Type paramType1, Type paramType2, Type... paramVarArgs)
  {
    if ((paramType2 instanceof Class))
    {
      Class localClass = (Class)paramType2;
      if ((Modifier.isStatic(localClass.getModifiers())) || (localClass.getEnclosingClass() == null)) {
        i = 1;
      } else {
        i = 0;
      }
      boolean bool;
      if ((paramType1 != null) || (i != 0)) {
        bool = true;
      } else {
        bool = false;
      }
      gr.יּ(bool);
    }
    if (paramType1 == null) {
      paramType1 = null;
    } else {
      paramType1 = gs.ᐝ(paramType1);
    }
    this.ownerType = paramType1;
    this.rawType = gs.ᐝ(paramType2);
    this.typeArguments = ((Type[])paramVarArgs.clone());
    int i = 0;
    while (i < this.typeArguments.length)
    {
      gr.יּ(this.typeArguments[i]);
      gs.access$000(this.typeArguments[i]);
      this.typeArguments[i] = gs.ᐝ(this.typeArguments[i]);
      i += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ParameterizedType)) && (gs.equals(this, (ParameterizedType)paramObject));
  }
  
  public Type[] getActualTypeArguments()
  {
    return (Type[])this.typeArguments.clone();
  }
  
  public Type getOwnerType()
  {
    return this.ownerType;
  }
  
  public Type getRawType()
  {
    return this.rawType;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode() ^ gs.access$100(this.ownerType);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder((this.typeArguments.length + 1) * 30);
    localStringBuilder.append(gs.typeToString(this.rawType));
    if (this.typeArguments.length == 0) {
      return localStringBuilder.toString();
    }
    localStringBuilder.append("<").append(gs.typeToString(this.typeArguments[0]));
    int i = 1;
    while (i < this.typeArguments.length)
    {
      localStringBuilder.append(", ").append(gs.typeToString(this.typeArguments[i]));
      i += 1;
    }
    return ">";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gs.Ë
 * JD-Core Version:    0.7.0.1
 */