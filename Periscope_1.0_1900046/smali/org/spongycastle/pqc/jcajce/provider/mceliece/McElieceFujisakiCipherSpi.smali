.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;
.super Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi$McElieceFujisaki512;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi$McElieceFujisaki384;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi$McElieceFujisaki256;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi$McElieceFujisaki224;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi$McElieceFujisaki;
    }
.end annotation


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private biy:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

.field private biz:Ljava/io/ByteArrayOutputStream;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biy:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    .line 50
    return-void
.end method


# virtual methods
.method public doFinal([BII)[B
    .locals 4

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->update([BII)[B

    .line 82
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 83
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biy:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->וֹ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v3

    .line 93
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biI:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 102
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biy:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ﹲ([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 104
    :catch_1
    move-exception v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public update([BII)[B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 146
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biy:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 148
    return-void
.end method

.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 131
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 133
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v2, p3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v2, v0

    .line 134
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 135
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biy:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 137
    return-void
.end method

.method public ˋ(Ljava/security/Key;)I
    .locals 2

    .line 159
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 161
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object v1, v0

    goto :goto_0

    .line 165
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object v1, v0

    .line 170
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->biy:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result v0

    return v0
.end method

.method protected ϛ(I)I
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected ч(I)I
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method
