.class final Lorg/spongycastle/asn1/sec/SECNamedCurves$15;
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

    .line 456
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 14

    .line 460
    const-string v0, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 461
    const-string v0, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    .line 462
    const-string v0, "0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    .line 463
    const-string v0, "D09E8800291CB85396CC6717393284AAA0DA64BA"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v9

    .line 464
    const-string v0, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v10

    .line 465
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 467
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ˋ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v12

    .line 471
    const-string v0, "0400C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 475
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v12

    move-object v2, v13

    move-object v3, v10

    move-object v4, v11

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
