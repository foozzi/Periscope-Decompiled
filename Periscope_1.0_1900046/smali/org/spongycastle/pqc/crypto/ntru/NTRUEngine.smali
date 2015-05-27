.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private aEW:Z

.field private aFa:Ljava/security/SecureRandom;

.field private bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

.field private bhe:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private bhf:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private copyOf([BI)[B
    .locals 4

    .line 479
    new-array v3, p2, [B

    .line 481
    array-length v0, p1

    if-ge p2, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    return-object v3
.end method

.method private ˊ(Lorg/spongycastle/crypto/Digest;I)V
    .locals 1

    .line 334
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 335
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 336
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 337
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 338
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/Digest;[B)[B
    .locals 3

    .line 351
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 353
    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 354
    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 356
    return-object v2
.end method

.method private ˊ([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 36

    .line 370
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 371
    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhc:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 372
    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v11, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v12, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgN:I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v13, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v14, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgS:I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v15, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    move/from16 v16, v1

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    move-object/from16 v17, v1

    .line 383
    const/16 v0, 0xff

    if-le v12, v0, :cond_0

    .line 385
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "maxMsgLenBytes values bigger than 255 are not supported"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    div-int/lit8 v18, v11, 0x8

    .line 390
    move-object/from16 v0, p1

    invoke-static {v0, v9, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᐠ([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v19

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v20

    .line 393
    move-object/from16 v0, v20

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->冫(I)I

    move-result v0

    if-ge v0, v13, :cond_1

    .line 395
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal -1"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    move-object/from16 v0, v20

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->冫(I)I

    move-result v0

    if-ge v0, v13, :cond_2

    .line 399
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 0"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_2
    move-object/from16 v0, v20

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->冫(I)I

    move-result v0

    if-ge v0, v13, :cond_3

    .line 403
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 1"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v21, v0

    .line 407
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 408
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 409
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v22, v0

    .line 410
    move-object/from16 v0, v22

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 411
    move-object/from16 v0, v22

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴳ(I)[B

    move-result-object v23

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v16

    invoke-direct {v0, v1, v9, v15, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˋ([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v24

    .line 413
    move-object/from16 v25, v20

    .line 414
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 415
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sU()V

    .line 416
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sR()[B

    move-result-object v26

    .line 418
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 419
    move-object/from16 v0, v26

    const/4 v1, 0x0

    move-object/from16 v2, v27

    const/4 v3, 0x0

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    aget-byte v0, v26, v18

    and-int/lit16 v1, v0, 0xff

    move/from16 v28, v1

    .line 421
    move/from16 v0, v28

    if-le v0, v12, :cond_4

    .line 423
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_4
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 426
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    const/4 v3, 0x0

    move/from16 v4, v28

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    move-object/from16 v0, v26

    array-length v0, v0

    add-int/lit8 v1, v18, 0x1

    add-int v1, v1, v28

    sub-int/2addr v0, v1

    new-array v1, v0, [B

    move-object/from16 v30, v1

    .line 428
    add-int/lit8 v0, v18, 0x1

    add-int v0, v0, v28

    move-object/from16 v1, v30

    array-length v1, v1

    move-object/from16 v2, v26

    move-object/from16 v3, v30

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    move-object/from16 v0, v30

    array-length v0, v0

    new-array v0, v0, [B

    move-object/from16 v1, v30

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 431
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "The message is not followed by zeroes"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_5
    invoke-virtual {v8, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴳ(I)[B

    move-result-object v31

    .line 436
    div-int/lit8 v0, v14, 0x8

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v32

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    move/from16 v3, v28

    move-object/from16 v4, v27

    move-object/from16 v5, v32

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ([B[BI[B[B)[B

    move-result-object v33

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ⁱ([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v34

    .line 440
    move-object/from16 v0, v34

    invoke-interface {v0, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v35

    .line 441
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 442
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 444
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Invalid message encoding"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_6
    return-object v29
.end method

.method private ˊ([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 30

    .line 104
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v7, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgN:I

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgO:I

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v11, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgP:I

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v12, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgR:I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v13, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgS:I

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v14, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgT:I

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v15, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgU:Z

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgV:[B

    move-object/from16 v16, v1

    .line 117
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    .line 118
    const/16 v0, 0xff

    if-le v9, v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "llen values bigger than 1 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    move/from16 v0, v17

    if-le v0, v9, :cond_1

    .line 124
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    :goto_0
    div-int/lit8 v0, v10, 0x8

    new-array v1, v0, [B

    move-object/from16 v18, v1

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->aFa:Ljava/security/SecureRandom;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 132
    add-int/lit8 v0, v9, 0x1

    sub-int v0, v0, v17

    new-array v1, v0, [B

    move-object/from16 v19, v1

    .line 133
    div-int/lit8 v0, v11, 0x8

    new-array v1, v0, [B

    move-object/from16 v20, v1

    .line 135
    move-object/from16 v0, v18

    array-length v0, v0

    move-object/from16 v1, v18

    const/4 v2, 0x0

    move-object/from16 v3, v20

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v1, v17

    int-to-byte v1, v1

    aput-byte v1, v20, v0

    .line 137
    move-object/from16 v0, v18

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    array-length v1, v1

    move-object/from16 v2, p1

    const/4 v3, 0x0

    move-object/from16 v4, v20

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    move-object/from16 v0, v18

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    array-length v1, v1

    add-int/2addr v0, v1

    move-object/from16 v1, v19

    array-length v1, v1

    move-object/from16 v2, v19

    const/4 v3, 0x0

    move-object/from16 v4, v20

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᕀ([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v21

    .line 143
    invoke-virtual {v6, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴳ(I)[B

    move-result-object v22

    .line 144
    div-int/lit8 v0, v13, 0x8

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v23

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ([B[BI[B[B)[B

    move-result-object v24

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ⁱ([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v25

    .line 148
    move-object/from16 v0, v25

    invoke-interface {v0, v6, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v26

    .line 149
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v27, v0

    .line 150
    move-object/from16 v0, v27

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 151
    move-object/from16 v0, v27

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴳ(I)[B

    move-result-object v28

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7, v14, v15}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˋ([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v29

    .line 153
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 154
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sU()V

    .line 156
    move-object/from16 v0, v21

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->冫(I)I

    move-result v0

    if-ge v0, v12, :cond_2

    .line 158
    goto/16 :goto_0

    .line 160
    :cond_2
    move-object/from16 v0, v21

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->冫(I)I

    move-result v0

    if-ge v0, v12, :cond_3

    .line 162
    goto/16 :goto_0

    .line 164
    :cond_3
    move-object/from16 v0, v21

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->冫(I)I

    move-result v0

    if-ge v0, v12, :cond_4

    .line 166
    goto/16 :goto_0

    .line 169
    :cond_4
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 170
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〵(I)V

    .line 171
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᴳ(I)[B

    move-result-object v0

    return-object v0
.end method

.method private ˊ([B[BI[B[B)[B
    .locals 4

    .line 177
    array-length v0, p1

    add-int/2addr v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    array-length v1, p5

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 179
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p4

    const/4 v2, 0x0

    invoke-static {p4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p4

    add-int/2addr v0, v1

    array-length v1, p5

    const/4 v2, 0x0

    invoke-static {p5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-object v3
.end method

.method private ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I
    .locals 6

    .line 238
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    .line 240
    new-array v2, v1, [I

    .line 241
    const/4 v3, -0x1

    :goto_0
    const/4 v0, 0x1

    if-gt v3, v0, :cond_2

    .line 243
    const/4 v4, 0x0

    .line 244
    :goto_1
    if-ge v4, p2, :cond_1

    .line 246
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v5

    .line 247
    aget v0, v2, v5

    if-nez v0, :cond_0

    .line 249
    aput v3, v2, v5

    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 252
    :cond_0
    goto :goto_1

    .line 241
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 255
    :cond_2
    return-object v2
.end method

.method private ˋ([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 13

    .line 269
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 270
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v3

    .line 271
    mul-int v0, p3, v3

    new-array v4, v0, [B

    .line 272
    if-eqz p4, :cond_0

    invoke-direct {p0, v2, p1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/crypto/Digest;[B)[B

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, p1

    .line 273
    :goto_0
    const/4 v6, 0x0

    .line 274
    :goto_1
    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    .line 276
    array-length v0, v5

    const/4 v1, 0x0

    invoke-interface {v2, v5, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 277
    invoke-direct {p0, v2, v6}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/crypto/Digest;I)V

    .line 279
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˏ(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v7

    .line 280
    mul-int v0, v6, v3

    const/4 v1, 0x0

    invoke-static {v7, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    add-int/lit8 v6, v6, 0x1

    .line 282
    goto :goto_1

    .line 284
    :cond_1
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v7, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 287
    :goto_2
    const/4 v8, 0x0

    .line 288
    const/4 v9, 0x0

    :goto_3
    array-length v0, v4

    if-eq v9, v0, :cond_6

    .line 290
    aget-byte v0, v4, v9

    and-int/lit16 v10, v0, 0xff

    .line 291
    const/16 v0, 0xf3

    if-lt v10, v0, :cond_2

    .line 293
    goto :goto_5

    .line 296
    :cond_2
    const/4 v11, 0x0

    :goto_4
    const/4 v0, 0x4

    if-ge v11, v0, :cond_4

    .line 298
    rem-int/lit8 v12, v10, 0x3

    .line 299
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v12, -0x1

    aput v1, v0, v8

    .line 300
    add-int/lit8 v8, v8, 0x1

    .line 301
    if-ne v8, p2, :cond_3

    .line 303
    return-object v7

    .line 305
    :cond_3
    sub-int v0, v10, v12

    div-int/lit8 v10, v0, 0x3

    .line 296
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 308
    :cond_4
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v10, -0x1

    aput v1, v0, v8

    .line 309
    add-int/lit8 v8, v8, 0x1

    .line 310
    if-ne v8, p2, :cond_5

    .line 312
    return-object v7

    .line 288
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 316
    :cond_6
    if-lt v8, p2, :cond_7

    .line 318
    return-object v7

    .line 321
    :cond_7
    array-length v0, v5

    const/4 v1, 0x0

    invoke-interface {v2, v5, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 322
    invoke-direct {p0, v2, v6}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/crypto/Digest;I)V

    .line 324
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˏ(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v9

    .line 326
    move-object v4, v9

    .line 328
    add-int/lit8 v6, v6, 0x1

    .line 329
    goto/16 :goto_2
.end method

.method private ˏ(Lorg/spongycastle/crypto/Digest;)[B
    .locals 2

    .line 342
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    .line 344
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 346
    return-object v1
.end method

.method private Γ(I)I
    .locals 2

    .line 488
    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    .line 490
    const/16 v0, 0xb

    return v0

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "log2 not fully implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ⁱ([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .locals 6

    .line 203
    new-instance v2, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {v2, p1, v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;-><init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 205
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgI:I

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 208
    new-instance v4, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgJ:I

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 209
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgK:I

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 210
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v0, v3, v4, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgH:I

    .line 215
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgW:Z

    .line 216
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v5

    .line 217
    if-eqz v4, :cond_1

    .line 219
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v0, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object v0

    .line 223
    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v0, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public iB()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgN:I

    return v0
.end method

.method public iC()I
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->Γ(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 4

    .line 459
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    invoke-interface {p2, p1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    .line 462
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵚ(I)V

    .line 463
    invoke-virtual {v2, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    invoke-interface {p2, p1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    .line 469
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgC:I

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->亠(I)V

    .line 470
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sU()V

    .line 472
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgX:Z

    if-eqz v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v0, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    const/4 v1, 0x3

    invoke-virtual {v0, p3, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    .line 473
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->亠(I)V

    .line 474
    return-object v3
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 42
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->aEW:Z

    .line 43
    if-eqz p1, :cond_1

    .line 45
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 49
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->aFa:Ljava/security/SecureRandom;

    .line 50
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bhe:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .line 51
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->aFa:Ljava/security/SecureRandom;

    .line 55
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bhe:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .line 58
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bhe:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->rz()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    goto :goto_1

    .line 62
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bhf:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    .line 63
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bhf:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->rz()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    .line 65
    :goto_1
    return-void
.end method

.method public ˑ([BII)[B
    .locals 2

    .line 80
    new-array v1, p3, [B

    .line 82
    const/4 v0, 0x0

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->aEW:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bhe:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->bhf:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->ˊ([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0
.end method
