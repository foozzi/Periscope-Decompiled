.class public abstract Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;
.super Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;
.source ""


# instance fields
.field public bgh:I

.field public bgi:I

.field protected biz:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;-><init>()V

    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biz:Ljava/io/ByteArrayOutputStream;

    .line 53
    return-void
.end method


# virtual methods
.method public final doFinal([BII[BI)I
    .locals 3

    .line 391
    array-length v0, p4

    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->getOutputSize(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 393
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->doFinal([BII)[B

    move-result-object v2

    .line 397
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    array-length v0, v2

    return v0
.end method

.method public final doFinal([BII)[B
    .locals 2

    .line 352
    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->ѓ(I)V

    .line 353
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->update([BII)[B

    .line 354
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 355
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 357
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biI:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 360
    :sswitch_0
    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->וֹ([B)[B

    move-result-object v0

    return-object v0

    .line 363
    :sswitch_1
    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->ﹲ([B)[B

    move-result-object v0

    return-object v0

    .line 366
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getBlockSize()I
    .locals 2

    .line 66
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->bgh:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->bgi:I

    :goto_0
    return v0
.end method

.method public final getIV()[B
    .locals 1

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 3

    .line 95
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int v1, p1, v0

    .line 97
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->getBlockSize()I

    move-result v2

    .line 99
    if-le v1, v2, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_0
    return v2
.end method

.method public final update([BII[BI)I
    .locals 1

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->update([BII)[B

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public final update([BII)[B
    .locals 1

    .line 312
    if-eqz p3, :cond_0

    .line 314
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final Ȉ(Ljava/lang/String;)V
    .locals 0

    .line 421
    return-void
.end method

.method public abstract ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
.end method

.method public abstract ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
.end method

.method public final ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 297
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biI:I

    .line 298
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 299
    return-void
.end method

.method public final ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biI:I

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 240
    return-void
.end method

.method protected ѓ(I)V
    .locals 4

    .line 439
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int v3, p1, v0

    .line 441
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 443
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->bgh:I

    if-le v3, v0, :cond_1

    .line 445
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The length of the plaintext ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes) is not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "the cipher (max. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->bgh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->biI:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 454
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->bgi:I

    if-eq v3, v0, :cond_1

    .line 456
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal ciphertext length (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->bgi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    return-void
.end method

.method public abstract וֹ([B)[B
.end method

.method public abstract ﹲ([B)[B
.end method

.method protected final ｨ(Ljava/lang/String;)V
    .locals 0

    .line 410
    return-void
.end method
