.class public Lorg/spongycastle/jce/spec/ECNamedCurveSpec;
.super Ljava/security/spec/ECParameterSpec;
.source ""


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 98
    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 100
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 3

    .line 111
    invoke-static {p2, p6}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->ˋ(Lorg/spongycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 113
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private static ˋ(Lorg/spongycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 54
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 6

    .line 25
    invoke-static {p0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldFp;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/math/field/FiniteField;->qq()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0

    .line 31
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v4, v0

    .line 34
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x1

    new-array v5, v0, [I

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gt()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v5, v1

    .line 38
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v2

    invoke-direct {v1, v2, v5}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x3

    new-array v5, v0, [I

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gv()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v5, v1

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gu()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v5, v1

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gt()I

    move-result v0

    const/4 v1, 0x2

    aput v0, v5, v1

    .line 44
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v2

    invoke-direct {v1, v2, v5}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-object v0
.end method
