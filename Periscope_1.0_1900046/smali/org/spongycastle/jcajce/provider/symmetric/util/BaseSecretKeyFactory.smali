.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field public aZp:Ljava/lang/String;

.field public aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->aZp:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2

    .line 33
    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6

    .line 46
    if-nez p2, :cond_0

    .line 48
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec parameter is null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p1, :cond_1

    .line 52
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->aZp:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/Class;

    const-class v0, [B

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 64
    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 65
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    .line 67
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v3

    .line 73
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 3

    .line 81
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->aZp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->aZp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->aZp:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
