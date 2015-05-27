.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;
.super Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval512;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval384;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval256;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval224;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval;
    }
.end annotation


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private biE:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

.field private biz:Ljava/io/ByteArrayOutputStream;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    .line 46
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biE:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    .line 49
    return-void
.end method


# virtual methods
.method public doFinal([BII)[B
    .locals 4

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->update([BII)[B

    .line 81
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 82
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 83
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biE:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->וֹ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 90
    :catch_0
    move-exception v3

    .line 92
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    goto :goto_0

    .line 96
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biI:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 101
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biE:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ﹲ([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 103
    :catch_1
    move-exception v3

    .line 105
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public update([BII)[B
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3

    .line 139
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 141
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 142
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biE:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 143
    return-void
.end method

.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 128
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 130
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v2, p3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v2, v0

    .line 131
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biE:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 133
    return-void
.end method

.method public ˋ(Ljava/security/Key;)I
    .locals 2

    .line 155
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 157
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object v1, v0

    goto :goto_0

    .line 161
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object v1, v0

    .line 164
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->biE:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result v0

    return v0
.end method

.method protected ϛ(I)I
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method protected ч(I)I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method
