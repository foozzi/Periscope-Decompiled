.class public Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field protected final aDw:Lorg/spongycastle/math/ec/ECCurve;

.field protected final bdr:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

.field protected final bds:Lorg/spongycastle/math/ec/ECPointMap;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 19
    iput-object p2, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bdr:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    .line 20
    new-instance v0, Lorg/spongycastle/math/ec/ScaleXPointMap;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->qm()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/ScaleXPointMap;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bds:Lorg/spongycastle/math/ec/ECPointMap;

    .line 21
    return-void
.end method


# virtual methods
.method public qk()Lorg/spongycastle/math/ec/ECPointMap;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bds:Lorg/spongycastle/math/ec/ECPointMap;

    return-object v0
.end method

.method public ql()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 4

    .line 48
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 49
    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 50
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    .line 51
    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 52
    if-eqz v3, :cond_1

    .line 54
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 56
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method public ﾞ(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 9

    .line 25
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bdr:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->qp()I

    move-result v2

    .line 26
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bdr:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->kr()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 27
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bdr:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->ks()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 29
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bdr:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->qn()[Ljava/math/BigInteger;

    move-result-object v5

    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->bdr:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->qo()[Ljava/math/BigInteger;

    move-result-object v6

    .line 30
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 31
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    return-object v0
.end method
