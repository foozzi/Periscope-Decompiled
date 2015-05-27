.class public Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Version1;,
        Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Std;,
        Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;,
        Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    }
.end annotation


# instance fields
.field protected aFa:Ljava/security/SecureRandom;

.field protected ays:Ljava/util/Hashtable;

.field protected version:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    .line 87
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    .line 93
    iput p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    .line 94
    return-void
.end method

.method static synthetic ˊ(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˋ(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .locals 6

    .line 357
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v3, v0, [B

    .line 360
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 364
    const-string v0, "SC"

    :try_start_0
    invoke-static {v2, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 365
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 367
    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 369
    :catch_0
    move-exception v4

    .line 371
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :catch_1
    move-exception v4

    .line 375
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˊ(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 2

    .line 384
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 386
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 390
    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 399
    :goto_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 400
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 401
    array-length v0, v1

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 402
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 403
    return-void
.end method

.method private ˊ(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .locals 3

    .line 341
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 343
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 344
    array-length v0, v2

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 349
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private ˋ(Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 9

    .line 409
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 410
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v6, v0, [B

    .line 415
    invoke-virtual {p1, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 417
    const-string v0, "PKCS#8"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PKCS8"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v7, v6}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 421
    :cond_1
    const-string v0, "X.509"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "X509"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    :cond_2
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 425
    :cond_3
    const-string v0, "RAW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v6, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 431
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not recognised!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 439
    :pswitch_0
    const-string v0, "SC"

    :try_start_0
    invoke-static {v5, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 441
    :pswitch_1
    const-string v0, "SC"

    :try_start_1
    invoke-static {v5, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 443
    :pswitch_2
    const-string v0, "SC"

    :try_start_2
    invoke-static {v5, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    .line 445
    :goto_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not recognised!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 448
    :catch_0
    move-exception v8

    .line 450
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception creating key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 503
    if-nez v1, :cond_0

    .line 505
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4

    .line 514
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v2, v0

    .line 516
    if-eqz v2, :cond_1

    .line 518
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 520
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    return-object v0

    .line 524
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 526
    if-eqz v3, :cond_1

    .line 528
    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0

    .line 533
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    .line 539
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 540
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v2, v0

    .line 544
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v3, v0

    .line 548
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->nO()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 552
    :cond_0
    goto :goto_1

    .line 555
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 557
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->nO()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_2
    :goto_1
    goto :goto_0

    .line 564
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2

    .line 570
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v1, v0

    .line 572
    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v1}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 577
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 582
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v1, v0

    .line 584
    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {v1}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 589
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3

    .line 597
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v2, v0

    .line 599
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 601
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 604
    :cond_1
    invoke-virtual {v2, p2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->ᐝ([C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 3

    .line 610
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v2, v0

    .line 612
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 614
    const/4 v0, 0x1

    return v0

    .line 617
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 3

    .line 623
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v2, v0

    .line 625
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 627
    const/4 v0, 0x1

    return v0

    .line 630
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 14

    .line 791
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 793
    if-nez p1, :cond_0

    .line 795
    return-void

    .line 798
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 799
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 801
    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    .line 803
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    if-eq v3, v0, :cond_1

    .line 805
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wrong version of key store."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 810
    if-gtz v4, :cond_2

    .line 812
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid salt detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_2
    new-array v5, v4, [B

    .line 817
    invoke-virtual {v2, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 819
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 824
    new-instance v7, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v7, v0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 825
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v0, v0

    if-eqz v0, :cond_5

    .line 827
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˏ([C)[B

    move-result-object v8

    .line 829
    new-instance v9, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 830
    invoke-virtual {v9, v8, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˊ([B[BI)V

    .line 834
    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    .line 836
    invoke-virtual {v7}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ڎ(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v10

    goto :goto_0

    .line 840
    :cond_3
    invoke-virtual {v7}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v9, v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ڎ(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v10

    .line 843
    :goto_0
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 845
    invoke-virtual {v7, v10}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 846
    new-instance v11, Lorg/spongycastle/crypto/io/MacInputStream;

    invoke-direct {v11, v2, v7}, Lorg/spongycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Mac;)V

    .line 848
    invoke-virtual {p0, v11}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ｰ(Ljava/io/InputStream;)V

    .line 851
    invoke-virtual {v7}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v12, v0, [B

    .line 852
    const/4 v0, 0x0

    invoke-virtual {v7, v12, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 856
    invoke-virtual {v7}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v13, v0, [B

    .line 857
    invoke-virtual {v2, v13}, Ljava/io/DataInputStream;->readFully([B)V

    .line 859
    invoke-static {v12, v13}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 861
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 862
    new-instance v0, Ljava/io/IOException;

    const-string v1, "KeyStore integrity check failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_4
    goto :goto_1

    .line 867
    :cond_5
    invoke-virtual {p0, v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ｰ(Ljava/io/InputStream;)V

    .line 871
    invoke-virtual {v7}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v8, v0, [B

    .line 872
    invoke-virtual {v2, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 874
    :goto_1
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 4

    .line 638
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v3, v0

    .line 640
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 642
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key store already has a key entry with alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v1, p0, p1, p2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 8

    .line 664
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 666
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    goto :goto_0

    .line 673
    :catch_0
    move-exception v7

    .line 675
    new-instance v0, Ljava/security/KeyStoreException;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :goto_0
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2

    .line 654
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    return-void
.end method

.method public engineSize()I
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 10

    .line 880
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 881
    const/16 v0, 0x14

    new-array v3, v0, [B

    .line 882
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v4, v0, 0x400

    .line 884
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 886
    iget v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 887
    array-length v0, v3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 888
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 889
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 891
    new-instance v5, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v5, v0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 892
    new-instance v6, Lorg/spongycastle/crypto/io/MacOutputStream;

    invoke-direct {v6, v5}, Lorg/spongycastle/crypto/io/MacOutputStream;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 893
    new-instance v7, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v7, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 894
    invoke-static {p2}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˏ([C)[B

    move-result-object v8

    .line 896
    invoke-virtual {v7, v8, v3, v4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˊ([B[BI)V

    .line 898
    iget v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 900
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ڎ(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ڎ(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 907
    :goto_0
    const/4 v9, 0x0

    :goto_1
    array-length v0, v8

    if-eq v9, v0, :cond_1

    .line 909
    const/4 v0, 0x0

    aput-byte v0, v8, v9

    .line 907
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 912
    :cond_1
    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    invoke-direct {v0, v2, v6}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ͺ(Ljava/io/OutputStream;)V

    .line 914
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v9, v0, [B

    .line 916
    const/4 v0, 0x0

    invoke-virtual {v5, v9, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 918
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 920
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 921
    return-void
.end method

.method protected ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .locals 7

    .line 464
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v3, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 465
    const-string v0, "SC"

    invoke-static {p1, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 466
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v5, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 468
    const-string v0, "SC"

    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 470
    invoke-virtual {v4, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v6, p2, v0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    return-object v6

    .line 474
    :catch_0
    move-exception v3

    .line 476
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error initialising store of key store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ͺ(Ljava/io/OutputStream;)V
    .locals 7

    .line 738
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 739
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 741
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v4, v0

    .line 745
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 746
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->nO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 749
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 750
    if-nez v5, :cond_0

    .line 752
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    .line 756
    :cond_0
    array-length v0, v5

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 757
    const/4 v6, 0x0

    :goto_1
    array-length v0, v5

    if-eq v6, v0, :cond_1

    .line 759
    aget-object v0, v5, v6

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 757
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 763
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 766
    :pswitch_0
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 767
    goto :goto_4

    .line 769
    :pswitch_1
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 770
    goto :goto_4

    .line 773
    :pswitch_2
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v6, v0

    .line 775
    array-length v0, v6

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 776
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 777
    goto :goto_4

    .line 779
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown object type in store."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :goto_4
    goto/16 :goto_0

    .line 783
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 784
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected ｰ(Ljava/io/InputStream;)V
    .locals 17

    .line 688
    new-instance v8, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 689
    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 691
    :goto_0
    if-lez v9, :cond_1

    .line 693
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 694
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 695
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 696
    const/4 v13, 0x0

    .line 698
    if-eqz v12, :cond_0

    .line 700
    new-array v13, v12, [Ljava/security/cert/Certificate;

    .line 702
    const/4 v14, 0x0

    :goto_1
    if-eq v14, v12, :cond_0

    .line 704
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    aput-object v0, v13, v14

    .line 702
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 708
    :cond_0
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_2

    .line 711
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v14

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v11

    const/4 v5, 0x1

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    goto :goto_3

    .line 716
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˋ(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v15

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v11

    const/4 v5, 0x2

    move-object v6, v15

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    goto :goto_3

    .line 721
    :pswitch_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 723
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ays:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v11

    move v5, v9

    move-object/from16 v6, v16

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    goto :goto_3

    .line 727
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown object type in store."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :goto_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 731
    goto/16 :goto_0

    .line 732
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
