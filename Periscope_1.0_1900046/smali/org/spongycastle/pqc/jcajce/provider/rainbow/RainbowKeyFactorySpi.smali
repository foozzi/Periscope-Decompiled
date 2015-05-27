.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5

    .line 74
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;)V

    return-object v0

    .line 78
    :cond_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    .line 85
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;->ˊ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 87
    :catch_0
    move-exception v4

    .line 89
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5

    .line 125
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;)V

    return-object v0

    .line 129
    :cond_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1

    .line 132
    move-object v0, p1

    check-cast v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    .line 137
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;->ˋ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 139
    :catch_0
    move-exception v4

    .line 141
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 8

    .line 164
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-eqz v0, :cond_1

    .line 166
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v0

    .line 170
    :cond_0
    const-class v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    move-object v7, v0

    .line 173
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qx()[[S

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qy()[S

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qA()[[S

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qz()[S

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qC()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-object v0

    .line 178
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-eqz v0, :cond_3

    .line 180
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object v0

    .line 184
    :cond_2
    const-class v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    move-object v7, v0

    .line 187
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qD()I

    move-result v1

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qE()[[S

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qF()[[S

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qG()[S

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;-><init>(I[[S[[S[S)V

    return-object v0

    .line 194
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2

    .line 213
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    return-object p1

    .line 218
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 8

    .line 224
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->Ȉ(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    move-result-object v7

    .line 226
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->qx()[[S

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->qy()[S

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->qA()[[S

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->qz()[S

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->qC()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 6

    .line 232
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->ȋ(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    move-result-object v5

    .line 234
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->qD()I

    move-result v1

    invoke-virtual {v5}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->qE()[[S

    move-result-object v2

    invoke-virtual {v5}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->qF()[[S

    move-result-object v3

    invoke-virtual {v5}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->qG()[S

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    return-object v0
.end method
