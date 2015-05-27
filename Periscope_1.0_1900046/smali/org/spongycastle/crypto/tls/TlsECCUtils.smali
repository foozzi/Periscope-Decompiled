.class public Lorg/spongycastle/crypto/tls/TlsECCUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aVf:Ljava/lang/Integer;

.field public static final aVg:Ljava/lang/Integer;

.field private static final aVh:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->aVf:Ljava/lang/Integer;

    .line 33
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->aVg:Ljava/lang/Integer;

    .line 35
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sect163k1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "sect163r1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "sect163r2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "sect193r1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "sect193r2"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "sect233k1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "sect233r1"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "sect239k1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "sect283k1"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "sect283r1"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "sect409k1"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "sect409r1"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "sect571k1"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "sect571r1"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "secp160k1"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "secp160r1"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "secp160r2"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "secp192k1"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "secp192r1"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "secp224k1"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "secp224r1"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "secp256k1"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "secp256r1"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "secp384r1"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "secp521r1"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "brainpoolP256r1"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "brainpoolP384r1"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "brainpoolP512r1"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->aVh:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʻ(I[B)Ljava/math/BigInteger;
    .locals 3

    .line 370
    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v2, v0, 0x8

    .line 371
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 373
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 375
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static ʿ(Ljava/util/Hashtable;)[I
    .locals 2

    .line 54
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->aVf:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    .line 55
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹴ([B)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static ˈ(Ljava/util/Hashtable;)[S
    .locals 2

    .line 60
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->aVg:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹸ([B)[S

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    .line 455
    new-instance v1, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 456
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v0, p1, p0}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 457
    invoke-virtual {v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ([I[SLjava/io/InputStream;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 29

    .line 507
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v16

    .line 509
    packed-switch v16, :pswitch_data_0

    goto/16 :goto_1

    .line 513
    :pswitch_0
    move-object/from16 v0, p0

    const v1, 0xff01

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˏ([II)V

    .line 515
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹳ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v17

    .line 516
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v18

    .line 517
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v19

    .line 518
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v20

    .line 519
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹳ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v21

    .line 520
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹳ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v22

    .line 521
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v23, v0

    .line 522
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v24

    .line 523
    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 527
    :pswitch_1
    move-object/from16 v0, p0

    const v1, 0xff02

    :try_start_1
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˏ([II)V

    .line 529
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v17

    .line 530
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v18

    .line 531
    invoke-static/range {v18 .. v18}, Lorg/spongycastle/crypto/tls/ECBasisType;->ᐝ(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 536
    :cond_0
    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˋ(ILjava/io/InputStream;)I

    move-result v19

    const/16 v20, -0x1

    const/16 v21, -0x1

    .line 537
    move/from16 v0, v18

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 539
    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˋ(ILjava/io/InputStream;)I

    move-result v20

    .line 540
    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˋ(ILjava/io/InputStream;)I

    move-result v21

    .line 543
    :cond_1
    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v22

    .line 544
    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v23

    .line 545
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v24

    .line 546
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹳ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v25

    .line 547
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹳ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v26

    .line 549
    move/from16 v0, v18

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v7, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move/from16 v8, v17

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    invoke-direct/range {v7 .. v15}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    new-instance v7, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object/from16 v27, v7

    .line 553
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v28

    .line 555
    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 559
    :pswitch_2
    :try_start_2
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v17

    .line 560
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/tls/NamedCurve;->Ꮀ(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 570
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˏ([II)V

    .line 572
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᒧ(I)Lorg/spongycastle/crypto/params/ECDomainParameters;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    .line 575
    :goto_1
    :try_start_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 578
    :catch_0
    move-exception v16

    .line 580
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ˊ(Ljava/security/SecureRandom;[SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 3

    .line 463
    invoke-static {p0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v2, v0

    .line 466
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V

    .line 468
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 0

    .line 474
    return-object p0
.end method

.method public static ˊ([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 3

    .line 430
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 431
    new-instance v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v0, v2, p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 433
    :catch_0
    move-exception v2

    .line 435
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public static ˊ([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 380
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 382
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 386
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ᐝ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    const/4 v2, 0x2

    goto :goto_1

    .line 395
    :cond_2
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    const/4 v2, 0x1

    goto :goto_1

    .line 401
    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 407
    :pswitch_1
    const/4 v2, 0x0

    .line 408
    goto :goto_1

    .line 414
    :goto_0
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 417
    :goto_1
    invoke-static {p0, v2}, Lorg/spongycastle/util/Arrays;->ˋ([SS)Z

    move-result v0

    if-nez v0, :cond_4

    .line 419
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 422
    :cond_4
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V
    .locals 1

    .line 605
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˋ([BLjava/io/OutputStream;)V

    .line 606
    return-void
.end method

.method public static ˊ([SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V
    .locals 6

    .line 621
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 623
    invoke-static {v2}, Lorg/spongycastle/math/ec/ECAlgorithms;->ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 627
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->qq()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˋ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 629
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/math/ec/ECAlgorithms;->ᐝ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-object v3, v0

    .line 632
    invoke-interface {v3}, Lorg/spongycastle/math/field/PolynomialExtensionField;->qu()Lorg/spongycastle/math/field/Polynomial;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/math/field/Polynomial;->qt()[I

    move-result-object v4

    .line 634
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 636
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v5, v4, v0

    .line 637
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴻ(I)V

    .line 638
    invoke-static {v5, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 640
    array-length v0, v4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 642
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 643
    const/4 v0, 0x1

    aget v0, v4, v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/OutputStream;)V

    goto :goto_0

    .line 645
    :cond_1
    array-length v0, v4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 647
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 648
    const/4 v0, 0x1

    aget v0, v4, v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/OutputStream;)V

    .line 649
    const/4 v0, 0x2

    aget v0, v4, v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/OutputStream;)V

    .line 650
    const/4 v0, 0x3

    aget v0, v4, v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˎ(ILjava/io/OutputStream;)V

    goto :goto_0

    .line 654
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only trinomial and pentomial curves are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :goto_0
    goto :goto_1

    .line 659
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'ecParameters\' not a known curve type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :goto_1
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V

    .line 663
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V

    .line 664
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˋ([BLjava/io/OutputStream;)V

    .line 665
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˋ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 666
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˋ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 667
    return-void
.end method

.method public static ˊ([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V
    .locals 1

    .line 671
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˋ([BLjava/io/OutputStream;)V

    .line 672
    return-void
.end method

.method public static ˊ([SS)Z
    .locals 3

    .line 316
    if-nez p0, :cond_0

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_3

    .line 322
    aget-short v2, p0, v1

    .line 323
    if-nez v2, :cond_1

    .line 325
    const/4 v0, 0x0

    return v0

    .line 327
    :cond_1
    if-ne v2, p1, :cond_2

    .line 329
    const/4 v0, 0x1

    return v0

    .line 320
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static ˊ(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)[B
    .locals 3

    .line 441
    new-instance v1, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    .line 442
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 443
    invoke-virtual {v1, p0}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v2

    .line 450
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->getFieldSize()I

    move-result v0

    invoke-static {v0, v2}, Lorg/spongycastle/util/BigIntegers;->ʻ(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ˊ([SLorg/spongycastle/math/ec/ECPoint;)[B
    .locals 3

    .line 342
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 350
    const/4 v2, 0x0

    .line 351
    invoke-static {v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SS)Z

    move-result v2

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ᐝ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SS)Z

    move-result v2

    .line 359
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/math/ec/ECPoint;->Ι(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static ˋ(ILjava/io/InputStream;)I
    .locals 4

    .line 479
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ﹳ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 482
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 483
    if-lez v3, :cond_0

    if-ge v3, p0, :cond_0

    .line 485
    return v3

    .line 488
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public static ˋ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 1

    .line 615
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˋ([BLjava/io/OutputStream;)V

    .line 616
    return-void
.end method

.method public static ˎ(ILjava/io/InputStream;)Ljava/math/BigInteger;
    .locals 1

    .line 493
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ʻ(I[B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static ˎ(ILjava/io/OutputStream;)V
    .locals 3

    .line 599
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 600
    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˋ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 601
    return-void
.end method

.method public static ˏ(ILjava/io/OutputStream;)V
    .locals 2

    .line 676
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/NamedCurve;->Ꮀ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 686
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 687
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴻ(I)V

    .line 688
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 689
    return-void
.end method

.method private static ˏ([II)V
    .locals 2

    .line 586
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->ʾ([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 595
    :cond_0
    return-void
.end method

.method public static ᒥ(I)Ljava/lang/String;
    .locals 2

    .line 145
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᓳ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->aVh:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static ᒧ(I)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 8

    .line 150
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᒥ(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    if-nez v6, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    invoke-static {v6}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 159
    if-nez v7, :cond_1

    .line 161
    invoke-static {v6}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 162
    if-nez v7, :cond_1

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public static ᒪ(I)Z
    .locals 1

    .line 191
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    .line 295
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 298
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc001 -> :sswitch_0
        0xc002 -> :sswitch_0
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_0
        0xc005 -> :sswitch_0
        0xc006 -> :sswitch_0
        0xc007 -> :sswitch_0
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00c -> :sswitch_0
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc011 -> :sswitch_0
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_0
        0xc014 -> :sswitch_0
        0xc015 -> :sswitch_0
        0xc016 -> :sswitch_0
        0xc017 -> :sswitch_0
        0xc018 -> :sswitch_0
        0xc019 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc033 -> :sswitch_0
        0xc034 -> :sswitch_0
        0xc035 -> :sswitch_0
        0xc036 -> :sswitch_0
        0xc037 -> :sswitch_0
        0xc038 -> :sswitch_0
        0xc039 -> :sswitch_0
        0xc03a -> :sswitch_0
        0xc03b -> :sswitch_0
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc09a -> :sswitch_0
        0xc09b -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xe412 -> :sswitch_0
        0xe413 -> :sswitch_0
        0xe414 -> :sswitch_0
        0xe415 -> :sswitch_0
        0xe418 -> :sswitch_0
        0xe419 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ᓳ(I)Z
    .locals 1

    .line 311
    if-lez p0, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->aVh:[Ljava/lang/String;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ﹳ(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 3

    .line 499
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static ﹴ([B)[I
    .locals 5

    .line 92
    if-nez p0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v3

    .line 100
    const/4 v0, 0x2

    if-lt v3, v0, :cond_1

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    .line 102
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 105
    :cond_2
    div-int/lit8 v0, v3, 0x2

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʼ(ILjava/io/InputStream;)[I

    move-result-object v4

    .line 107
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 109
    return-object v4
.end method

.method public static ﹸ([B)[S
    .locals 5

    .line 114
    if-nez p0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v3

    .line 122
    const/4 v0, 0x1

    if-ge v3, v0, :cond_1

    .line 124
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 127
    :cond_1
    invoke-static {v3, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/InputStream;)[S

    move-result-object v4

    .line 129
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 131
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->ˋ([SS)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 140
    :cond_2
    return-object v4
.end method
