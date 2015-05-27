.class public Lorg/spongycastle/jce/ECGOST3410NamedCurveTable;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ﺩ(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;
    .locals 9

    .line 25
    invoke-static {p0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ʶ(Ljava/lang/String;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v7

    .line 26
    if-nez v7, :cond_0

    .line 30
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 35
    goto :goto_0

    .line 32
    :catch_0
    move-exception v8

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
