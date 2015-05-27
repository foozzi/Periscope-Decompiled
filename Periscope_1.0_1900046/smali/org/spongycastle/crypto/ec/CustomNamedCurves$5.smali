.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$5;
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

    .line 142
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 9

    .line 145
    const-string v0, "BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v6

    .line 146
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Curve;-><init>()V

    invoke-static {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˎ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 147
    const-string v0, "04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 150
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
