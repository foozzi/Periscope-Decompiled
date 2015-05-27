.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aQb:I

.field private avL:I

.field private bdK:I

.field private bfW:I

.field private bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    .line 29
    return-void
.end method

.method private qJ()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 28

    .line 86
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    .line 88
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->qK()V

    .line 92
    :cond_0
    new-instance v12, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->avL:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bfW:I

    invoke-direct {v12, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;-><init>(II)V

    .line 95
    new-instance v13, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bdK:I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    const/16 v2, 0x49

    invoke-direct {v13, v12, v0, v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V

    .line 97
    new-instance v14, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;

    invoke-direct {v14, v12, v13}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 100
    invoke-virtual {v14}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sH()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v15

    .line 103
    invoke-static {v12, v13}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v16

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    move-result-object v17

    .line 107
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;->sB()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v18

    .line 108
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;->sC()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v19

    .line 111
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->se()Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object/from16 v20, v0

    .line 114
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->sc()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v21

    .line 117
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v22

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    move/from16 v1, v22

    invoke-static {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˏ(ILjava/security/SecureRandom;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v23

    .line 124
    new-instance v24, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aQb:I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    move-object/from16 v2, v24

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 127
    const/4 v0, 0x0

    aget-object v0, v23, v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object/from16 v25, v0

    .line 128
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object/from16 v25, v0

    .line 132
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aQb:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bdK:I

    move-object/from16 v4, v25

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    move-object/from16 v26, v0

    .line 133
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aQb:I

    move/from16 v3, v22

    move-object v4, v12

    move-object v5, v13

    const/4 v6, 0x1

    aget-object v6, v23, v6

    move-object/from16 v7, v19

    move-object/from16 v8, v24

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, p0

    iget-object v11, v11, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    move-object/from16 v27, v0

    .line 137
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method private qK()V
    .locals 3

    .line 63
    new-instance v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>()V

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    .line 64
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 65
    return-void
.end method

.method private ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 70
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    .line 73
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    .line 75
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->getM()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->avL:I

    .line 76
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->aQb:I

    .line 77
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bdK:I

    .line 78
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bgf:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->rs()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->bfW:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    .line 80
    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 148
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->qJ()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 144
    return-void
.end method
