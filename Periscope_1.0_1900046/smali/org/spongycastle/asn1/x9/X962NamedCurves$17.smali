.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$17;
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

    .line 383
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 10

    .line 386
    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "1555555555555555555555555555553C6F2885259C31E3FCDF154624522D"

    const/16 v1, 0x10

    invoke-direct {v7, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 387
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 389
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    new-instance v3, Ljava/math/BigInteger;

    const-string v1, "4230017757A767FAE42398569B746325D45313AF0766266479B75654E65F"

    const/16 v2, 0x10

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v1, "5037EA654196CFF0CD82B2C14A2FCF2E3FF8775285B545722F03EACDB74B"

    const/16 v2, 0x10

    invoke-direct {v4, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v5, v7

    move-object v6, v8

    const/16 v1, 0xef

    const/16 v2, 0x24

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v9, v0

    .line 396
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v1, "0228F9D04E900069C8DC47A08534FE76D2B900B7D7EF31F5709F200C4CA205"

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
