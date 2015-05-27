.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$18;
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

    .line 406
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 10

    .line 409
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "0CCCCCCCCCCCCCCCCCCCCCCCCCCCCCAC4912D2D9DF903EF9888B8A0E4CFF"

    const/16 v1, 0x10

    invoke-direct {v7, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 410
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 412
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    new-instance v3, Ljava/math/BigInteger;

    const-string v1, "01238774666A67766D6676F778E676B66999176666E687666D8766C66A9F"

    const/16 v2, 0x10

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v1, "6A941977BA9F6A435199ACFC51067ED587F519C5ECB541B8E44111DE1D40"

    const/16 v2, 0x10

    invoke-direct {v4, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v5, v7

    move-object v6, v8

    const/16 v1, 0xef

    const/16 v2, 0x24

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v9, v0

    .line 419
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v1, "0370F6E9D04D289C4E89913CE3530BFDE903977D42B146D539BF1BDE4E9C92"

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
