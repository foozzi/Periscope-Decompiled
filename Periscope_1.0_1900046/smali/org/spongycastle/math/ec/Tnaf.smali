.class Lorg/spongycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bcT:Ljava/math/BigInteger;

.field private static final bcU:Ljava/math/BigInteger;

.field private static final bcV:Ljava/math/BigInteger;

.field public static final bcW:[Lorg/spongycastle/math/ec/ZTauElement;

.field public static final bcX:[[B

.field public static final bcY:[Lorg/spongycastle/math/ec/ZTauElement;

.field public static final bcZ:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcU:Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->bch:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcV:Ljava/math/BigInteger;

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/spongycastle/math/ec/ZTauElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/Tnaf;->bcV:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcW:[Lorg/spongycastle/math/ec/ZTauElement;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcX:[[B

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/spongycastle/math/ec/ZTauElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/Tnaf;->bcV:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcY:[Lorg/spongycastle/math/ec/ZTauElement;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcZ:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECCurve$F2m;)B
    .locals 2

    .line 410
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    const/4 v0, -0x1

    return v0

    .line 420
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ(BLorg/spongycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 6

    .line 87
    iget-object v0, p1, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 90
    iget-object v0, p1, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 93
    iget-object v0, p1, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 95
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 97
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 101
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :goto_0
    return-object v2
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;[B)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 5

    .line 669
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v2, v0

    .line 670
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object v3, v0

    .line 671
    array-length v0, p1

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-ltz v4, :cond_2

    .line 673
    invoke-static {v3}, Lorg/spongycastle/math/ec/Tnaf;->ˎ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .line 674
    aget-byte v0, p1, v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 676
    invoke-virtual {v3, p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    goto :goto_1

    .line 678
    :cond_0
    aget-byte v0, p1, v4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 680
    invoke-virtual {v3, p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˋ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .line 671
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 683
    :cond_2
    return-object v3
.end method

.method public static ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/spongycastle/math/ec/SimpleBigDecimal;
    .locals 9

    .line 286
    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int v2, v0, p5

    .line 287
    sub-int v0, p4, v2

    add-int/lit8 v0, v0, -0x2

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 289
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 291
    invoke-virtual {v4, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 293
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 295
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 296
    sub-int v0, v2, p5

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 297
    sub-int v0, v2, p5

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 303
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v0, v8, p5}, Lorg/spongycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static ˊ(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/spongycastle/math/ec/ZTauElement;
    .locals 14

    .line 588
    move/from16 v0, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 590
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0

    .line 594
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 597
    :goto_0
    move/from16 v0, p4

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(BIZ)[Ljava/math/BigInteger;

    move-result-object v7

    .line 598
    const/4 v0, 0x1

    aget-object v8, v7, v0

    .line 600
    move-object v0, p0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    move-object v2, v8

    move/from16 v3, p2

    move v4, p1

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 603
    move-object v0, p0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v2, v8

    move/from16 v3, p2

    move v4, p1

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 606
    move/from16 v0, p4

    invoke-static {v9, v10, v0}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(Lorg/spongycastle/math/ec/SimpleBigDecimal;Lorg/spongycastle/math/ec/SimpleBigDecimal;B)Lorg/spongycastle/math/ec/ZTauElement;

    move-result-object v11

    .line 609
    iget-object v0, v11, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, v11, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 613
    const/4 v0, 0x1

    aget-object v0, p3, v0

    iget-object v1, v11, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    iget-object v2, v11, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 615
    new-instance v0, Lorg/spongycastle/math/ec/ZTauElement;

    invoke-direct {v0, v12, v13}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/SimpleBigDecimal;Lorg/spongycastle/math/ec/SimpleBigDecimal;B)Lorg/spongycastle/math/ec/ZTauElement;
    .locals 16

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->qf()I

    move-result v2

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->qf()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    move/from16 v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move/from16 v0, p2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->qe()Ljava/math/BigInteger;

    move-result-object v3

    .line 182
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->qe()Ljava/math/BigInteger;

    move-result-object v4

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˍ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 185
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˍ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v6

    .line 188
    invoke-virtual {v5, v5}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v7

    .line 189
    move/from16 v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 191
    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v7

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˎ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v7

    .line 201
    :goto_0
    invoke-virtual {v6, v6}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 202
    invoke-virtual {v8, v6}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 205
    move/from16 v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 207
    invoke-virtual {v5, v8}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˎ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 208
    invoke-virtual {v5, v9}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {v5, v8}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 214
    invoke-virtual {v5, v9}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˎ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    .line 217
    :goto_1
    const/4 v12, 0x0

    .line 218
    const/4 v13, 0x0

    .line 221
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 223
    sget-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_4

    .line 225
    move/from16 v13, p2

    goto :goto_2

    .line 229
    :cond_4
    const/4 v12, 0x1

    goto :goto_2

    .line 235
    :cond_5
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 237
    move/from16 v13, p2

    .line 242
    :cond_6
    :goto_2
    sget-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcT:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_8

    .line 244
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 246
    move/from16 v0, p2

    neg-int v0, v0

    int-to-byte v13, v0

    goto :goto_3

    .line 250
    :cond_7
    const/4 v12, -0x1

    goto :goto_3

    .line 256
    :cond_8
    sget-object v0, Lorg/spongycastle/math/ec/Tnaf;->bcU:Ljava/math/BigInteger;

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_9

    .line 258
    move/from16 v0, p2

    neg-int v0, v0

    int-to-byte v13, v0

    .line 262
    :cond_9
    :goto_3
    int-to-long v0, v12

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 263
    int-to-long v0, v13

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 264
    new-instance v0, Lorg/spongycastle/math/ec/ZTauElement;

    invoke-direct {v0, v14, v15}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static ˊ(BLorg/spongycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ZTauElement;)[B
    .locals 13

    .line 703
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    invoke-static {p0, p1}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(BLorg/spongycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v2

    .line 711
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 714
    const/16 v0, 0x1e

    if-le v3, v0, :cond_1

    add-int/lit8 v0, v3, 0x4

    add-int v4, v0, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p2, 0x22

    .line 717
    :goto_0
    new-array v5, v4, [B

    .line 720
    move-object/from16 v0, p3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 723
    iget-object v7, p1, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    .line 724
    iget-object v8, p1, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    .line 725
    const/4 v9, 0x0

    .line 728
    :goto_1
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 731
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 734
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 739
    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 741
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v11, v0

    goto :goto_2

    .line 745
    :cond_3
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v11, v0

    .line 749
    :goto_2
    aput-byte v11, v5, v9

    .line 750
    const/4 v12, 0x1

    .line 751
    if-gez v11, :cond_4

    .line 753
    const/4 v12, 0x0

    .line 754
    neg-int v0, v11

    int-to-byte v11, v0

    .line 758
    :cond_4
    if-eqz v12, :cond_5

    .line 760
    aget-object v0, p5, v11

    iget-object v0, v0, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 761
    aget-object v0, p5, v11

    iget-object v0, v0, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_3

    .line 765
    :cond_5
    aget-object v0, p5, v11

    iget-object v0, v0, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 766
    aget-object v0, p5, v11

    iget-object v0, v0, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 768
    :goto_3
    goto :goto_4

    .line 771
    :cond_6
    const/4 v0, 0x0

    aput-byte v0, v5, v9

    .line 774
    :goto_4
    move-object v10, v7

    .line 776
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 778
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_5

    .line 783
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 785
    :goto_5
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    .line 786
    add-int/lit8 v9, v9, 0x1

    .line 787
    goto/16 :goto_1

    .line 788
    :cond_8
    return-object v5
.end method

.method public static ˊ(BIZ)[Ljava/math/BigInteger;
    .locals 7

    .line 439
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    if-eqz p2, :cond_1

    .line 450
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    .line 451
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 455
    :cond_1
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 456
    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 459
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-ge v5, p1, :cond_3

    .line 462
    const/4 v6, 0x0

    .line 463
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 465
    move-object v6, v3

    goto :goto_2

    .line 470
    :cond_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 473
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 474
    move-object v2, v3

    .line 475
    move-object v3, v4

    .line 459
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 480
    :cond_3
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/math/BigInteger;

    const/4 v0, 0x0

    aput-object v2, v5, v0

    const/4 v0, 0x1

    aput-object v3, v5, v0

    .line 481
    return-object v5
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;B)[Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 5

    .line 800
    const/16 v0, 0x10

    new-array v1, v0, [Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 801
    const/4 v0, 0x1

    aput-object p0, v1, v0

    .line 803
    if-nez p1, :cond_0

    .line 805
    sget-object v2, Lorg/spongycastle/math/ec/Tnaf;->bcX:[[B

    goto :goto_0

    .line 810
    :cond_0
    sget-object v2, Lorg/spongycastle/math/ec/Tnaf;->bcZ:[[B

    .line 813
    :goto_0
    array-length v3, v2

    .line 814
    const/4 v4, 0x3

    :goto_1
    if-ge v4, v3, :cond_1

    .line 816
    aget-object v0, v2, v4

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;[B)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    aput-object v0, v1, v4

    .line 814
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 819
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->ˊ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 821
    return-object v1
.end method

.method public static ˋ(Lorg/spongycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .locals 10

    .line 530
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "si is defined for Koblitz curves only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v2

    .line 536
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 537
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ps()B

    move-result v4

    .line 538
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pm()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/Tnaf;->ˑ(Ljava/math/BigInteger;)I

    move-result v5

    .line 539
    add-int/lit8 v0, v2, 0x3

    sub-int v6, v0, v3

    .line 540
    const/4 v0, 0x0

    invoke-static {v4, v6, v0}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(BIZ)[Ljava/math/BigInteger;

    move-result-object v7

    .line 541
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    .line 543
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    .line 544
    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v7, v1

    .line 547
    :cond_1
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 548
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    .line 550
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    return-object v0
.end method

.method public static ˎ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pW()Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public static ˏ(BI)Ljava/math/BigInteger;
    .locals 6

    .line 494
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 496
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 498
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 503
    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 509
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(BIZ)[Ljava/math/BigInteger;

    move-result-object v2

    .line 510
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 511
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 513
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 516
    return-object v5
.end method

.method protected static ˑ(Ljava/math/BigInteger;)I
    .locals 2

    .line 555
    if-eqz p0, :cond_1

    .line 557
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x1

    return v0

    .line 561
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->bci:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const/4 v0, 0x2

    return v0

    .line 567
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h (Cofactor) must be 2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
