.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA1KDF;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA1KDF;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQV;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;
    }
.end annotation


# static fields
.field private static final aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

.field private static final aWA:Ljava/util/Hashtable;

.field private static final aWT:Ljava/util/Hashtable;

.field private static final aWU:Ljava/util/Hashtable;


# instance fields
.field private aKw:Lorg/spongycastle/crypto/DerivationFunction;

.field private aWV:Ljava/lang/String;

.field private aWW:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private aWX:Lorg/spongycastle/crypto/BasicAgreement;

.field private aWz:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWT:Ljava/util/Hashtable;

    .line 58
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWU:Ljava/util/Hashtable;

    .line 62
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 63
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 64
    const/16 v0, 0xc0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 65
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 67
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aox:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aom:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aot:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->asG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWT:Ljava/util/Hashtable;

    const-string v1, "DESEDE"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWT:Ljava/util/Hashtable;

    const-string v1, "AES"

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aox:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWT:Ljava/util/Hashtable;

    const-string v1, "DES"

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWU:Ljava/util/Hashtable;

    const-string v1, "DES"

    const-string v2, "DES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWU:Ljava/util/Hashtable;

    const-string v1, "DESEDE"

    const-string v2, "DES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWU:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWU:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWU:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->asG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWX:Lorg/spongycastle/crypto/BasicAgreement;

    .line 107
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    .line 108
    return-void
.end method

.method private ʽ(Ljava/math/BigInteger;)[B
    .locals 3

    .line 97
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWW:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->ˏ(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->ˊ(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/security/Key;)V
    .locals 8

    .line 267
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWX:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of v0, v0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v0, :cond_2

    .line 269
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ᐨ(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for initialisation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    move-object v3, v0

    .line 276
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->oP()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object v4, v0

    .line 278
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->oQ()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object v5, v0

    .line 281
    const/4 v6, 0x0

    .line 282
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->oR()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->oR()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v6, v0

    .line 288
    :cond_1
    new-instance v7, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-direct {v7, v4, v5, v6}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;-><init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 289
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWW:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 293
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWX:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0, v7}, Lorg/spongycastle/crypto/BasicAgreement;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 294
    goto :goto_0

    .line 297
    :cond_2
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_3

    .line 299
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ᐨ(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for initialisation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object v3, v0

    .line 304
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWW:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 306
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWX:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0, v3}, Lorg/spongycastle/crypto/BasicAgreement;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 308
    :goto_0
    return-void
.end method

.method private static ᐨ(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .line 312
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 314
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 7

    .line 115
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWW:Lorg/spongycastle/crypto/params/ECDomainParameters;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be between two parties."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWX:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of v0, v0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v0, :cond_3

    .line 128
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    if-nez v0, :cond_2

    .line 130
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ᐨ(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for doPhase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    move-object v4, v0

    .line 135
    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->oS()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v5, v0

    .line 137
    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->oT()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v6, v0

    .line 140
    new-instance v3, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    invoke-direct {v3, v5, v6}, Lorg/spongycastle/crypto/params/MQVPublicParameters;-><init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 143
    goto :goto_0

    .line 146
    :cond_3
    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_4

    .line 148
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ᐨ(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for doPhase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_4
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    .line 157
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWX:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0, v3}, Lorg/spongycastle/crypto/BasicAgreement;->ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4

    .line 179
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v3

    .line 181
    array-length v0, p1

    sub-int/2addr v0, p2

    array-length v1, v3

    if-ge v0, v1, :cond_0

    .line 183
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement: need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    array-length v0, v3

    const/4 v1, 0x0

    invoke-static {v3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v0, v3

    return v0
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 9

    .line 195
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ʽ(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 196
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    move-object v5, p1

    .line 199
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWT:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWT:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown algorithm encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 213
    new-instance v7, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0, v6, v3}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;I[B)V

    .line 215
    div-int/lit8 v0, v6, 0x8

    new-array v8, v0, [B

    .line 216
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v0, v7}, Lorg/spongycastle/crypto/DerivationFunction;->ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 217
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v1, v8

    const/4 v2, 0x0

    invoke-interface {v0, v8, v2, v1}, Lorg/spongycastle/crypto/DerivationFunction;->ᐧ([BII)I

    .line 218
    move-object v3, v8

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 226
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v7, v0, [B

    .line 228
    array-length v0, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    move-object v3, v7

    .line 234
    :cond_3
    :goto_0
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWU:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    invoke-static {v3}, Lorg/spongycastle/crypto/params/DESParameters;->ı([B)V

    .line 239
    :cond_4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KDF can only be used when algorithm is known"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ʽ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ˊ(Ljava/security/Key;)V

    .line 262
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 248
    if-eqz p2, :cond_0

    .line 250
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->ˊ(Ljava/security/Key;)V

    .line 254
    return-void
.end method
