.class public abstract Lorg/spongycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/ec/ECCurve$F2m;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;,
        Lorg/spongycastle/math/ec/ECCurve$Fp;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractFp;,
        Lorg/spongycastle/math/ec/ECCurve$Config;
    }
.end annotation


# instance fields
.field protected bcj:Lorg/spongycastle/math/field/FiniteField;

.field public bck:Lorg/spongycastle/math/ec/ECFieldElement;

.field public bcl:Lorg/spongycastle/math/ec/ECFieldElement;

.field public bcm:Ljava/math/BigInteger;

.field public bcn:Ljava/math/BigInteger;

.field public bco:I

.field protected bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

.field protected bcq:Lorg/spongycastle/math/ec/ECMultiplier;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/math/field/FiniteField;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bco:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 96
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->bcj:Lorg/spongycastle/math/field/FiniteField;

    .line 97
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 443
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ʼ(Lorg/spongycastle/math/ec/ECCurve;)Z

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

.method public abstract getFieldSize()I
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcm:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 448
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public pf()Lorg/spongycastle/math/ec/ECCurve$Config;
    .locals 4

    .line 105
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve;->bco:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECCurve;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve$Config;-><init>(Lorg/spongycastle/math/ec/ECCurve;ILorg/spongycastle/math/ec/endo/ECEndomorphism;Lorg/spongycastle/math/ec/ECMultiplier;)V

    return-object v0
.end method

.method public abstract pg()Lorg/spongycastle/math/ec/ECCurve;
.end method

.method protected ph()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    instance-of v0, v0, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lorg/spongycastle/math/ec/GLVMultiplier;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    check-cast v1, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/math/ec/GLVMultiplier;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)V

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object v0
.end method

.method public abstract pi()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public pj()Lorg/spongycastle/math/field/FiniteField;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcj:Lorg/spongycastle/math/field/FiniteField;

    return-object v0
.end method

.method public pk()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public pl()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public pm()Ljava/math/BigInteger;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcn:Ljava/math/BigInteger;

    return-object v0
.end method

.method public pn()I
    .locals 1

    .line 298
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bco:I

    return v0
.end method

.method public po()Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public declared-synchronized pp()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 2

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->ph()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 2

    .line 434
    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

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

.method public ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    return-object v2
.end method

.method public abstract ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public abstract ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;
    .locals 4

    .line 169
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 170
    move-object v1, p1

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v2, p1, Lorg/spongycastle/math/ec/ECPoint;->bcE:Ljava/util/Hashtable;

    .line 173
    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/PreCompInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V
    .locals 4

    .line 191
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 192
    move-object v1, p1

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v2, p1, Lorg/spongycastle/math/ec/ECPoint;->bcE:Ljava/util/Hashtable;

    .line 195
    const/4 v0, 0x0

    if-ne v0, v2, :cond_0

    .line 197
    new-instance v2, Ljava/util/Hashtable;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p1, Lorg/spongycastle/math/ec/ECPoint;->bcE:Ljava/util/Hashtable;

    .line 199
    :cond_0
    invoke-virtual {v2, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 201
    :goto_0
    return-void
.end method

.method public ˊ([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 7

    .line 232
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->ˋ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 234
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 242
    :cond_0
    array-length v0, p1

    new-array v2, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 243
    array-length v0, p1

    new-array v3, v0, [I

    .line 244
    const/4 v4, 0x0

    .line 245
    const/4 v5, 0x0

    :goto_0
    array-length v0, p1

    if-ge v5, v0, :cond_2

    .line 247
    aget-object v6, p1, v5

    .line 248
    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->pP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/spongycastle/math/ec/ECPoint;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v2, v4

    .line 251
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    aput v5, v3, v0

    .line 245
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 255
    :cond_2
    if-nez v4, :cond_3

    .line 257
    return-void

    .line 260
    :cond_3
    const/4 v0, 0x0

    invoke-static {v2, v0, v4}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Lorg/spongycastle/math/ec/ECFieldElement;II)V

    .line 262
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 264
    aget v6, v3, v5

    .line 265
    aget-object v0, p1, v6

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ͺ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, p1, v6

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    :cond_4
    return-void
.end method

.method protected abstract ˋ(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 143
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected ˋ([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 4

    .line 417
    if-nez p1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'points\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_2

    .line 424
    aget-object v3, p1, v2

    .line 425
    const/4 v0, 0x0

    if-eq v0, v3, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'points\' entries must be null or on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_2
    return-void
.end method

.method public ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 110
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-object v2
.end method

.method public ˏ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 205
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 207
    return-object p1

    .line 209
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 215
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean v2, p1, Lorg/spongycastle/math/ec/ECPoint;->aWJ:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected ᐝ(Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 2

    .line 409
    const/4 v0, 0x0

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'point\' must be non-null and on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    return-void
.end method

.method public ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .line 328
    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v4, v0, 0x8

    .line 331
    const/4 v0, 0x0

    aget-byte v5, p1, v0

    .line 332
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 336
    :pswitch_0
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect length for infinity encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 342
    goto/16 :goto_2

    .line 347
    :pswitch_1
    array-length v0, p1

    add-int/lit8 v1, v4, 0x1

    if-eq v0, v1, :cond_1

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect length for compressed encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_1
    and-int/lit8 v6, v5, 0x1

    .line 353
    const/4 v0, 0x1

    invoke-static {p1, v0, v4}, Lorg/spongycastle/util/BigIntegers;->ᐩ([BII)Ljava/math/BigInteger;

    move-result-object v7

    .line 355
    invoke-virtual {p0, v6, v7}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pC()Z

    move-result v0

    if-nez v0, :cond_6

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_2
    array-length v0, p1

    mul-int/lit8 v1, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_2

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect length for uncompressed encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0, v4}, Lorg/spongycastle/util/BigIntegers;->ᐩ([BII)Ljava/math/BigInteger;

    move-result-object v6

    .line 371
    add-int/lit8 v0, v4, 0x1

    invoke-static {p1, v0, v4}, Lorg/spongycastle/util/BigIntegers;->ᐩ([BII)Ljava/math/BigInteger;

    move-result-object v7

    .line 373
    invoke-virtual {p0, v6, v7}, Lorg/spongycastle/math/ec/ECCurve;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 374
    goto :goto_2

    .line 379
    :pswitch_3
    array-length v0, p1

    mul-int/lit8 v1, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_3

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect length for hybrid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_3
    const/4 v0, 0x1

    invoke-static {p1, v0, v4}, Lorg/spongycastle/util/BigIntegers;->ᐩ([BII)Ljava/math/BigInteger;

    move-result-object v6

    .line 385
    add-int/lit8 v0, v4, 0x1

    invoke-static {p1, v0, v4}, Lorg/spongycastle/util/BigIntegers;->ᐩ([BII)Ljava/math/BigInteger;

    move-result-object v7

    .line 387
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    const/4 v1, 0x7

    if-ne v5, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_5

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_5
    invoke-virtual {p0, v6, v7}, Lorg/spongycastle/math/ec/ECCurve;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 393
    goto :goto_2

    .line 396
    :goto_1
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid point encoding 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid infinity encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_7
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public abstract ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public ﭨ(I)Z
    .locals 1

    .line 164
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
