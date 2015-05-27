.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aXN:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->aXN:Ljava/util/Map;

    .line 28
    invoke-static {}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->jk()Ljava/util/Enumeration;

    move-result-object v3

    .line 29
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 33
    invoke-static {v4}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v5

    .line 34
    if-eqz v5, :cond_0

    .line 36
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->aXN:Ljava/util/Map;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v4}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .locals 6

    .line 102
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 7

    .line 129
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 131
    new-instance v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v6, v1, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECParameterSpec;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public static ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 13

    .line 74
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v7

    .line 75
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v8

    .line 76
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v9

    .line 78
    instance-of v0, v7, Ljava/security/spec/ECFieldFp;

    if-eqz v0, :cond_1

    .line 80
    new-instance v10, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v0, v7

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v10, v0, v8, v9}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 82
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->aXN:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->aXN:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve;

    return-object v0

    .line 87
    :cond_0
    return-object v10

    .line 91
    :cond_1
    move-object v0, v7

    check-cast v0, Ljava/security/spec/ECFieldF2m;

    move-object v10, v0

    .line 92
    invoke-virtual {v10}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v11

    .line 93
    invoke-virtual {v10}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ι([I)[I

    move-result-object v12

    .line 94
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    const/4 v1, 0x0

    aget v2, v12, v1

    const/4 v1, 0x1

    aget v3, v12, v1

    const/4 v1, 0x2

    aget v4, v12, v1

    move v1, v11

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 144
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 152
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 7

    .line 47
    invoke-static {p0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
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

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0

    .line 53
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v5, v0

    .line 56
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    new-array v6, v0, [I

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gt()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v6, v1

    .line 60
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v2

    invoke-direct {v1, v2, v6}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0

    .line 64
    :cond_1
    const/4 v0, 0x3

    new-array v6, v0, [I

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gv()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v6, v1

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gu()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v6, v1

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->gt()I

    move-result v0

    const/4 v1, 0x2

    aput v0, v6, v1

    .line 66
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v2

    invoke-direct {v1, v2, v6}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
