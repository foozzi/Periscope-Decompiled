.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$4;
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

    .line 114
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 13

    .line 117
    const/4 v9, 0x0

    .line 118
    new-instance v0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "6b8cf07d4ca75c88957d9d670591"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "-b8adf1378a6eb73409fa6c9c637d"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "1243ae1b4d71613bc9f780a03690e"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "6b8cf07d4ca75c88957d9d670591"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "6b8cf07d4ca75c88957d9d67059037a4"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b8adf1378a6eb73409fa6c9c637ba7f5"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0xf0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    move-object v10, v0

    .line 130
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Curve;-><init>()V

    invoke-static {v0, v10}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ˎ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v11

    .line 131
    const-string v0, "04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve;->pm()Ljava/math/BigInteger;

    move-result-object v4

    move-object v1, v11

    move-object v2, v12

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
