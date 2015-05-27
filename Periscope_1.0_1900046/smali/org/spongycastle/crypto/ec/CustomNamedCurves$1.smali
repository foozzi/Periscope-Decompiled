.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$1;
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

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 9

    .line 46
    const/4 v6, 0x0

    .line 47
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519;-><init>()V

    invoke-static {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˎ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 58
    const-string v0, "042AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD245A20AE19A1B8A086B4E01EDD2C7748D14C923D4D7E6D7C61B229E9C5A27ECED3D9"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 62
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
