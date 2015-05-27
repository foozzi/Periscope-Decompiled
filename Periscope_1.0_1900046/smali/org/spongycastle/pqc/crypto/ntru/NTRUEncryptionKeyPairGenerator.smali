.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 22

    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->aMJ:I

    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v7, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgC:I

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgD:I

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v9, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgE:I

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v10, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgF:I

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v11, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgG:I

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v12, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgL:I

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v13, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgX:Z

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v14, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgW:Z

    .line 50
    const/16 v17, 0x0

    .line 58
    :goto_0
    if-eqz v13, :cond_1

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v6, v8, v8, v14, v0}, Lorg/spongycastle/pqc/math/ntru/util/Util;->ˊ(IIIZLjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v15

    goto :goto_1

    :cond_0
    move v0, v6

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->ˊ(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v15

    .line 62
    :goto_1
    invoke-interface {v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v18

    .line 63
    move-object/from16 v0, v18

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵚ(I)V

    .line 64
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    goto :goto_3

    .line 68
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_2

    add-int/lit8 v0, v8, -0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {v6, v8, v0, v14, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->ˊ(IIIZLjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v15

    goto :goto_2

    :cond_2
    move v0, v6

    move v1, v9

    move v2, v10

    move v3, v11

    add-int/lit8 v4, v11, -0x1

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->ˊ(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v15

    .line 69
    :goto_2
    invoke-interface {v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v18

    .line 70
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sS()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v17

    .line 71
    if-nez v17, :cond_3

    .line 73
    goto/16 :goto_0

    .line 77
    :cond_3
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴼ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v16

    .line 78
    if-nez v16, :cond_4

    .line 80
    goto/16 :goto_0

    .line 86
    :cond_4
    if-eqz v13, :cond_5

    .line 88
    new-instance v17, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 89
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 96
    :cond_5
    add-int/lit8 v0, v12, -0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {v6, v12, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->ˊ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v18

    .line 97
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->ᴼ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 99
    .line 103
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v19

    .line 104
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵦ(I)V

    .line 105
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〵(I)V

    .line 106
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->clear()V

    .line 107
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clear()V

    .line 109
    new-instance v20, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->rx()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v1, v2, v15, v3, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 110
    new-instance v21, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->bgZ:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->rx()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 111
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method
