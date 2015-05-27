.class final Lorg/spongycastle/asn1/sec/SECNamedCurves$13;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 14

    .line 408
    const-string v0, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 409
    const-string v0, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    .line 410
    const-string v0, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    .line 411
    const-string v0, "C49D360886E704936A6678E1139D26B7819F7E90"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v9

    .line 412
    const-string v0, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v10

    .line 413
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 415
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ˋ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v12

    .line 418
    const-string v0, "046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 422
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v12

    move-object v2, v13

    move-object v3, v10

    move-object v4, v11

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
