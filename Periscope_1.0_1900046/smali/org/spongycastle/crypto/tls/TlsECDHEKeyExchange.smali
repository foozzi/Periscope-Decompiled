.class public Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;
.source ""


# instance fields
.field protected aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .locals 1

    .line 27
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 28
    return-void
.end method


# virtual methods
.method public lL()[B
    .locals 14

    .line 49
    const/4 v3, -0x1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSF:[I

    if-nez v0, :cond_0

    .line 53
    const/16 v3, 0x17

    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSF:[I

    array-length v0, v0

    if-ge v4, v0, :cond_2

    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSF:[I

    aget v5, v0, v4

    .line 60
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/NamedCurve;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᓳ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    move v3, v5

    .line 63
    goto :goto_1

    .line 57
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 69
    if-ltz v3, :cond_3

    .line 71
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᒧ(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    goto :goto_2

    .line 78
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSF:[I

    const v1, 0xff01

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ʾ([II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    const/16 v0, 0x17

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᒧ(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    goto :goto_2

    .line 82
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSF:[I

    const v1, 0xff02

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ʾ([II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᒧ(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 88
    :cond_5
    :goto_2
    if-nez v4, :cond_6

    .line 94
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 97
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v5

    .line 98
    invoke-virtual {v5}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aVi:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 100
    new-instance v6, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v6}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    .line 102
    if-gez v3, :cond_7

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSG:[S

    invoke-static {v0, v4, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 108
    :cond_7
    invoke-static {v3, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˏ(ILjava/io/OutputStream;)V

    .line 111
    :goto_3
    invoke-virtual {v5}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v7, v0

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSG:[S

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->lO()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v8

    .line 123
    if-nez v8, :cond_8

    .line 125
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 128
    :cond_8
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v9

    goto :goto_4

    .line 132
    :cond_9
    const/4 v8, 0x0

    .line 133
    new-instance v9, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v9}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    .line 136
    :goto_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v10

    .line 137
    iget-object v0, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    iget-object v1, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v9, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v0, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    iget-object v1, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v9, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 139
    invoke-virtual {v6, v9}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->ˎ(Lorg/spongycastle/crypto/Digest;)V

    .line 141
    invoke-interface {v9}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 142
    const/4 v0, 0x0

    invoke-interface {v9, v11, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v0, v11}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->ﯨ([B)[B

    move-result-object v12

    .line 146
    new-instance v13, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v13, v8, v12}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 147
    invoke-virtual {v13, v6}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 149
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public ˈ(Ljava/io/InputStream;)V
    .locals 9

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    .line 157
    new-instance v3, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 158
    new-instance v4, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v4, p1, v3}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSF:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSG:[S

    invoke-static {v0, v1, v4}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([I[SLjava/io/InputStream;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v5

    .line 162
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v7

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/DigitallySigned;->mm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v8

    .line 167
    invoke-virtual {v3, v8}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->ˊ(Lorg/spongycastle/crypto/Signer;)V

    .line 168
    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v0

    invoke-interface {v8, v0}, Lorg/spongycastle/crypto/Signer;->ᵔ([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aSG:[S

    invoke-static {v0, v5, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 175
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v3

    .line 217
    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 218
    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 219
    return-object v3
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 33
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 38
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 40
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 41
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 4

    .line 186
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->lR()[S

    move-result-object v2

    .line 187
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 189
    aget-short v0, v2, v3

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 194
    :sswitch_0
    goto :goto_2

    .line 196
    :goto_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 187
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 204
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 212
    :goto_0
    return-void
.end method
