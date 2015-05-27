.class public abstract Lorg/spongycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/ec/ECPoint$F2m;,
        Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;,
        Lorg/spongycastle/math/ec/ECPoint$Fp;,
        Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
    }
.end annotation


# static fields
.field protected static bcA:[Lorg/spongycastle/math/ec/ECFieldElement;


# instance fields
.field public aDw:Lorg/spongycastle/math/ec/ECCurve;

.field public aWJ:Z

.field public bcB:Lorg/spongycastle/math/ec/ECFieldElement;

.field public bcC:Lorg/spongycastle/math/ec/ECFieldElement;

.field public bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

.field protected bcE:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    sput-object v0, Lorg/spongycastle/math/ec/ECPoint;->bcA:[Lorg/spongycastle/math/ec/ECFieldElement;

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 56
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECCurve;)[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcE:Ljava/util/Hashtable;

    .line 61
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECPoint;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECPoint;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 63
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECPoint;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 64
    iput-object p4, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 65
    return-void
.end method

.method protected static ʽ(Lorg/spongycastle/math/ec/ECCurve;)[Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 16
    const/4 v0, 0x0

    if-ne v0, p0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v3

    .line 18
    :goto_0
    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 22
    :sswitch_0
    sget-object v0, Lorg/spongycastle/math/ec/ECPoint;->bcA:[Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0

    .line 27
    :goto_1
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 29
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 34
    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    return-object v0

    .line 36
    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    return-object v0

    .line 38
    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0

    .line 40
    :goto_2
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 386
    if-ne p1, p0, :cond_0

    .line 388
    const/4 v0, 0x1

    return v0

    .line 391
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/ECPoint;

    if-nez v0, :cond_1

    .line 393
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʻ(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 440
    iget-boolean v0, p0, Lorg/spongycastle/math/ec/ECPoint;->aWJ:Z

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint;->Ι(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 401
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 402
    const/4 v0, 0x0

    if-ne v0, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    xor-int/lit8 v3, v0, -0x1

    .line 404
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 410
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    xor-int/2addr v3, v0

    .line 411
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x101

    xor-int/2addr v3, v0

    .line 414
    :cond_1
    return v3
.end method

.method public isValid()Z
    .locals 2

    .line 297
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pD()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pC()Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public iv()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method protected pC()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pm()Ljava/math/BigInteger;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˏ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract pD()Z
.end method

.method public final pE()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pF()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract pF()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method protected pG()I
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v0

    :goto_0
    return v0
.end method

.method public pH()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pO()V

    .line 129
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public pI()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pO()V

    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public pJ()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public pK()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected final pL()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected final pM()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected final pN()[Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected pO()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    return-void
.end method

.method public pP()Z
    .locals 3

    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pG()I

    move-result v2

    .line 218
    if-eqz v2, :cond_0

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pQ()Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 232
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    return-object p0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 242
    :sswitch_0
    return-object p0

    .line 246
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    return-object p0

    .line 252
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint;->ͺ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public pR()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract pS()Z
.end method

.method public abstract pT()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public abstract pU()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public pV()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 506
    invoke-virtual {p0, p0}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 419
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string v0, "INF"

    return-object v0

    .line 424
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 427
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 429
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 431
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 432
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Lorg/spongycastle/math/ec/ECPoint;)Z
    .locals 11

    .line 337
    const/4 v0, 0x0

    if-ne v0, p1, :cond_0

    .line 339
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 343
    const/4 v0, 0x0

    if-ne v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x0

    if-ne v0, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 344
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v6

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v7

    .line 346
    if-nez v6, :cond_3

    if-eqz v7, :cond_6

    .line 348
    :cond_3
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->ʼ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 351
    :cond_6
    move-object v8, p0

    move-object v9, p1

    .line 352
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    goto :goto_3

    .line 356
    :cond_7
    if-eqz v4, :cond_8

    .line 358
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_3

    .line 360
    :cond_8
    if-eqz v5, :cond_9

    .line 362
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    goto :goto_3

    .line 364
    :cond_9
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->ʼ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 366
    const/4 v0, 0x0

    return v0

    .line 372
    :cond_a
    const/4 v0, 0x2

    new-array v10, v0, [Lorg/spongycastle/math/ec/ECPoint;

    const/4 v0, 0x0

    aput-object p0, v10, v0

    invoke-virtual {v2, v9}, Lorg/spongycastle/math/ec/ECCurve;->ˏ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v10, v1

    .line 375
    invoke-virtual {v2, v10}, Lorg/spongycastle/math/ec/ECCurve;->ˊ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 377
    const/4 v0, 0x0

    aget-object v8, v10, v0

    .line 378
    const/4 v0, 0x1

    aget-object v9, v10, v0

    .line 381
    :goto_3
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public abstract ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public ʾ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5

    .line 330
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pN()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint;->aWJ:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ˌ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pp()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/spongycastle/math/ec/ECMultiplier;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected ˎ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint;->aWJ:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method ͺ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 259
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pG()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/math/ec/ECPoint;->ˎ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 271
    invoke-virtual {p0, v2, v3}, Lorg/spongycastle/math/ec/ECPoint;->ˎ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 275
    :goto_0
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a projective coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public Ι(Z)[B
    .locals 7

    .line 448
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    new-array v0, v0, [B

    return-object v0

    .line 453
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v4

    .line 457
    if-eqz p1, :cond_2

    .line 459
    array-length v0, v4

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [B

    .line 460
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pS()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 461
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v4, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    return-object v5

    .line 465
    :cond_2
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v5

    .line 467
    array-length v0, v4

    array-length v1, v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [B

    .line 468
    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    .line 469
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v4, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    array-length v0, v4

    add-int/lit8 v0, v0, 0x1

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    return-object v6
.end method

.method public ι(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5

    .line 323
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pN()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint;->aWJ:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 176
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v0, v0, p1

    :goto_0
    return-object v0
.end method

.method public ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 484
    if-gez p1, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'e\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    move-object v2, p0

    .line 490
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 492
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 494
    :cond_1
    return-object v2
.end method
