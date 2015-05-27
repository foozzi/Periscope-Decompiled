.class public Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/spongycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;,
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;,
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;,
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStore3DES;,
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStore;,
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore3DES;,
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;,
        Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    }
.end annotation


# static fields
.field private static final aYA:Ljava/security/Provider;

.field private static final aYB:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field protected aFa:Ljava/security/SecureRandom;

.field private aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private aYD:Ljava/util/Hashtable;

.field private aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private aYF:Ljava/util/Hashtable;

.field private aYG:Ljava/util/Hashtable;

.field private aYH:Ljava/security/cert/CertificateFactory;

.field private aYI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private aYJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    .line 110
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYB:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 4

    .line 185
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 112
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYD:Ljava/util/Hashtable;

    .line 114
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 115
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    .line 134
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    .line 186
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    if-eqz p1, :cond_0

    .line 193
    const-string v0, "X.509"

    :try_start_0
    invoke-static {v0, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYH:Ljava/security/cert/CertificateFactory;

    goto :goto_0

    .line 197
    :cond_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYH:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    goto :goto_1

    .line 200
    :catch_0
    move-exception v3

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create cert factory - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :goto_1
    return-void
.end method

.method static synthetic nP()Ljava/security/Provider;
    .locals 1

    .line 102
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    return-object v0
.end method

.method private static ʻ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5

    .line 224
    new-instance v2, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 225
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 227
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 228
    array-length v0, v4

    const/4 v1, 0x0

    invoke-interface {v2, v4, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 229
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 230
    return-object v3
.end method

.method private ˊ(I[CLorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .locals 15

    .line 728
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->ᵧ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v6

    .line 729
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->fP()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->וּ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v7

    .line 730
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->fQ()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    .line 732
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->fP()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v9

    .line 735
    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->fR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->fN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    sget-object v3, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYB:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v3, v8}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->ˋ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v3

    move-object/from16 v4, p2

    invoke-direct {v0, v4, v1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v9, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v10

    goto :goto_0

    .line 741
    :cond_0
    new-instance v0, Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->fN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYB:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v1, v8}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->ˋ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->fS()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v9, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v10

    .line 744
    :goto_0
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->fQ()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    .line 746
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->fQ()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    .line 748
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->fQ()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    .line 749
    instance-of v0, v13, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 751
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v13}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move/from16 v1, p1

    invoke-virtual {v11, v1, v10, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    .line 756
    :cond_1
    invoke-static {v13}, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->ˢ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;

    move-result-object v14

    .line 758
    new-instance v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->fp()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v14}, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->getIV()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[B)V

    move/from16 v1, p1

    invoke-virtual {v11, v1, v10, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 760
    :goto_1
    return-object v11
.end method

.method static synthetic ˊ(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˋ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/io/OutputStream;[CZ)V
    .locals 32

    .line 1265
    if-nez p2, :cond_0

    .line 1267
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_0
    new-instance v6, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 1278
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1280
    const/16 v0, 0x14

    new-array v8, v0, [B

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1284
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, v9}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    move-object v10, v0

    .line 1286
    new-instance v11, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v0, 0x400

    invoke-direct {v11, v8, v0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v10, v11, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Ljava/lang/String;Ljava/security/Key;Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v12

    .line 1288
    new-instance v13, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1289
    new-instance v14, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v14, v13, v12}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1290
    const/4 v15, 0x0

    .line 1291
    new-instance v16, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1293
    instance-of v0, v10, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v0, :cond_4

    .line 1295
    move-object v0, v10

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v17, v0

    .line 1299
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v18, v0

    .line 1300
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1302
    :cond_1
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DERBMPString;

    invoke-direct {v1, v9}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v17

    invoke-interface {v2, v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1308
    :cond_2
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1310
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v19

    .line 1312
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˋ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v2, v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1315
    :cond_3
    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v19

    .line 1317
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1319
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v0

    .line 1320
    new-instance v21, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1322
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1323
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1325
    const/4 v15, 0x1

    .line 1327
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1328
    goto :goto_1

    .line 1331
    :cond_4
    if-nez v15, :cond_5

    .line 1336
    new-instance v17, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1337
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v18

    .line 1339
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1340
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˋ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1342
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1344
    new-instance v17, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1346
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1347
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    new-instance v1, Lorg/spongycastle/asn1/DERBMPString;

    invoke-direct {v1, v9}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1349
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1352
    :cond_5
    new-instance v17, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ast:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v3, v17

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1353
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1354
    goto/16 :goto_0

    .line 1356
    :cond_6
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    .line 1357
    new-instance v9, Lorg/spongycastle/asn1/BEROctetString;

    invoke-direct {v9, v8}, Lorg/spongycastle/asn1/BEROctetString;-><init>([B)V

    .line 1362
    const/16 v0, 0x14

    new-array v10, v0, [B

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1366
    new-instance v11, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1367
    new-instance v12, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v0, 0x400

    invoke-direct {v12, v10, v0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1368
    new-instance v13, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1369
    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v15

    .line 1372
    :goto_2
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1376
    :try_start_0
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1377
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v17

    .line 1378
    const/16 v18, 0x0

    .line 1379
    new-instance v19, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v2, v19

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1382
    new-instance v20, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1384
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v0, :cond_a

    .line 1386
    move-object/from16 v0, v17

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1390
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v21

    invoke-interface {v1, v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v22, v0

    .line 1391
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1393
    :cond_7
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v21

    invoke-interface {v2, v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1399
    :cond_8
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v21

    invoke-interface {v1, v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1401
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˋ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v2, v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1404
    :cond_9
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v23

    .line 1406
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1408
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v0

    .line 1409
    new-instance v25, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v25 .. v25}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1411
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1412
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-interface {v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1413
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1415
    const/16 v18, 0x1

    .line 1416
    goto :goto_3

    .line 1419
    :cond_a
    if-nez v18, :cond_b

    .line 1421
    new-instance v21, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1423
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1424
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˋ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1425
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1427
    new-instance v21, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1429
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1430
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    new-instance v1, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1432
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1435
    :cond_b
    new-instance v21, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->asu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/pkcs/CertBag;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v3, v21

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1437
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1439
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    goto/16 :goto_2

    .line 1441
    :catch_0
    move-exception v16

    .line 1443
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encoding certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v15

    .line 1448
    :goto_4
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1452
    :try_start_1
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    .line 1454
    const/16 v18, 0x0

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1458
    goto :goto_4

    .line 1461
    :cond_d
    :try_start_2
    new-instance v19, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v2, v19

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1464
    new-instance v20, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1466
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v0, :cond_11

    .line 1468
    move-object/from16 v0, v17

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1472
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v21

    invoke-interface {v1, v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v22, v0

    .line 1473
    if-eqz v22, :cond_e

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1475
    :cond_e
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v21

    invoke-interface {v2, v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1478
    :cond_f
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v23

    .line 1480
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1482
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v0

    .line 1488
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1490
    goto :goto_5

    .line 1493
    :cond_10
    new-instance v25, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v25 .. v25}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1495
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1496
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-interface {v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1497
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1499
    const/16 v18, 0x1

    .line 1500
    goto :goto_5

    .line 1503
    :cond_11
    if-nez v18, :cond_12

    .line 1505
    new-instance v21, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1507
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1508
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    new-instance v1, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1510
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1513
    :cond_12
    new-instance v21, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->asu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/pkcs/CertBag;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v3, v21

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1515
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1517
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1522
    goto/16 :goto_4

    .line 1519
    :catch_1
    move-exception v16

    .line 1521
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encoding certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1525
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v15

    .line 1526
    :goto_6
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1530
    :try_start_3
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    move-object/from16 v16, v0

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    .line 1533
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1535
    goto :goto_6

    .line 1538
    :cond_14
    :try_start_4
    new-instance v18, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v2, v18

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1541
    new-instance v19, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1543
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v0, :cond_16

    .line 1545
    move-object/from16 v0, v17

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v20, v0

    .line 1546
    invoke-interface/range {v20 .. v20}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v21

    .line 1548
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1550
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v0

    .line 1556
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1558
    goto :goto_7

    .line 1561
    :cond_15
    new-instance v23, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v23 .. v23}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1563
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1564
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1565
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1566
    goto :goto_7

    .line 1569
    :cond_16
    new-instance v20, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->asu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/CertBag;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v3, v20

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1571
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1576
    goto/16 :goto_6

    .line 1573
    :catch_2
    move-exception v16

    .line 1575
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encoding certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1579
    :cond_17
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v11}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v16

    .line 1580
    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v5, v16

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v17

    .line 1581
    new-instance v18, Lorg/spongycastle/asn1/pkcs/EncryptedData;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aeB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/BEROctetString;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/BEROctetString;-><init>([B)V

    move-object/from16 v2, v18

    invoke-direct {v2, v0, v13, v1}, Lorg/spongycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1583
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v19, v0

    new-instance v0, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aeB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    aput-object v0, v19, v1

    new-instance v0, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aeG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    aput-object v0, v19, v1

    .line 1589
    new-instance v20, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/spongycastle/asn1/pkcs/ContentInfo;)V

    .line 1591
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1593
    if-eqz p3, :cond_18

    .line 1595
    new-instance v22, Lorg/spongycastle/asn1/DEROutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_8

    .line 1599
    :cond_18
    new-instance v22, Lorg/spongycastle/asn1/BEROutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1602
    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1604
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    .line 1606
    new-instance v24, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aeB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/BEROctetString;

    move-object/from16 v2, v23

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/BEROctetString;-><init>([B)V

    move-object/from16 v2, v24

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1611
    const/16 v0, 0x14

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 1612
    const/16 v26, 0x400

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1616
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v27

    .line 1622
    :try_start_5
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aCd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, p2

    move-object/from16 v5, v27

    const/16 v2, 0x400

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v29

    .line 1624
    new-instance v30, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aCd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    move-object/from16 v2, v30

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1625
    new-instance v31, Lorg/spongycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1627
    new-instance v28, Lorg/spongycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/MacData;-><init>(Lorg/spongycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1632
    goto :goto_9

    .line 1629
    :catch_3
    move-exception v29

    .line 1631
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error constructing MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1637
    :goto_9
    new-instance v29, Lorg/spongycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/Pfx;-><init>(Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/pkcs/MacData;)V

    .line 1639
    if-eqz p3, :cond_19

    .line 1641
    new-instance v22, Lorg/spongycastle/asn1/DEROutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_a

    .line 1645
    :cond_19
    new-instance v22, Lorg/spongycastle/asn1/BEROutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1648
    :goto_a
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1649
    return-void
.end method

.method private static ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .locals 7

    .line 1660
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1661
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v3, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1662
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1663
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v5, v0

    .line 1664
    invoke-virtual {v5, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->ﻧ(Z)V

    .line 1666
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 1667
    invoke-virtual {v6, v5, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1668
    invoke-virtual {v6, p5}, Ljavax/crypto/Mac;->update([B)V

    .line 1669
    invoke-virtual {v6}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private ˋ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 3

    .line 211
    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 214
    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ʻ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 216
    :catch_0
    move-exception v2

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error creating key"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 5

    .line 241
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 243
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 244
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cert"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 250
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 253
    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "key"

    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_1
    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 6

    .line 276
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    move-object v3, v0

    .line 278
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v4, v0

    .line 280
    if-eqz v4, :cond_0

    .line 282
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    if-eqz v3, :cond_2

    .line 287
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYD:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 288
    if-eqz v5, :cond_1

    .line 290
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v4, v0

    .line 292
    :cond_1
    if-eqz v4, :cond_2

    .line 294
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_2
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4

    .line 305
    if-nez p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v2, v0

    .line 315
    if-nez v2, :cond_2

    .line 317
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYD:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 318
    if-eqz v3, :cond_1

    .line 320
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v2, v0

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v2, v0

    .line 328
    :cond_2
    :goto_0
    return-object v2
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5

    .line 334
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 335
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 337
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v3, v0

    .line 340
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 342
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    return-object v4

    .line 346
    :cond_0
    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 349
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 351
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v3, v0

    .line 354
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 356
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    return-object v4

    .line 360
    :cond_2
    goto :goto_1

    .line 362
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 14

    .line 368
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificateChain."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_1
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 380
    if-eqz v3, :cond_9

    .line 382
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 384
    :goto_0
    if-eqz v3, :cond_7

    .line 386
    move-object v0, v3

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 387
    const/4 v6, 0x0

    .line 389
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayZ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v7

    .line 390
    if-eqz v7, :cond_3

    .line 394
    :try_start_0
    new-instance v8, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v7}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 396
    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v9

    .line 397
    new-instance v8, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 399
    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ᵘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v10

    .line 400
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->gY()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->gY()[B

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 409
    :cond_2
    goto :goto_1

    .line 406
    :catch_0
    move-exception v8

    .line 408
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    .line 417
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    .line 418
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    .line 420
    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 422
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 424
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v11, v0

    .line 427
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    .line 428
    invoke-interface {v12, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    :try_start_1
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    move-object v6, v11

    .line 434
    goto :goto_3

    .line 436
    :catch_1
    move-exception v13

    .line 441
    :cond_4
    goto :goto_2

    .line 445
    :cond_5
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 446
    if-eq v6, v3, :cond_6

    .line 448
    move-object v3, v6

    goto :goto_4

    .line 452
    :cond_6
    const/4 v3, 0x0

    .line 454
    :goto_4
    goto/16 :goto_0

    .line 456
    :cond_7
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [Ljava/security/cert/Certificate;

    .line 458
    const/4 v6, 0x0

    :goto_5
    array-length v0, v5

    if-eq v6, v0, :cond_8

    .line 460
    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    aput-object v0, v5, v6

    .line 458
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 463
    :cond_8
    return-object v5

    .line 466
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 471
    if-nez p1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2

    .line 487
    if-nez p1, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 34

    .line 768
    if-nez p1, :cond_0

    .line 770
    return-void

    .line 773
    :cond_0
    if-nez p2, :cond_1

    .line 775
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_1
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 780
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 782
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v7

    .line 784
    const/16 v0, 0x30

    if-eq v7, v0, :cond_2

    .line 786
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    .line 791
    new-instance v8, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v6}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 792
    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v9, v0

    .line 793
    invoke-static {v9}, Lorg/spongycastle/asn1/pkcs/Pfx;->ﹲ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Pfx;

    move-result-object v10

    .line 794
    invoke-virtual {v10}, Lorg/spongycastle/asn1/pkcs/Pfx;->fU()Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v11

    .line 795
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 796
    const/4 v13, 0x0

    .line 797
    const/4 v14, 0x0

    .line 799
    invoke-virtual {v10}, Lorg/spongycastle/asn1/pkcs/Pfx;->fV()Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 801
    invoke-virtual {v10}, Lorg/spongycastle/asn1/pkcs/Pfx;->fV()Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v15

    .line 802
    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/MacData;->fM()Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v16

    .line 803
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/DigestInfo;->fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v17

    .line 804
    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v18

    .line 805
    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/MacData;->fN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v19

    .line 807
    invoke-virtual {v11}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v20

    .line 811
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p2

    move-object/from16 v5, v20

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v21

    .line 812
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/DigestInfo;->hs()[B

    move-result-object v22

    .line 814
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 816
    move-object/from16 v0, p2

    array-length v0, v0

    if-lez v0, :cond_3

    .line 818
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p2

    move-object/from16 v5, v20

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v21

    .line 824
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 826
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 829
    :cond_4
    const/4 v14, 0x1

    .line 839
    :cond_5
    goto :goto_0

    .line 832
    :catch_0
    move-exception v21

    .line 834
    throw v21

    .line 836
    :catch_1
    move-exception v21

    .line 838
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error constructing MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_6
    :goto_0
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 843
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYD:Ljava/util/Hashtable;

    .line 845
    invoke-virtual {v11}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aeB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 847
    new-instance v8, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v11}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 849
    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->ᔉ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v15

    .line 850
    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->fC()[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v16

    .line 852
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v1, v17

    if-eq v1, v0, :cond_23

    .line 854
    aget-object v0, v16, v17

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aeB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 856
    new-instance v18, Lorg/spongycastle/asn1/ASN1InputStream;

    aget-object v0, v16, v17

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    move-object/from16 v1, v18

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 857
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v19, v0

    .line 859
    const/16 v20, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v20

    if-eq v1, v0, :cond_10

    .line 861
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->Ι(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SafeBag;

    move-result-object v21

    .line 862
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gl()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ast:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 864
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gm()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->ᕽ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v22

    .line 865
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->fI()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v1, v3, v14}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v23

    .line 870
    move-object/from16 v0, v23

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v24, v0

    .line 871
    const/16 v25, 0x0

    .line 872
    const/16 v26, 0x0

    .line 874
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gn()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 876
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gn()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v27

    .line 877
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 879
    invoke-interface/range {v27 .. v27}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v28, v0

    .line 880
    move-object/from16 v0, v28

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v29, v0

    .line 881
    move-object/from16 v0, v28

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    move-object/from16 v30, v0

    .line 882
    const/16 v31, 0x0

    .line 884
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 886
    move-object/from16 v0, v30

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    move-object/from16 v31, v0

    .line 888
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v32

    .line 889
    if-eqz v32, :cond_7

    .line 892
    invoke-interface/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 894
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to add existing attribute with different value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_7
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 904
    :cond_8
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 906
    move-object/from16 v0, v31

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v25

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 909
    :cond_9
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 911
    move-object/from16 v0, v31

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object/from16 v26, v0

    .line 913
    :cond_a
    :goto_4
    goto/16 :goto_3

    .line 916
    :cond_b
    if-eqz v26, :cond_d

    .line 918
    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v0

    move-object/from16 v1, v27

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 920
    if-nez v25, :cond_c

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 926
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYD:Ljava/util/Hashtable;

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :goto_5
    goto :goto_6

    .line 931
    :cond_d
    const/4 v13, 0x1

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string v1, "unmarked"

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 934
    :goto_6
    goto :goto_7

    .line 935
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gl()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->asu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 937
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    .line 941
    :cond_f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra in data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gl()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/asn1/util/ASN1Dump;->ᑉ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 859
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 945
    :cond_10
    goto/16 :goto_10

    .line 946
    :cond_11
    aget-object v0, v16, v17

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aeG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 948
    aget-object v0, v16, v17

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->ᕑ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedData;

    move-result-object v18

    .line 949
    move-object/from16 v0, p0

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->fI()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    move-object/from16 v3, p2

    move v4, v14

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->fJ()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v19

    .line 951
    invoke-static/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v20, v0

    .line 953
    const/16 v21, 0x0

    :goto_8
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v21

    if-eq v1, v0, :cond_21

    .line 955
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->Ι(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SafeBag;

    move-result-object v22

    .line 957
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gl()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->asu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 959
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 961
    :cond_12
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gl()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ast:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 963
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gm()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->ᕽ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v23

    .line 964
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->fI()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v1, v3, v14}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v24

    .line 969
    move-object/from16 v0, v24

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v25, v0

    .line 970
    const/16 v26, 0x0

    .line 971
    const/16 v27, 0x0

    .line 973
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gn()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v28

    .line 974
    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 976
    invoke-interface/range {v28 .. v28}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v29, v0

    .line 977
    move-object/from16 v0, v29

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v30, v0

    .line 978
    move-object/from16 v0, v29

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    move-object/from16 v31, v0

    .line 979
    const/16 v32, 0x0

    .line 981
    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 983
    move-object/from16 v0, v31

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    move-object/from16 v32, v0

    .line 985
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v33

    .line 986
    if-eqz v33, :cond_13

    .line 989
    invoke-interface/range {v33 .. v33}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 991
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to add existing attribute with different value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_13
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1001
    :cond_14
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1003
    move-object/from16 v0, v32

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v26

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .line 1006
    :cond_15
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1008
    move-object/from16 v0, v32

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object/from16 v27, v0

    .line 1010
    :cond_16
    :goto_a
    goto/16 :goto_9

    .line 1012
    :cond_17
    new-instance v29, Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v0

    move-object/from16 v1, v29

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1014
    if-nez v26, :cond_18

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    .line 1020
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYD:Ljava/util/Hashtable;

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :goto_b
    goto/16 :goto_f

    .line 1023
    :cond_19
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gl()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ass:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1025
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gm()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v23

    .line 1026
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˏ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v24

    .line 1031
    move-object/from16 v0, v24

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v25, v0

    .line 1032
    const/16 v26, 0x0

    .line 1033
    const/16 v27, 0x0

    .line 1035
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gn()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v28

    .line 1036
    :goto_c
    invoke-interface/range {v28 .. v28}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1038
    invoke-interface/range {v28 .. v28}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v29

    .line 1039
    move-object/from16 v0, v29

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v30

    .line 1040
    move-object/from16 v0, v29

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Set;->ɩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v31

    .line 1041
    const/16 v32, 0x0

    .line 1043
    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1045
    move-object/from16 v0, v31

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    move-object/from16 v32, v0

    .line 1047
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v33

    .line 1048
    if-eqz v33, :cond_1a

    .line 1051
    invoke-interface/range {v33 .. v33}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1053
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to add existing attribute with different value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_1a
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1062
    :cond_1b
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1064
    move-object/from16 v0, v32

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v26

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 1067
    :cond_1c
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1069
    move-object/from16 v0, v32

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object/from16 v27, v0

    .line 1072
    :cond_1d
    :goto_d
    goto/16 :goto_c

    .line 1074
    :cond_1e
    new-instance v29, Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v0

    move-object/from16 v1, v29

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1076
    if-nez v26, :cond_1f

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 1082
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYD:Ljava/util/Hashtable;

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    :goto_e
    goto :goto_f

    .line 1087
    :cond_20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra in encryptedData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gl()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1088
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v22 .. v22}, Lorg/spongycastle/asn1/util/ASN1Dump;->ᑉ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 1091
    :cond_21
    goto :goto_10

    .line 1094
    :cond_22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v16, v17

    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1095
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v16, v17

    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->fG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/util/ASN1Dump;->ᑉ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 852
    :goto_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1100
    :cond_23
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 1101
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    .line 1102
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    .line 1104
    const/4 v15, 0x0

    :goto_11
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v15, v0, :cond_2d

    .line 1106
    invoke-virtual {v12, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/SafeBag;

    move-object/from16 v16, v0

    .line 1107
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gm()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/CertBag;->ᔊ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/CertBag;

    move-result-object v17

    .line 1109
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/pkcs/CertBag;->fD()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1111
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported certificate type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/pkcs/CertBag;->fD()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_24
    :try_start_1
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/pkcs/CertBag;->fE()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    move-object/from16 v1, v19

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYH:Ljava/security/cert/CertificateFactory;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v18

    .line 1125
    goto :goto_12

    .line 1122
    :catch_2
    move-exception v19

    .line 1124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :goto_12
    const/16 v19, 0x0

    .line 1131
    const/16 v20, 0x0

    .line 1133
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gn()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1135
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/SafeBag;->gn()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v21

    .line 1136
    :goto_13
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1138
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v22

    .line 1139
    move-object/from16 v0, v22

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v23

    .line 1140
    move-object/from16 v0, v22

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Set;->ɩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v24

    .line 1142
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 1144
    move-object/from16 v0, v24

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    move-object/from16 v25, v0

    .line 1145
    const/16 v26, 0x0

    .line 1147
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v0, :cond_26

    .line 1149
    move-object/from16 v0, v18

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v26, v0

    .line 1151
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v27

    .line 1152
    if-eqz v27, :cond_25

    .line 1155
    invoke-interface/range {v27 .. v27}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to add existing attribute with different value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_25
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1167
    :cond_26
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->arn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1169
    move-object/from16 v0, v25

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v20

    goto :goto_14

    .line 1171
    :cond_27
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aro:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1173
    move-object/from16 v0, v25

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object/from16 v19, v0

    .line 1176
    :cond_28
    :goto_14
    goto/16 :goto_13

    .line 1179
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    if-eqz v13, :cond_2a

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1185
    new-instance v21, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˋ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->gY()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v0

    move-object/from16 v1, v21

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string v2, "unmarked"

    invoke-virtual {v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1189
    goto :goto_15

    .line 1196
    :cond_2a
    if-eqz v19, :cond_2b

    .line 1198
    new-instance v21, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v0

    move-object/from16 v1, v21

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYG:Ljava/util/Hashtable;

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    :cond_2b
    if-eqz v20, :cond_2c

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    :cond_2c
    :goto_15
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_11

    .line 1208
    :cond_2d
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4

    .line 537
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 544
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 552
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    if-eqz p4, :cond_3

    .line 555
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    const/4 v3, 0x0

    :goto_0
    array-length v0, p4

    if-eq v3, v0, :cond_3

    .line 559
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYF:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v2, p4, v3

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v2, p4, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    :cond_3
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 5

    .line 566
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 568
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYE:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 569
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cert"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYC:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 575
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 578
    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 580
    const-string v0, "key"

    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_1
    goto :goto_1

    .line 584
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1

    .line 1259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Ljava/io/OutputStream;[CZ)V

    .line 1260
    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6

    .line 1214
    if-nez p1, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'param\' arg cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;

    if-nez v0, :cond_1

    .line 1221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;

    if-eqz v0, :cond_2

    .line 1229
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;

    move-object v3, v0

    goto :goto_0

    .line 1233
    :cond_2
    new-instance v3, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v2}, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->oW()Z

    move-result v2

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 1238
    :goto_0
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v5

    .line 1239
    if-nez v5, :cond_3

    .line 1241
    const/4 v4, 0x0

    goto :goto_1

    .line 1243
    :cond_3
    instance-of v0, v5, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v0, :cond_4

    .line 1245
    move-object v0, v5

    check-cast v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v4

    goto :goto_1

    .line 1249
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for protection parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :goto_1
    invoke-virtual {v3}, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v3}, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->nM()Z

    move-result v1

    invoke-direct {p0, v0, v4, v1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Ljava/io/OutputStream;[CZ)V

    .line 1254
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 11

    .line 594
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 597
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->asy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->וֹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v4

    .line 601
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 604
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v7

    .line 606
    new-instance v8, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->fT()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v8, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 610
    invoke-virtual {v7, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 612
    move-object v0, v9

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v0, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->ﻧ(Z)V

    .line 614
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 616
    const/4 v0, 0x4

    invoke-virtual {v10, v0, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 619
    const-string v0, ""

    const/4 v1, 0x2

    invoke-virtual {v10, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 621
    :cond_0
    :try_start_1
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const/4 v0, 0x4

    invoke-direct {p0, v0, p3, p1}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(I[CLorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 627
    const-string v0, ""

    const/4 v1, 0x2

    invoke-virtual {v4, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 633
    :cond_1
    goto :goto_0

    .line 630
    :catch_0
    move-exception v4

    .line 632
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception unwrapping private key - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :goto_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ˊ(Ljava/lang/String;Ljava/security/Key;Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 8

    .line 645
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 650
    :try_start_0
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 652
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v0

    invoke-virtual {p3}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->fT()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v6, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 656
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 658
    invoke-virtual {v5, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v7, v1, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 660
    invoke-virtual {v7, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 665
    goto :goto_0

    .line 662
    :catch_0
    move-exception v5

    .line 664
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception encrypting data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :goto_0
    return-object v4
.end method

.method protected ˊ(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 11

    .line 678
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 679
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    .line 681
    :goto_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->asy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->וֹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v5

    .line 684
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v6, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 688
    :try_start_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v7

    .line 689
    new-instance v8, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->fT()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v8, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 692
    invoke-virtual {v7, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v9, v0

    .line 694
    invoke-virtual {v9, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->ﻧ(Z)V

    .line 696
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->aYA:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 698
    invoke-virtual {v10, v4, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 699
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 701
    :catch_0
    move-exception v7

    .line 703
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decrypting data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_1
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    :try_start_1
    invoke-direct {p0, v4, p3, p2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(I[CLorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 712
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 714
    :catch_1
    move-exception v5

    .line 716
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decrypting data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown PBE algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
