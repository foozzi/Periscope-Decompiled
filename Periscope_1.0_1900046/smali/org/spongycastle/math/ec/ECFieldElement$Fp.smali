.class public Lorg/spongycastle/math/ec/ECFieldElement$Fp;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field aFA:Ljava/math/BigInteger;

.field aFO:Ljava/math/BigInteger;

.field bcv:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 100
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʾ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 101
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 105
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid in Fp field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    .line 111
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    .line 112
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    .line 113
    return-void
.end method

.method private ʽ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 304
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static ʾ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    .line 83
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 84
    const/16 v0, 0x60

    if-lt v4, v0, :cond_0

    .line 86
    add-int/lit8 v0, v4, -0x40

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 10

    .line 314
    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 315
    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    .line 319
    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 320
    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    .line 321
    move-object v6, p1

    .line 322
    sget-object v7, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 323
    sget-object v8, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 325
    add-int/lit8 v9, v2, -0x1

    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-lt v9, v0, :cond_1

    .line 327
    invoke-virtual {p0, v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 329
    invoke-virtual {p3, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0, v7, p2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 332
    invoke-virtual {p0, v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 333
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 334
    invoke-virtual {v6, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_1

    .line 338
    :cond_0
    move-object v8, v7

    .line 339
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 340
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 341
    invoke-virtual {v5, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 325
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0, v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 346
    invoke-virtual {p0, v7, p2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 347
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 348
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 349
    invoke-virtual {p0, v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 351
    const/4 v9, 0x1

    :goto_2
    if-gt v9, v3, :cond_2

    .line 353
    invoke-virtual {p0, v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 354
    invoke-virtual {v5, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 355
    invoke-virtual {p0, v7, v7}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 351
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 358
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 464
    if-ne p1, p0, :cond_0

    .line 466
    const/4 v0, 0x1

    return v0

    .line 469
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    if-nez v0, :cond_1

    .line 471
    const/4 v0, 0x0

    return v0

    .line 474
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    move-object v2, v0

    .line 475
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 480
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7

    .line 401
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->getFieldSize()I

    move-result v2

    .line 402
    add-int/lit8 v0, v2, 0x1f

    shr-int/lit8 v3, v0, 0x5

    .line 403
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(ILjava/math/BigInteger;)[I

    move-result-object v4

    .line 404
    invoke-static {v2, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(ILjava/math/BigInteger;)[I

    move-result-object v5

    .line 405
    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v6

    .line 406
    invoke-static {v4, v5, v6}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 407
    invoke-static {v3, v6}, Lorg/spongycastle/math/raw/Nat;->ˉ(I[I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public pv()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 148
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 152
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public pw()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 188
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v0
.end method

.method public px()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 193
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public py()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 215
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public pz()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 15

    .line 225
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->pA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    return-object p0

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not done yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 241
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v3, v5, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʽ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 244
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 247
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p0, v5, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 248
    invoke-virtual {p0, v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 250
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʽ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 256
    :cond_4
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 258
    invoke-virtual {p0, v6, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 260
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v9}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʽ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 265
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 266
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_6
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    .line 272
    invoke-virtual {p0, v6}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʿ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʿ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 274
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 277
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    .line 283
    :cond_7
    new-instance v13, Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {v13, v0, v12}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 286
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_7

    invoke-virtual {v13, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    invoke-direct {p0, v13, v6, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v14

    .line 289
    const/4 v0, 0x0

    aget-object v10, v14, v0

    .line 290
    const/4 v0, 0x1

    aget-object v11, v14, v0

    .line 292
    invoke-virtual {p0, v11, v11}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 294
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-virtual {p0, v11}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˈ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 297
    :cond_8
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    return-object v0
.end method

.method protected ʻ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 363
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 364
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 368
    :cond_0
    return-object v1
.end method

.method public ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 162
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 412
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 183
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʼ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected ʽ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 454
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 459
    :cond_0
    return-object v1
.end method

.method protected ʿ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 374
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 378
    :cond_0
    return-object v1
.end method

.method protected ˈ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 396
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7

    .line 417
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    if-eqz v0, :cond_6

    .line 419
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 420
    :goto_0
    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 424
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 425
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 426
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v1, v3, 0x1

    if-le v0, v1, :cond_3

    .line 428
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 429
    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 430
    if-nez v4, :cond_2

    .line 432
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 434
    :cond_2
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 435
    goto :goto_1

    .line 436
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 438
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    .line 440
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_5

    .line 442
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 444
    :cond_5
    goto :goto_3

    .line 447
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 449
    :goto_3
    return-object p1
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9

    .line 206
    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    .line 207
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 208
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 209
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 10

    .line 167
    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 168
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 169
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 170
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 10

    .line 175
    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 176
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 177
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 178
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ˉ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 142
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʻ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 157
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFA:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->bcv:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->aFO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ʽ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method
