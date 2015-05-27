.class final Lorg/spongycastle/asn1/sec/SECNamedCurves$19;
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

    .line 566
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected gs()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 20

    .line 569
    const/16 v9, 0x83

    .line 570
    const/4 v10, 0x2

    .line 571
    const/4 v11, 0x3

    .line 572
    const/16 v12, 0x8

    .line 574
    const-string v0, "03E5A88919D7CAFCBF415F07C2176573B2"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v13

    .line 575
    const-string v0, "04B8266A46C55657AC734CE38F018F2192"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v14

    .line 576
    const-string v0, "985BD3ADBAD4D696E676875615175A21B43A97E3"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v15

    .line 577
    const-string v0, "0400000000000000016954A233049BA98F"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ן(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v16

    .line 578
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    .line 580
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ˋ(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v18

    .line 583
    const-string v0, "040356DCD8F2F95031AD652D23951BB366A80648F06D867940A5366D9E265DE9EB240F"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    .line 587
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
