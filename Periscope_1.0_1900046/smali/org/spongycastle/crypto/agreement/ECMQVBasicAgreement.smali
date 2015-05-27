.class public Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BasicAgreement;


# instance fields
.field aFy:Lorg/spongycastle/crypto/params/MQVPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 18

    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v3, v0, 0x2

    .line 62
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 64
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 66
    const/4 v0, 0x3

    new-array v6, v0, [Lorg/spongycastle/math/ec/ECPoint;

    if-nez p4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ˌ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_0
    invoke-static {v5, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    .line 73
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECCurve;->ˊ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 75
    const/4 v0, 0x0

    aget-object v7, v6, v0

    const/4 v0, 0x1

    aget-object v8, v6, v0

    const/4 v0, 0x2

    aget-object v9, v6, v0

    .line 77
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    .line 78
    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 79
    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 80
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 82
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v14

    .line 83
    invoke-virtual {v14, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 84
    invoke-virtual {v15, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v16

    .line 86
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 88
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v8, v0, v9, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFieldSize()I
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->aFy:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->kY()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->aFy:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    .line 26
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 10

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    move-object v7, v0

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->aFy:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->kY()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v8

    .line 39
    move-object v0, p0

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    move-object v2, v8

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->aFy:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->kZ()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->aFy:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->la()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->lb()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->la()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->ˊ(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 43
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Infinity is not a valid agreement value for MQV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
