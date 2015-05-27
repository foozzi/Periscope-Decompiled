.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$14;
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

    .line 314
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 10

    .line 317
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "155555555555555555555555610C0B196812BFB6288A3EA3"

    const/16 v1, 0x10

    invoke-direct {v7, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 318
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 320
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    new-instance v3, Ljava/math/BigInteger;

    const-string v1, "6C01074756099122221056911C77D77E77A777E7E7E77FCB"

    const/16 v2, 0x10

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v1, "71FE1AF926CF847989EFEF8DB459F66394D90F32AD3F15E8"

    const/16 v2, 0x10

    invoke-direct {v4, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v5, v7

    move-object v6, v8

    const/16 v1, 0xbf

    const/16 v2, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v9, v0

    .line 327
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v1, "03375D4CE24FDE434489DE8746E71786015009E66E38A926DD"

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
