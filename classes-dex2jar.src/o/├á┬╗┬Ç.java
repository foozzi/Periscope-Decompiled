package o;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public class ເ<ModelType, DataType, ResourceType, TranscodeType>
  implements Cloneable
{
  protected final Class<ModelType> dU;
  protected final Context dV;
  protected final ᓲ dW;
  protected final Class<TranscodeType> dX;
  protected final ᐜ dY;
  protected final ধ dZ;
  private ᓸ<ModelType, DataType, ResourceType, TranscodeType> ea;
  private ModelType eb;
  private ﮆ ec = ﮊ.ἵ();
  private boolean ed;
  private int ee;
  private int ef;
  private ᖕ<? super ModelType, TranscodeType> eg;
  private Float eh;
  private ເ<?, ?, ?, TranscodeType> ei;
  private Float ej = Float.valueOf(1.0F);
  private Drawable ek;
  private Drawable el;
  private ᔿ em = null;
  private boolean en = true;
  private ḹ<TranscodeType> eo = ḽ.Ḷ();
  private int ep = -1;
  private int eq = -1;
  private ʖ er = ʖ.ho;
  private ﺭ<ResourceType> es = ᒦ.ﱢ();
  private boolean et;
  private boolean eu;
  private Drawable ev;
  private int ew;
  
  ເ(Context paramContext, Class<ModelType> paramClass, ᔁ<ModelType, DataType, ResourceType, TranscodeType> paramᔁ, Class<TranscodeType> paramClass1, ᓲ paramᓲ, ᐜ paramᐜ, ধ paramধ)
  {
    this.dV = paramContext;
    this.dU = paramClass;
    this.dX = paramClass1;
    this.dW = paramᓲ;
    this.dY = paramᐜ;
    this.dZ = paramধ;
    if (paramᔁ != null) {
      paramClass1 = new ᓸ(paramᔁ);
    } else {
      paramClass1 = null;
    }
    this.ea = paramClass1;
    if (paramContext == null) {
      throw new NullPointerException("Context can't be null");
    }
    if ((paramClass != null) && (paramᔁ == null)) {
      throw new NullPointerException("LoadProvider must not be null");
    }
  }
  
  private ᔨ ˊ(ﭩ<TranscodeType> paramﭩ, float paramFloat, ᔿ paramᔿ, ᔭ paramᔭ)
  {
    return ᔄ.ˊ(this.ea, this.eb, this.ec, this.dV, paramᔿ, paramﭩ, paramFloat, this.ek, this.ee, this.el, this.ef, this.ev, this.ew, this.eg, paramᔭ, this.dW.Ꮮ(), this.es, this.dX, this.en, this.eo, this.eq, this.ep, this.er);
  }
  
  private ᔨ ˊ(ﭩ<TranscodeType> paramﭩ, ᴋ paramᴋ)
  {
    if (this.ei != null)
    {
      if (this.eu) {
        throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
      }
      if (this.ei.eo.equals(ḽ.Ḷ())) {
        this.ei.eo = this.eo;
      }
      if (this.ei.em == null) {
        this.ei.em = ი();
      }
      if ((ﾕ.ᵀ(this.eq, this.ep)) && (!ﾕ.ᵀ(this.ei.eq, this.ei.ep))) {
        this.ei.ᔈ(this.eq, this.ep);
      }
      paramᴋ = new ᴋ(paramᴋ);
      ᔨ localᔨ = ˊ(paramﭩ, this.ej.floatValue(), this.em, paramᴋ);
      this.eu = true;
      paramﭩ = this.ei.ˊ(paramﭩ, paramᴋ);
      this.eu = false;
      paramᴋ.ˊ(localᔨ, paramﭩ);
      return paramᴋ;
    }
    if (this.eh != null)
    {
      paramᴋ = new ᴋ(paramᴋ);
      paramᴋ.ˊ(ˊ(paramﭩ, this.ej.floatValue(), this.em, paramᴋ), ˊ(paramﭩ, this.eh.floatValue(), ი(), paramᴋ));
      return paramᴋ;
    }
    return ˊ(paramﭩ, this.ej.floatValue(), this.em, paramᴋ);
  }
  
  private ᔨ ˋ(ﭩ<TranscodeType> paramﭩ)
  {
    if (this.em == null) {
      this.em = ᔿ.eU;
    }
    return ˊ(paramﭩ, null);
  }
  
  private ᔿ ი()
  {
    if (this.em == ᔿ.eV) {
      return ᔿ.eU;
    }
    if (this.em == ᔿ.eU) {
      return ᔿ.eT;
    }
    return ᔿ.eS;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ʴ(ModelType paramModelType)
  {
    this.eb = paramModelType;
    this.ed = true;
    return this;
  }
  
  ເ<ModelType, DataType, ResourceType, TranscodeType> ˊ(ḹ<TranscodeType> paramḹ)
  {
    if (paramḹ == null) {
      throw new NullPointerException("Animation factory must not be null!");
    }
    this.eo = paramḹ;
    return this;
  }
  
  public ﭩ<TranscodeType> ˊ(ImageView paramImageView)
  {
    
    if (paramImageView == null) {
      throw new IllegalArgumentException("You must pass in a non null View");
    }
    if ((!this.et) && (paramImageView.getScaleType() != null)) {
      switch (ເ.1.ex[paramImageView.getScaleType().ordinal()])
      {
      default: 
        break;
      case 1: 
        ܖ();
        break;
      case 2: 
      case 3: 
      case 4: 
        ڔ();
      }
    }
    return ˊ(this.dW.ˊ(paramImageView, this.dX));
  }
  
  public <Y extends ﭩ<TranscodeType>> Y ˊ(Y paramY)
  {
    
    if (paramY == null) {
      throw new IllegalArgumentException("You must pass in a non null Target");
    }
    if (!this.ed) {
      throw new IllegalArgumentException("You must first set a model (try #load())");
    }
    ᔨ localᔨ = paramY.ṝ();
    if (localᔨ != null)
    {
      localᔨ.clear();
      this.dY.ˋ(localᔨ);
      localᔨ.recycle();
    }
    localᔨ = ˋ(paramY);
    paramY.ʻ(localᔨ);
    this.dZ.ˊ(paramY);
    this.dY.ˊ(localᔨ);
    return paramY;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ˋ(ʖ paramʖ)
  {
    this.er = paramʖ;
    return this;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ˋ(ﭥ<DataType> paramﭥ)
  {
    if (this.ea != null) {
      this.ea.ˎ(paramﭥ);
    }
    return this;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ˋ(ﮆ paramﮆ)
  {
    if (paramﮆ == null) {
      throw new NullPointerException("Signature must not be null");
    }
    this.ec = paramﮆ;
    return this;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ˋ(ﺀ<DataType, ResourceType> paramﺀ)
  {
    if (this.ea != null) {
      this.ea.ˎ(paramﺀ);
    }
    return this;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ˎ(ﺭ<ResourceType>... paramVarArgs)
  {
    this.et = true;
    if (paramVarArgs.length == 1)
    {
      this.es = paramVarArgs[0];
      return this;
    }
    this.es = new ﹱ(paramVarArgs);
    return this;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ˡ(boolean paramBoolean)
  {
    if (!paramBoolean) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    this.en = paramBoolean;
    return this;
  }
  
  void ڔ() {}
  
  void ܖ() {}
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ܢ()
  {
    for (;;)
    {
      try
      {
        ເ localເ = (ເ)super.clone();
        if (this.ea != null)
        {
          ᓸ localᓸ = this.ea.ᒩ();
          localເ.ea = localᓸ;
          return localເ;
        }
      }
      catch (CloneNotSupportedException localCloneNotSupportedException)
      {
        throw new RuntimeException(localCloneNotSupportedException);
      }
      Object localObject = null;
    }
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ა()
  {
    return ˊ(ḽ.Ḷ());
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ᔈ(int paramInt1, int paramInt2)
  {
    if (!ﾕ.ᵀ(paramInt1, paramInt2)) {
      throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
    }
    this.eq = paramInt1;
    this.ep = paramInt2;
    return this;
  }
  
  public ເ<ModelType, DataType, ResourceType, TranscodeType> ﹻ(int paramInt)
  {
    this.ee = paramInt;
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à»
 * JD-Core Version:    0.7.0.1
 */