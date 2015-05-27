.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$1;,
        Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;,
        Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;
    }
.end annotation


# instance fields
.field private bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    return-void
.end method

.method private rD()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    .locals 34

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aMJ:I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v9, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v10, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->aOn:I

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v11, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhm:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v12, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhn:I

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v13, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bho:I

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v14, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhy:I

    .line 190
    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v23, v0, 0x1

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-boolean v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhx:Z

    move/from16 v24, v1

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_1

    add-int/lit8 v0, v10, 0x1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v8, v0, v10, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->ˊ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v15

    goto :goto_0

    :cond_1
    move v0, v8

    move v1, v11

    move v2, v12

    add-int/lit8 v3, v13, 0x1

    move v4, v13

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->ˊ(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v15

    .line 198
    :goto_0
    invoke-interface {v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v16

    .line 200
    if-eqz v24, :cond_2

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵍ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->bjR:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴼ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v19

    .line 203
    if-eqz v19, :cond_0

    .line 204
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sT()Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;

    move-result-object v20

    .line 212
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgY:I

    if-nez v0, :cond_4

    add-int/lit8 v0, v10, 0x1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v8, v0, v10, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->ˊ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v17

    goto :goto_1

    :cond_4
    move v0, v8

    move v1, v11

    move v2, v12

    add-int/lit8 v3, v13, 0x1

    move v4, v13

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->ˊ(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v17

    .line 213
    :goto_1
    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v18

    .line 215
    if-eqz v24, :cond_5

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵍ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->bjR:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴼ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sT()Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;

    move-result-object v21

    .line 219
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjR:Ljava/math/BigInteger;

    move-object/from16 v1, v21

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjR:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->ͺ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    move-result-object v22

    .line 221
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->bjv:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v25, v0

    .line 224
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aFO:Ljava/math/BigInteger;

    int-to-long v1, v9

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->י(Ljava/math/BigInteger;)V

    .line 225
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v26, v0

    .line 226
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aPZ:Ljava/math/BigInteger;

    neg-int v1, v9

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->י(Ljava/math/BigInteger;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhA:I

    if-nez v0, :cond_7

    .line 231
    new-array v0, v8, [I

    move-object/from16 v28, v0

    .line 232
    new-array v0, v8, [I

    move-object/from16 v29, v0

    .line 233
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aput v0, v28, v1

    .line 234
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aput v0, v29, v1

    .line 235
    const/16 v30, 0x1

    :goto_2
    move/from16 v0, v30

    if-ge v0, v8, :cond_6

    .line 237
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    sub-int v1, v8, v30

    aget v0, v0, v1

    aput v0, v28, v30

    .line 238
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    sub-int v1, v8, v30

    aget v0, v0, v1

    aput v0, v29, v30

    .line 235
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 240
    :cond_6
    new-instance v30, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 241
    new-instance v31, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 243
    move-object/from16 v0, v30

    invoke-interface {v15, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v32

    .line 244
    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 245
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sT()Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;

    move-result-object v33

    .line 246
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v27

    .line 247
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 248
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v27

    .line 249
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjR:Ljava/math/BigInteger;

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ٴ(Ljava/math/BigInteger;)V

    .line 250
    goto :goto_4

    .line 254
    :cond_7
    const/16 v28, 0x0

    .line 255
    const/16 v29, 0x1

    :goto_3
    move/from16 v0, v29

    if-ge v0, v8, :cond_8

    .line 257
    add-int/lit8 v28, v28, 0x1

    .line 255
    mul-int/lit8 v29, v29, 0xa

    goto :goto_3

    .line 264
    :cond_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    new-instance v1, Ljava/math/BigDecimal;

    move-object/from16 v2, v20

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjR:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->sM()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˊ(Ljava/math/BigDecimal;I)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v29

    .line 265
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    new-instance v1, Ljava/math/BigDecimal;

    move-object/from16 v2, v21

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;->bjR:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->sM()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˊ(Ljava/math/BigDecimal;I)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v30

    .line 267
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v31

    .line 268
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 269
    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->sK()V

    .line 270
    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->sL()Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v27

    .line 273
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v28, v0

    .line 274
    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ᐝ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 275
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v29, v0

    .line 276
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ᐝ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 278
    new-instance v30, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 279
    new-instance v31, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 284
    if-nez v14, :cond_9

    .line 286
    move-object/from16 v32, v30

    .line 287
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v33

    goto :goto_5

    .line 291
    :cond_9
    move-object/from16 v32, v17

    .line 292
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v33

    .line 294
    :goto_5
    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 296
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    move-object/from16 v1, p0

    iget-object v7, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;-><init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    return-object v0
.end method

.method private ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 15

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, p5

    if-ge v5, v0, :cond_0

    .line 118
    mul-int/lit8 v0, p5, 0x2

    move-object/from16 v1, p1

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v1, v5

    move-object/from16 v2, p1

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v2, v2, v5

    mul-int/2addr v1, v2

    move-object/from16 v2, p2

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v2, v2, v5

    move-object/from16 v3, p2

    iget-object v3, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v3, v3, v5

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    :cond_0
    add-int/lit8 v4, v4, -0x4

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object v5, v0

    .line 125
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object v6, v0

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x0

    .line 128
    move/from16 v9, p5

    .line 129
    :goto_1
    if-ge v8, v9, :cond_4

    move/from16 v0, p5

    if-ge v7, v0, :cond_4

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    :goto_2
    move/from16 v0, p5

    if-ge v11, v0, :cond_1

    .line 135
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v11

    move-object/from16 v1, p1

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v1, v11

    mul-int v12, v0, v1

    .line 136
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v11

    move-object/from16 v1, p2

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v1, v11

    mul-int v13, v0, v1

    .line 137
    mul-int/lit8 v0, p5, 0x4

    add-int v1, v12, v13

    mul-int v14, v0, v1

    .line 138
    add-int/2addr v10, v14

    .line 139
    add-int/lit8 v11, v11, 0x1

    .line 140
    goto :goto_2

    .line 142
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sV()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sV()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v12, v0, 0x4

    .line 143
    sub-int/2addr v10, v12

    .line 145
    if-le v10, v4, :cond_2

    .line 147
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 148
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 150
    const/4 v7, 0x0

    goto :goto_3

    .line 152
    :cond_2
    neg-int v0, v4

    if-ge v10, v0, :cond_3

    .line 154
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 155
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    const/4 v7, 0x0

    .line 159
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 160
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sZ()V

    .line 161
    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sZ()V

    .line 162
    goto/16 :goto_1

    .line 163
    :cond_4
    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v5, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    :goto_0
    if-ltz v5, :cond_0

    .line 50
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$1;)V

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    :goto_1
    if-ltz v6, :cond_2

    .line 58
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v7, v0

    .line 61
    :try_start_0
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhp:I

    if-ne v6, v0, :cond_1

    .line 64
    new-instance v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->rB()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    goto :goto_2

    .line 67
    :catch_0
    move-exception v8

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 56
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 72
    :cond_2
    new-instance v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {v6, v5, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)V

    .line 73
    new-instance v7, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v7, v2, v6}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 74
    return-object v7
.end method

.method public rE()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 2

    .line 308
    :goto_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->rD()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->rG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    return-object v1

    .line 313
    :cond_0
    goto :goto_0
.end method
