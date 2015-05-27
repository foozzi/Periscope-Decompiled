.class public Lorg/spongycastle/x509/util/LDAPStoreHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bbQ:Ljava/lang/String;

.field private static bbR:Ljava/lang/String;

.field private static blj:I

.field private static blk:J


# instance fields
.field private bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

.field private bli:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    sput-object v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbQ:Ljava/lang/String;

    .line 85
    const-string v0, "ignore"

    sput-object v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbR:Ljava/lang/String;

    .line 1032
    const/16 v0, 0x20

    sput v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->blj:I

    .line 1034
    const-wide/32 v0, 0xea60

    sput-wide v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->blk:J

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/X509LDAPCertStoreParameters;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    new-instance v0, Ljava/util/HashMap;

    sget v1, Lorg/spongycastle/x509/util/LDAPStoreHelper;->blj:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 75
    return-void
.end method

.method private pc()Ljavax/naming/directory/DirContext;
    .locals 4

    .line 99
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 100
    const-string v0, "java.naming.factory.initial"

    sget-object v1, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbQ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    const-string v0, "java.naming.batchsize"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "java.naming.provider.url"

    iget-object v1, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v0, "java.naming.factory.url.pkgs"

    const-string v1, "com.sun.jndi.url"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v0, "java.naming.referral"

    sget-object v1, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbR:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v0, "java.naming.security.authentication"

    const-string v1, "none"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    new-instance v3, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v3, v2}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 110
    return-object v3
.end method

