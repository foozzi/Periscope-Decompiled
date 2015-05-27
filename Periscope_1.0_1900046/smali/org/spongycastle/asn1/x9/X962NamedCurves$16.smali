.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$16;
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

    .line 360
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 10

    .line 363
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "2000000000000000000000000000000F4D42FFE1492A4993F1CAD666E447"

    const/16 v1, 0x10

    invoke-direct {v7, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 364
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 366
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    new-instance v3, Ljava/math/BigInteger;

    const-string v1, "32010857077C5431123A46B808906756F543423E8D27877578125778AC76"

    const/16 v2, 0x10

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v1, "790408F2EEDAF392B012EDEFB3392F30F4327C0CA3F31FC383C422AA8C16"

    const/16 v2, 0x10

    invoke-direct {v4, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v5, v7

    move-object v6, v8

    const/16 v1, 0xef

    const/16 v2, 0x24

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v9, v0

    .line 373
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v1, "0257927098FA932E7C0A96D3FD5B706EF7E5F5C156E16B7E7C86038552E91D"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object v1, v9

    move-object v3, v7

    move-object v4, v8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
