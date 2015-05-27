.class public Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;
.super Ljava/security/cert/CertStoreSpi;
.source ""


# static fields
.field private static bbQ:Ljava/lang/String;

.field private static bbR:Ljava/lang/String;


# instance fields
.field private bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    sput-object v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbQ:Ljava/lang/String;

    .line 78
    const-string v0, "ignore"

    sput-object v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbR:Ljava/lang/String;

    return-void
.end method

.method private pc()Ljavax/naming/directory/DirContext;
    .locals 4

    .line 92
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 93
    const-string v0, "java.naming.factory.initial"

    sget-object v1, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbQ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v0, "java.naming.batchsize"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v0, "java.naming.provider.url"

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "java.naming.factory.url.pkgs"

    const-string v1, "com.sun.jndi.url"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v0, "java.naming.referral"

    sget-object v1, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbR:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v0, "java.naming.security.authentication"

    const-string v1, "none"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    new-instance v3, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v3, v2}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 103
    return-object v3
.end method

.method private ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 108
    move-object v2, p1

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 111
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 113
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 117
    :cond_0
    :goto_0
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 119
    add-int/lit8 v0, v4, 0x1

    const/16 v1, 0x2c

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 120
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 126
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 127
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 130
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    :cond_2
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_3
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 140
    :cond_4
    return-object v2
.end method

.method private ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 16

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    if-nez p1, :cond_0

    .line 414
    const/4 v3, 0x0

    .line 416
    :cond_0
    const/4 v4, 0x0

    .line 417
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 421
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->pc()Ljavax/naming/directory/DirContext;

    move-result-object v0

    move-object v4, v0

    .line 423
    new-instance v6, Ljavax/naming/directory/SearchControls;

    invoke-direct {v6}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 424
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 425
    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 426
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 428
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 429
    aget-object v0, p3, v7

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 430
    invoke-virtual {v6, v8}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(&("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=*))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 433
    if-nez v3, :cond_1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 437
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->om()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v9, v6}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v10

    .line 439
    :goto_1
    invoke-interface {v10}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    invoke-interface {v10}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/SearchResult;

    move-object v11, v0

    .line 445
    invoke-virtual {v11}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attribute;

    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v12

    .line 447
    :goto_2
    invoke-interface {v12}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    invoke-interface {v12}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v13

    .line 450
    invoke-interface {v5, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    goto :goto_2

    .line 452
    :cond_2
    goto :goto_1

    .line 426
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 465
    :cond_4
    const/4 v0, 0x0

    if-eq v0, v4, :cond_5

    .line 467
    :try_start_1
    invoke-interface {v4}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    :cond_5
    goto :goto_4

    .line 470
    :catch_0
    move-exception v6

    .line 473
    goto :goto_4

    .line 455
    :catch_1
    move-exception v6

    .line 457
    :try_start_2
    new-instance v0, Ljava/security/cert/CertStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting results from LDAP directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    :catchall_0
    move-exception v14

    .line 465
    const/4 v0, 0x0

    if-eq v0, v4, :cond_6

    .line 467
    :try_start_3
    invoke-interface {v4}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 472
    :cond_6
    goto :goto_3

    .line 470
    :catch_2
    move-exception v15

    .line 472
    :goto_3
    throw v14

    .line 474
    :goto_4
    return-object v5
.end method

.method private ˊ(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 6

    .line 286
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 287
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oG()Ljava/lang/String;

    move-result-object v3

    .line 288
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oJ()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 292
    return-object v5
.end method

.method private ˊ(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7

    .line 232
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 239
    :cond_0
    const/4 v4, 0x0

    .line 240
    const/4 v5, 0x0

    .line 241
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    move-result-object v4

    .line 260
    :goto_0
    invoke-direct {p0, v4, p4}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
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

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    if-eqz v5, :cond_3

    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 265
    move-object v6, v5

    .line 266
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oH()Ljava/lang/String;

    move-result-object p3

    .line 267
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

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 269
    :cond_3
    goto :goto_1

    .line 272
    :cond_4
    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_1
    goto :goto_2

    .line 275
    :catch_0
    move-exception v4

    .line 277
    new-instance v0, Ljava/security/cert/CertStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing selector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :goto_2
    return-object v3
.end method

.method private ˋ(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 6

    .line 298
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->on()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 299
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oB()Ljava/lang/String;

    move-result-object v3

    .line 300
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oo()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 305
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "*"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_0
    return-object v5
.end method

.method private ˎ(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 6

    .line 316
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->or()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 317
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oD()Ljava/lang/String;

    move-result-object v3

    .line 318
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->os()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 323
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "*"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 328
    :cond_0
    return-object v5
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 12

    .line 334
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->op()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 335
    instance-of v0, p1, Ljava/security/cert/X509CRLSelector;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/security/cert/CertStoreException;

    const-string v1, "selector is not a X509CRLSelector"

    invoke-direct {v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    move-object v4, v0

    .line 341
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 343
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oC()Ljava/lang/String;

    move-result-object v6

    .line 344
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 346
    invoke-virtual {v4}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {v4}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 349
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 352
    const/4 v10, 0x0

    .line 353
    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oq()Ljava/lang/String;

    move-result-object v11

    .line 357
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 358
    goto :goto_1

    .line 361
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->bbP:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->oq()Ljava/lang/String;

    move-result-object v11

    .line 363
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    move-object v1, v9

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 366
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 367
    goto/16 :goto_0

    :cond_2
    goto :goto_2

    .line 371
    :cond_3
    const-string v0, "*"

    invoke-direct {p0, v6, v0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 373
    :goto_2
    const-string v0, "*"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 378
    const-string v0, "X.509"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 380
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v9, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v10

    .line 384
    invoke-virtual {v4, v10}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_4
    goto :goto_3

    .line 394
    :cond_5
    goto :goto_4

    .line 390
    :catch_0
    move-exception v9

    .line 392
    new-instance v0, Ljava/security/cert/CertStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRL cannot be constructed from LDAP result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :goto_4
    return-object v5
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 13

    .line 146
    instance-of v0, p1, Ljava/security/cert/X509CertSelector;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/security/cert/CertStoreException;

    const-string v1, "selector is not a X509CertSelector"

    invoke-direct {v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;

    move-object v3, v0

    .line 152
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 154
    invoke-direct {p0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˊ(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    move-result-object v5

    .line 155
    invoke-direct {p0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˋ(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-direct {p0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->ˎ(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 162
    const-string v0, "X.509"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    .line 164
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v8, v0

    .line 167
    if-eqz v8, :cond_1

    array-length v0, v8

    if-nez v0, :cond_2

    .line 169
    goto :goto_0

    .line 172
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 177
    :try_start_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v8}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificatePair;->ﭔ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePair;

    move-result-object v10

    .line 180
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 181
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->hq()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->hq()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->hr()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->hr()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 197
    :cond_4
    goto :goto_1

    .line 190
    :catch_0
    move-exception v10

    .line 197
    goto :goto_1

    .line 194
    :catch_1
    move-exception v10

    .line 198
    :goto_1
    :try_start_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 204
    :try_start_3
    invoke-virtual {v7, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    .line 207
    invoke-virtual {v3, v12}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 215
    :cond_5
    goto :goto_3

    .line 212
    :catch_2
    move-exception v12

    .line 216
    :goto_3
    goto :goto_2

    .line 217
    :cond_6
    goto/16 :goto_0

    .line 223
    :cond_7
    goto :goto_4

    .line 219
    :catch_3
    move-exception v7

    .line 221
    new-instance v0, Ljava/security/cert/CertStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate cannot be constructed from LDAP result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :goto_4
    return-object v4
.end method
