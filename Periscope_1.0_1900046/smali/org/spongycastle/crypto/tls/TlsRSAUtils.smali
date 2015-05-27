.class public Lorg/spongycastle/crypto/tls/TlsRSAUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B
    .locals 5

    .line 21
    const/16 v0, 0x30

    new-array v2, v0, [B

    .line 22
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 23
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lI()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 25
    new-instance v3, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v3, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 26
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 30
    :try_start_0
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v1, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ˑ([BII)[B

    move-result-object v4

    .line 32
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    goto :goto_1

    .line 42
    :catch_0
    move-exception v4

    .line 47
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 50
    :goto_1
    return-object v2
.end method

.method public static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;[B)[B
    .locals 11

    .line 68
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lI()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    .line 71
    const/4 v5, 0x0

    .line 77
    const/16 v0, 0x30

    new-array v6, v0, [B

    .line 78
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 80
    invoke-static {v6}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v7

    .line 83
    :try_start_0
    new-instance v8, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v8, v0, v6}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;[B)V

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 87
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {v8, p2, v1, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ˑ([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    .line 100
    goto :goto_0

    .line 89
    :catch_0
    move-exception v8

    .line 106
    :goto_0
    nop

    .line 123
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/4 v1, 0x0

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    const/4 v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    or-int v8, v0, v1

    .line 125
    shr-int/lit8 v0, v8, 0x1

    or-int/2addr v8, v0

    .line 126
    shr-int/lit8 v0, v8, 0x2

    or-int/2addr v8, v0

    .line 127
    shr-int/lit8 v0, v8, 0x4

    or-int/2addr v8, v0

    .line 128
    and-int/lit8 v0, v8, 0x1

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v9, v0, -0x1

    .line 133
    const/4 v10, 0x0

    :goto_1
    const/16 v0, 0x30

    if-ge v10, v0, :cond_0

    .line 135
    aget-byte v0, v7, v10

    xor-int/lit8 v1, v9, -0x1

    and-int/2addr v0, v1

    aget-byte v1, v6, v10

    and-int/2addr v1, v9

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v7, v10

    .line 133
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 138
    :cond_0
    return-object v7
.end method
