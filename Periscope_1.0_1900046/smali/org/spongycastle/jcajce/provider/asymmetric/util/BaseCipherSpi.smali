.class public abstract Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source ""


# instance fields
.field protected aXL:Lorg/spongycastle/crypto/Wrapper;

.field protected aXe:Ljava/security/AlgorithmParameters;

.field private aXo:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->aXo:[Ljava/lang/Class;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->aXe:Ljava/security/AlgorithmParameters;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->aXL:Lorg/spongycastle/crypto/Wrapper;

    .line 54
    return-void
.end method


# virtual methods
.method public engineGetBlockSize()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    .line 69
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public engineGetOutputSize(I)I
    .locals 1

    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 3

    .line 87
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 94
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 6

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->aXL:Lorg/spongycastle/crypto/Wrapper;

    if-nez v0, :cond_0

    .line 135
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B

    move-result-object v3

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->aXL:Lorg/spongycastle/crypto/Wrapper;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Wrapper;->ﹳ([BII)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 153
    :goto_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception v4

    .line 144
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :catch_1
    move-exception v4

    .line 148
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :catch_2
    move-exception v4

    .line 152
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :goto_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 157
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 159
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 167
    :try_start_1
    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 169
    invoke-static {v4}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˏ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 171
    if-eqz v5, :cond_2

    .line 173
    return-object v5

    .line 177
    :cond_2
    :try_start_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 180
    :catch_3
    move-exception v4

    .line 182
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Invalid key encoding."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3
    const-string v0, "SC"

    :try_start_3
    invoke-static {p2, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 191
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 193
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    return-object v0

    .line 195
    :cond_4
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 197
    :try_start_4
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    return-object v0

    .line 211
    :cond_5
    goto :goto_2

    .line 200
    :catch_4
    move-exception v4

    .line 202
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :catch_5
    move-exception v4

    .line 206
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catch_6
    move-exception v4

    .line 210
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :goto_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5

    .line 101
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 102
    if-nez v3, :cond_0

    .line 104
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Cannot wrap key, null encoding."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->aXL:Lorg/spongycastle/crypto/Wrapper;

    if-nez v0, :cond_1

    .line 111
    array-length v0, v3

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->aXL:Lorg/spongycastle/crypto/Wrapper;

    array-length v1, v3

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/Wrapper;->ᐨ([BII)[B
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 118
    :catch_0
    move-exception v4

    .line 120
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
