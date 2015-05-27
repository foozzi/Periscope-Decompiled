.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$7;
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

    .line 186
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 9

    .line 189
    const-string v0, "C49D360886E704936A6678E1139D26B7819F7E90"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v6

    .line 190
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Curve;-><init>()V

    invoke-static {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˎ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 191
    const-string v0, "046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 194
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve;->pm()Ljava/math/BigInteger;

    move-result-object v4

    move-object v1, v7

    move-object v2, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