.method private ʻ(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;
    .locals 4

    .line 1099
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSubjectAsBytes()[B

    move-result-object v3

    .line 1100
    if-eqz v3, :cond_0

    .line 1102
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1108
    :cond_0
    goto :goto_0

    .line 1105
    :catch_0
    move-exception v3

    .line 1107
    new-instance v0, Lorg/spongycastle/util/StoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/util/StoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1109
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 115
    move-object v3, p1

    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 118
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 120
    const-string v0, ""

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 124
    const/4 v0, -0x1

    if-ne v5, v0, :cond_1

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 128
    :cond_1
    :goto_0
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 130
    add-int/lit8 v0, v5, 0x1

    const/16 v1, 0x2c

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 131
    const/4 v0, -0x1

    if-ne v5, v0, :cond_1

    .line 133
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 137
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 138
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 141
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    :cond_3
    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_4
    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 151
    :cond_5
    return-object v3
.end method

.method private ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    const/4 v3, 0x0

    .line 333
    const/4 v4, 0x0

    .line 335
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 336
    const/4 v6, 0x0

    .line 337
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v6

    .line 352
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tt()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tt()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tt()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v6

    .line 360
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tt()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_3
    if-eqz v6, :cond_5

    .line 366
    const/4 v0, 0x0

    aget-object v0, v6, v0

    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_4

    .line 368
    const/4 v0, 0x0

    aget-object v0, v6, v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 374
    :cond_4
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 377
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 379
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_6
    const/4 v7, 0x0

    .line 383
    if-eqz v3, :cond_7

    .line 385
    const/4 v8, 0x0

    :goto_1
    array-length v0, p4

    if-ge v8, v0, :cond_7

    .line 387
    aget-object v0, p4, v8

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 393
    :cond_7
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 396
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 397
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 399
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 400
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oH()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 403
    :cond_8
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    .line 405
    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    :cond_9
    return-object v2
.end method

.method private ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    const/4 v3, 0x0

    .line 431
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 432
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 436
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ͺ(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->tz()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->tz()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v5

    .line 443
    const/4 v6, 0x0

    :goto_0
    array-length v0, v5

    if-ge v6, v0, :cond_3

    .line 445
    aget-object v0, v5, v6

    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_2

    .line 447
    aget-object v0, v5, v6

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 451
    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 452
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    const/4 v6, 0x0

    .line 457
    const/4 v7, 0x0

    :goto_2
    array-length v0, p4

    if-ge v7, v0, :cond_4

    .line 459
    aget-object v0, p4, v7

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 464
    :cond_4
    goto :goto_1

    .line 465
    :cond_5
    if-nez v3, :cond_6

    .line 467
    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    :cond_6
    return-object v2
.end method

.method private ˊ(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    const/4 v3, 0x0

    .line 275
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->tD()Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->tD()Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ʻ(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v3

    .line 279
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->tC()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->tC()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/X509CertificatePair;->tE()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->tC()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/X509CertificatePair;->tE()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_1
    const/4 v4, 0x0

    .line 288
    if-eqz v3, :cond_2

    .line 290
    const/4 v5, 0x0

    :goto_0
    array-length v0, p4

    if-ge v5, v0, :cond_2

    .line 292
    aget-object v0, p4, v5

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 298
    :cond_2
    if-nez v3, :cond_3

    .line 300
    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    :cond_3
    return-object v2
.end method

.method private ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    const/4 v3, 0x0

    .line 207
    const/4 v4, 0x0

    .line 209
    invoke-direct {p0, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ʻ(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    :cond_1
    const/4 v5, 0x0

    .line 222
    if-eqz v3, :cond_2

    .line 224
    const/4 v6, 0x0

    :goto_0
    array-length v0, p4

    if-ge v6, v0, :cond_2

    .line 226
    aget-object v0, p4, v6

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 232
    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 234
    move-object v5, v4

    .line 235
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oH()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    :cond_3
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    .line 241
    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_4
    return-object v2
.end method

.method private ˊ([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 13

    .line 489
    const/4 v2, 0x0

    .line 490
    if-nez p1, :cond_0

    .line 492
    const/4 v2, 0x0

    goto :goto_1

    .line 496
    :cond_0
    const-string v2, ""

    .line 497
    const-string v0, "**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    const-string p2, "*"

    .line 501
    :cond_1
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    :goto_1
    const-string v3, ""

    .line 508
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    if-ge v4, v0, :cond_3

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 512
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 515
    if-nez v2, :cond_4

    .line 517
    move-object v4, v3

    .line 520
    :cond_4
    invoke-direct {p0, v4}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ܙ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 521
    if-eqz v5, :cond_5

    .line 523
    return-object v5

    .line 525
    :cond_5
    const/4 v6, 0x0

    .line 526
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 530
    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->pc()Ljavax/naming/directory/DirContext;

    move-result-object v0

    move-object v6, v0

    .line 532
    new-instance v7, Ljavax/naming/directory/SearchControls;

    invoke-direct {v7}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 533
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 534
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 535
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->om()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v7}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v8

    .line 538
    :goto_3
    invoke-interface {v8}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 540
    invoke-interface {v8}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/SearchResult;

    move-object v9, v0

    .line 541
    invoke-virtual {v9}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attribute;

    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v10

    .line 543
    :goto_4
    invoke-interface {v10}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 545
    invoke-interface {v10}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 547
    :cond_6
    goto :goto_3

    .line 548
    :cond_7
    invoke-direct {p0, v4, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    const/4 v0, 0x0

    if-eq v0, v6, :cond_8

    .line 562
    :try_start_1
    invoke-interface {v6}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 567
    :cond_8
    goto :goto_6

    .line 565
    :catch_0
    move-exception v7

    .line 568
    goto :goto_6

    .line 550
    :catch_1
    move-exception v7

    .line 560
    const/4 v0, 0x0

    if-eq v0, v6, :cond_9

    .line 562
    :try_start_2
    invoke-interface {v6}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 567
    :cond_9
    goto :goto_6

    .line 565
    :catch_2
    move-exception v7

    .line 568
    goto :goto_6

    .line 558
    :catchall_0
    move-exception v11

    .line 560
    const/4 v0, 0x0

    if-eq v0, v6, :cond_a

    .line 562
    :try_start_3
    invoke-interface {v6}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 567
    :cond_a
    goto :goto_5

    .line 565
    :catch_3
    move-exception v12

    .line 567
    :goto_5
    throw v11

    .line 569
    :goto_6
    return-object v5
.end method

.method private ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;
    .locals 6

    .line 656
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 658
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 659
    new-instance v4, Lorg/spongycastle/jce/provider/X509AttrCertParser;

    invoke-direct {v4}, Lorg/spongycastle/jce/provider/X509AttrCertParser;-><init>()V

    .line 660
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->ˆ(Ljava/io/InputStream;)V

    .line 666
    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->pb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    move-object v5, v0

    .line 668
    invoke-virtual {p2, v5}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->ɨ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    goto :goto_0

    .line 673
    :catch_0
    move-exception v5

    .line 676
    goto :goto_0

    .line 679
    :cond_1
    return-object v2
.end method

.method private ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;
    .locals 6

    .line 575
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 577
    new-instance v3, Lorg/spongycastle/jce/provider/X509CRLParser;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/X509CRLParser;-><init>()V

    .line 578
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 579
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/jce/provider/X509CRLParser;->ˆ(Ljava/io/InputStream;)V

    .line 585
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/X509CRLParser;->pb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v5, v0

    .line 586
    invoke-virtual {p2, v5}, Lorg/spongycastle/x509/X509CRLStoreSelector;->ɨ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_0
    goto :goto_0

    .line 591
    :catch_0
    move-exception v5

    .line 594
    goto :goto_0

    .line 597
    :cond_1
    return-object v2
.end method

.method private ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;
    .locals 9

    .line 603
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 605
    const/4 v4, 0x0

    .line 606
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 614
    :try_start_0
    new-instance v6, Lorg/spongycastle/jce/provider/X509CertPairParser;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/X509CertPairParser;-><init>()V

    .line 615
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v0}, Lorg/spongycastle/jce/provider/X509CertPairParser;->ˆ(Ljava/io/InputStream;)V

    .line 617
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/X509CertPairParser;->pb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509CertificatePair;
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 633
    goto :goto_1

    .line 619
    :catch_0
    move-exception v6

    .line 623
    :try_start_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v7, v0

    .line 624
    add-int/lit8 v0, v4, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v8, v0

    .line 625
    new-instance v5, Lorg/spongycastle/x509/X509CertificatePair;

    new-instance v0, Lorg/spongycastle/asn1/x509/CertificatePair;

    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v7}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v8}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/Certificate;Lorg/spongycastle/asn1/x509/Certificate;)V

    invoke-direct {v5, v0}, Lorg/spongycastle/x509/X509CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/CertificatePair;)V

    .line 632
    add-int/lit8 v4, v4, 0x1

    .line 634
    :goto_1
    invoke-virtual {p2, v5}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->ɨ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 646
    :cond_0
    goto :goto_2

    .line 639
    :catch_1
    move-exception v6

    .line 646
    goto :goto_2

    .line 643
    :catch_2
    move-exception v6

    .line 647
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 648
    goto/16 :goto_0

    .line 650
    :cond_1
    return-object v3
.end method

.method private ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;
    .locals 6

    .line 157
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 160
    new-instance v4, Lorg/spongycastle/jce/provider/X509CertParser;

    invoke-direct {v4}, Lorg/spongycastle/jce/provider/X509CertParser;-><init>()V

    .line 161
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/X509CertParser;->ˆ(Ljava/io/InputStream;)V

    .line 167
    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/X509CertParser;->pb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 169
    invoke-virtual {p2, v5}, Lorg/spongycastle/x509/X509CertStoreSelector;->ɨ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    goto :goto_0

    .line 175
    :catch_0
    move-exception v5

    .line 178
    goto :goto_0

    .line 181
    :cond_1
    return-object v2
.end method

.method private declared-synchronized ˊ(Ljava/lang/String;Ljava/util/List;)V
    .locals 11

    monitor-enter p0

    .line 1038
    :try_start_0
    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 1039
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1048
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lorg/spongycastle/x509/util/LDAPStoreHelper;->blj:I

    if-lt v0, v1, :cond_3

    .line 1051
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1052
    invoke-virtual {v2}, Ljava/sql/Date;->getTime()J

    move-result-wide v5

    .line 1053
    const/4 v7, 0x0

    .line 1054
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1056
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v8, v0

    .line 1057
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/sql/Date;->getTime()J

    move-result-wide v9

    .line 1059
    cmp-long v0, v9, v5

    if-gez v0, :cond_1

    .line 1061
    move-wide v5, v9

    .line 1062
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 1064
    :cond_1
    goto :goto_0

    .line 1065
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private ͺ(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 1114
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method private ܙ(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1073
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bli:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1075
    if-eqz v4, :cond_1

    .line 1078
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lorg/spongycastle/x509/util/LDAPStoreHelper;->blk:J

    sub-long v2, v5, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1080
    const/4 v0, 0x0

    return-object v0

    .line 1082
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1084
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private ง(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1092
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 859
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oa()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 860
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ov()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 861
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ob()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 863
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 865
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 866
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 868
    new-instance v6, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 869
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 871
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 874
    :cond_0
    return-object v5
.end method

.method public ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 695
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ok()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 696
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oA()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 698
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 703
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 704
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 706
    new-instance v6, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 707
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 710
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 712
    :cond_0
    return-object v5
.end method

.method public ˊ(Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Collection;
    .locals 8

    .line 793
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->or()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 794
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oD()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 795
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->os()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 797
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 799
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 800
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 802
    new-instance v6, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 803
    new-instance v7, Lorg/spongycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v7}, Lorg/spongycastle/x509/X509CertPairStoreSelector;-><init>()V

    .line 805
    invoke-virtual {v7, v6}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->ˋ(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 806
    invoke-virtual {v7, v6}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->ˎ(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 807
    invoke-direct {p0, v7, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 809
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 811
    :cond_0
    return-object v5
.end method

.method public ˋ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 891
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 892
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oz()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 894
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oj()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 897
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 899
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 900
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 902
    new-instance v6, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 903
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 905
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 908
    :cond_0
    return-object v5
.end method

.method public ˋ(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 728
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->og()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 730
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oy()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 732
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oh()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 737
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 738
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 740
    new-instance v6, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 741
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 744
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 746
    :cond_0
    return-object v5
.end method

.method public ˎ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 982
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oe()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 983
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 985
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->of()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 987
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 989
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 990
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 992
    new-instance v6, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 993
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 995
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 998
    :cond_0
    return-object v5
.end method

.method public ˎ(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 763
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 764
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ow()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 766
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->od()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 769
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 771
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 772
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 774
    new-instance v6, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 775
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 778
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 780
    :cond_0
    return-object v5
.end method

.method public ˏ(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 952
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 953
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oE()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 954
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->ou()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 956
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 958
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 959
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 961
    new-instance v6, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 962
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 965
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 967
    :cond_0
    return-object v5
.end method

.method public ˏ(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 828
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 829
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oG()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 830
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 835
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 836
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 838
    new-instance v6, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 839
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 841
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 844
    :cond_0
    return-object v5
.end method

.method public ᐝ(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 1011
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->op()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1012
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oC()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1014
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oq()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1016
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1018
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 1019
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    new-instance v6, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1022
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1025
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1027
    :cond_0
    return-object v5
.end method

.method public ᐝ(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 7

    .line 925
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->on()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 926
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oB()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 927
    iget-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ง(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 929
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 931
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 932
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 934
    new-instance v6, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v6}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 935
    invoke-direct {p0, v6, v1, v2, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 937
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->ˊ(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 939
    :cond_0
    return-object v5
.end method
