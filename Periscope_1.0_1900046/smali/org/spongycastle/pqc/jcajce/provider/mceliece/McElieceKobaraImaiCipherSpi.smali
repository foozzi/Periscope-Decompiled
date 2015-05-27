.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;
.super Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi$McElieceKobaraImai512;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi$McElieceKobaraImai384;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi$McElieceKobaraImai256;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi$McElieceKobaraImai224;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi$McElieceKobaraImai;
    }
.end annotation


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

.field private biz:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    .line 48
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    .line 52
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 53
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    .line 55
    return-void
.end method

.method private sa()[B
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 193
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 194
    return-object v2
.end method

.method private ʺ([B)[B
    .locals 4

    .line 209
    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 215
    :cond_0
    aget-byte v0, p1, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 217
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "invalid ciphertext"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-array v3, v2, [B

    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-object v3
.end method


# virtual methods
.method public doFinal([BII)[B
    .locals 4

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->update([BII)[B

    .line 89
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->sa()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->וֹ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 96
    :catch_0
    move-exception v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    goto :goto_0

    .line 102
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biI:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 109
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ﹲ([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->ʺ([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 111
    :catch_1
    move-exception v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public update([BII)[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 151
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 153
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 154
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 155
    return-void
.end method

.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 138
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 140
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v2, p3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v2, v0

    .line 141
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 142
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 143
    return-void
.end method

.method public ˋ(Ljava/security/Key;)I
    .locals 2

    .line 166
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 168
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object v1, v0

    .line 169
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result v0

    return v0

    .line 171
    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 173
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object v1, v0

    .line 174
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKobaraImaiCipherSpi;->biC:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result v0

    return v0

    .line 178
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    throw v0
.end method

.method protected ϛ(I)I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected ч(I)I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method
