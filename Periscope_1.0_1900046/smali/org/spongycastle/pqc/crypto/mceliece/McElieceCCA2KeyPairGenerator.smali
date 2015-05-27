.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aQb:I

.field private avL:I

.field private bdK:I

.field private bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

.field private bfW:I

.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->initialized:Z

    return-void
.end method

.method private qK()V
    .locals 3

    .line 57
    new-instance v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;-><init>()V

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    .line 58
    invoke-virtual {p0, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 59
    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 22

    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    .line 83
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->qK()V

    .line 87
    :cond_0
    new-instance v10, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->avL:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfW:I

    invoke-direct {v10, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;-><init>(II)V

    .line 90
    new-instance v11, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bdK:I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    const/16 v2, 0x49

    invoke-direct {v11, v10, v0, v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V

    .line 92
    new-instance v12, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;

    invoke-direct {v12, v10, v11}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 95
    invoke-virtual {v12}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sH()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v13

    .line 98
    invoke-static {v10, v11}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v14

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-static {v14, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    move-result-object v15

    .line 102
    invoke-virtual {v15}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;->sB()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v16

    .line 103
    invoke-virtual {v15}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;->sC()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v17

    .line 106
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->se()Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object/from16 v18, v0

    .line 109
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v19

    .line 112
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2"

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->aQb:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bdK:I

    move-object/from16 v4, v18

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    move-object/from16 v20, v0

    .line 113
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2"

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->aQb:I

    move/from16 v3, v19

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v17

    move-object v7, v14

    move-object v8, v13

    move-object/from16 v9, p0

    iget-object v9, v9, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    move-object/from16 v21, v0

    .line 117
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 65
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    .line 68
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    .line 70
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getM()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->avL:I

    .line 71
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->aQb:I

    .line 72
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bdK:I

    .line 73
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfV:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rs()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->bfW:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->initialized:Z

    .line 75
    return-void
.end method
