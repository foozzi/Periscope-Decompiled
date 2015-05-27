.class Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlainDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$1;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;-><init>()V

    return-void
.end method

.method private ͺ(Ljava/math/BigInteger;)[B
    .locals 5

    .line 335
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 337
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    if-nez v0, :cond_0

    .line 339
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [B

    .line 341
    array-length v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    return-object v4

    .line 346
    :cond_0
    return-object v3
.end method


# virtual methods
.method public ˎ(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 6

    .line 313
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;->ͺ(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 314
    invoke-direct {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;->ͺ(Ljava/math/BigInteger;)[B

    move-result-object v4

    .line 317
    array-length v0, v3

    array-length v1, v4

    if-le v0, v1, :cond_0

    .line 319
    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    goto :goto_0

    .line 323
    :cond_0
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 326
    :goto_0
    array-length v0, v5

    div-int/lit8 v0, v0, 0x2

    array-length v1, v3

    sub-int/2addr v0, v1

    array-length v1, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    array-length v0, v5

    array-length v1, v4

    sub-int/2addr v0, v1

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    return-object v5
.end method

.method public ᔉ([B)[Ljava/math/BigInteger;
    .locals 6

    .line 353
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/math/BigInteger;

    .line 355
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    .line 356
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 358
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    array-length v0, v4

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {p1, v0, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 362
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 364
    return-object v3
.end method
