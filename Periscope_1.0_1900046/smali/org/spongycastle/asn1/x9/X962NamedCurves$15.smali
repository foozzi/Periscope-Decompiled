.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$15;
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

    .line 337
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 12

    .line 340
    new-instance v9, Ljava/math/BigInteger;

    const-string v0, "0101BAF95C9723C57B6C21DA2EFF2D5ED588BDD5717E212F9D"

    const/16 v1, 0x10

    invoke-direct {v9, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 341
    const-wide/32 v0, 0xfe48

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 343
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    new-instance v5, Ljava/math/BigInteger;

    const-string v1, "0"

    const/16 v2, 0x10

    invoke-direct {v5, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v1, "00C8619ED45A62E6212E1160349E2BFA844439FAFC2A3FD1638F9E"

    const/16 v2, 0x10

    invoke-direct {v6, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v7, v9

    move-object v8, v10

    const/16 v1, 0xd0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x53

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v11, v0

    .line 350
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v1, "0289FDFBE4ABE193DF9559ECF07AC0CE78554E2784EB8C1ED1A57A"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object v1, v11

    move-object v3, v9

    move-object v4, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
