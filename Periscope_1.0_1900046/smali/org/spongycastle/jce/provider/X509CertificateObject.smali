.class public Lorg/spongycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source ""

# interfaces
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private aYh:I

.field private aYn:Lorg/spongycastle/asn1/x509/Certificate;

.field private aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

.field private aYp:[Z

.field private aYq:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 8

    .line 82
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 77
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 83
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    .line 87
    const-string v0, "2.5.29.19"

    :try_start_0
    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v4

    .line 89
    if-eqz v4, :cond_0

    .line 91
    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ᵤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v4

    .line 96
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot construct BasicConstraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :goto_0
    const-string v0, "2.5.29.15"

    :try_start_1
    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v4

    .line 102
    if-eqz v4, :cond_4

    .line 104
    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v5

    .line 106
    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 107
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERBitString;->ff()I

    move-result v1

    sub-int v6, v0, v1

    .line 109
    const/16 v0, 0x9

    if-ge v6, v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYp:[Z

    .line 111
    const/4 v7, 0x0

    :goto_2
    if-eq v7, v6, :cond_3

    .line 113
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYp:[Z

    div-int/lit8 v1, v7, 0x8

    aget-byte v1, v4, v1

    rem-int/lit8 v2, v7, 0x8

    const/16 v3, 0x80

    ushr-int v2, v3, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    aput-boolean v1, v0, v7

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 115
    :cond_3
    goto :goto_4

    .line 118
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYp:[Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :goto_4
    goto :goto_5

    .line 121
    :catch_1
    move-exception v4

    .line 123
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot construct KeyUsage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :goto_5
    return-void
.end method

.method private nL()I
    .locals 4

    .line 621
    const/4 v1, 0x0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v2

    .line 623
    const/4 v3, 0x1

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 625
    aget-byte v0, v2, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 623
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    :cond_0
    return v1

    .line 629
    :catch_0
    move-exception v1

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method private ˊ(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 3

    .line 787
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;->hX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 795
    invoke-static {p2, v2}, Lorg/spongycastle/jce/provider/X509SignatureUtil;->ˊ(Ljava/security/Signature;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 797
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 799
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    .line 801
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "certificate does not verify with supplied key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_1
    return-void
.end method

.method private ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Z
    .locals 2

    .line 809
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    const/4 v0, 0x0

    return v0

    .line 814
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 816
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    const/4 v0, 0x0

    return v0

    .line 821
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 824
    :cond_2
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 826
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 828
    const/4 v0, 0x0

    return v0

    .line 831
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 834
    :cond_4
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static ᔊ([B)Ljava/util/Collection;
    .locals 10

    .line 840
    if-nez p0, :cond_0

    .line 842
    const/4 v0, 0x0

    return-object v0

    .line 846
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v4

    .line 848
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 852
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 858
    :pswitch_0
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getEncoded()[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    goto/16 :goto_3

    .line 861
    :pswitch_1
    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->awn:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x500/X500Name;->ˊ(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    goto :goto_3

    .line 866
    :pswitch_2
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    goto :goto_3

    .line 869
    :pswitch_3
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    goto :goto_3

    .line 872
    :pswitch_4
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DEROctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 876
    :try_start_1
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 881
    goto :goto_1

    .line 878
    :catch_0
    move-exception v9

    .line 880
    goto/16 :goto_0

    .line 882
    :goto_1
    :try_start_2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    goto :goto_3

    .line 885
    :goto_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :goto_3
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 889
    goto/16 :goto_0

    .line 890
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 892
    const/4 v0, 0x0

    return-object v0

    .line 894
    :cond_2
    :try_start_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    return-object v0

    .line 896
    :catch_1
    move-exception v3

    .line 898
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private ᴷ(Ljava/lang/String;)[B
    .locals 3

    .line 443
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 445
    if-eqz v1, :cond_0

    .line 447
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_0

    .line 450
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1

    .line 130
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    .line 131
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4

    .line 137
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 139
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hh()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Time;->eB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 144
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hg()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Time;->eB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 581
    if-ne p1, p0, :cond_0

    .line 583
    const/4 v0, 0x1

    return v0

    .line 586
    :cond_0
    instance-of v0, p1, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    .line 588
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v1, v0

    .line 595
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v2

    .line 596
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 598
    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 600
    :catch_0
    move-exception v2

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public getBasicConstraints()I
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->gZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ha()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    const v0, 0x7fffffff

    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ha()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 393
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 397
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7

    .line 414
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 416
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 417
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 419
    if-eqz v3, :cond_2

    .line 421
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v4

    .line 423
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v5, v0

    .line 426
    invoke-virtual {v3, v5}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 428
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    goto :goto_0

    .line 434
    :cond_1
    return-object v2

    .line 438
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 570
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 572
    :catch_0
    move-exception v2

    .line 574
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 7

    .line 350
    const-string v0, "2.5.29.37"

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v2

    .line 352
    if-eqz v2, :cond_1

    .line 356
    :try_start_0
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 357
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 358
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 360
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v6, v0, :cond_0

    .line 362
    invoke-virtual {v4, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 367
    :catch_0
    move-exception v3

    .line 369
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "error processing extended key usage extension"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6

    .line 459
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 461
    if-eqz v3, :cond_0

    .line 463
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v4

    .line 465
    if-eqz v4, :cond_0

    .line 469
    :try_start_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 471
    :catch_0
    move-exception v5

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 1

    .line 409
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ᔊ([B)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 3

    .line 162
    :try_start_0
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Certificate;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/X509Principal;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v2

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 7

    .line 304
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->ia()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    .line 306
    if-eqz v3, :cond_2

    .line 308
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 309
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->ff()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v5, v0, [Z

    .line 311
    const/4 v6, 0x0

    :goto_0
    array-length v0, v5

    if-eq v6, v0, :cond_1

    .line 313
    div-int/lit8 v0, v6, 0x8

    aget-byte v0, v4, v0

    rem-int/lit8 v1, v6, 0x8

    const/16 v2, 0x80

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    aput-boolean v0, v5, v6

    .line 311
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 316
    :cond_1
    return-object v5

    .line 319
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .line 174
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    new-instance v3, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 179
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v2

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYp:[Z

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7

    .line 483
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 485
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 486
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 488
    if-eqz v3, :cond_2

    .line 490
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v4

    .line 492
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v5, v0

    .line 495
    invoke-virtual {v3, v5}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 497
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_0
    goto :goto_0

    .line 503
    :cond_1
    return-object v2

    .line 507
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hh()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hg()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    .line 557
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ʼ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 559
    :catch_0
    move-exception v1

    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->gU()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 7

    .line 243
    const-string v0, "SC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    if-eqz v4, :cond_0

    .line 251
    return-object v4

    .line 255
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    .line 260
    const/4 v5, 0x0

    :goto_0
    array-length v0, v4

    if-eq v5, v0, :cond_2

    .line 262
    aget-object v0, v4, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Signature."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    if-eqz v6, :cond_1

    .line 265
    return-object v6

    .line 260
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 3

    .line 285
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 291
    :catch_0
    move-exception v2

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hl()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 1

    .line 403
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ᔊ([B)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 2

    .line 189
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Certificate;->hi()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/X509Principal;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 7

    .line 324
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->ib()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_2

    .line 328
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 329
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->ff()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v5, v0, [Z

    .line 331
    const/4 v6, 0x0

    :goto_0
    array-length v0, v5

    if-eq v6, v0, :cond_1

    .line 333
    div-int/lit8 v0, v6, 0x8

    aget-byte v0, v4, v0

    rem-int/lit8 v1, v6, 0x8

    const/16 v2, 0x80

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    aput-boolean v0, v5, v6

    .line 331
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 336
    :cond_1
    return-object v5

    .line 339
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .line 196
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 197
    new-instance v3, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 199
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hi()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 201
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    move-exception v2

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTBSCertificate()[B
    .locals 3

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 226
    :catch_0
    move-exception v2

    .line 228
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->he()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 7

    .line 512
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 514
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_3

    .line 518
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v3

    .line 520
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v4, v0

    .line 523
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 525
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baZ:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbd:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbi:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbf:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbg:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baY:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bba:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbb:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    goto/16 :goto_0

    .line 540
    :cond_1
    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 542
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    const/4 v0, 0x1

    return v0

    .line 546
    :cond_2
    goto/16 :goto_0

    .line 550
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    .line 608
    :try_start_0
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYq:Z

    if-nez v0, :cond_0

    .line 610
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->nL()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYh:I

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYq:Z

    .line 614
    :cond_0
    iget v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 655
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 656
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 658
    const-string v0, "  [0]         Version: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    const-string v0, "         SerialNumber: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    const-string v0, "             IssuerDN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    const-string v0, "           Start Date: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    const-string v0, "           Final Date: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    const-string v0, "            SubjectDN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    const-string v0, "           Public Key: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    const-string v0, "  Signature Algorithm: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v6

    .line 669
    const-string v0, "            Signature: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v6, v2, v3}, Lorg/spongycastle/util/encoders/Hex;->ᑊ([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    const/16 v7, 0x14

    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    .line 672
    array-length v0, v6

    add-int/lit8 v0, v0, -0x14

    if-ge v7, v0, :cond_0

    .line 674
    const-string v0, "                       "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v6, v7, v2}, Lorg/spongycastle/util/encoders/Hex;->ᑊ([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 678
    :cond_0
    const-string v0, "                       "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    array-length v2, v6

    sub-int/2addr v2, v7

    invoke-static {v6, v7, v2}, Lorg/spongycastle/util/encoders/Hex;->ᑊ([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    :goto_1
    add-int/lit8 v7, v7, 0x14

    goto :goto_0

    .line 682
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v7

    .line 684
    if-eqz v7, :cond_9

    .line 686
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v8

    .line 688
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    const-string v0, "       Extensions: \n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 695
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v9, v0

    .line 696
    invoke-virtual {v7, v9}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v10

    .line 698
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 700
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v11

    .line 701
    new-instance v12, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v12, v11}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 702
    const-string v0, "                       critical("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ᵤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 709
    :cond_3
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 711
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/KeyUsage;->ʶ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 713
    :cond_4
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->anJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 715
    new-instance v0, Lorg/spongycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/misc/NetscapeCertType;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 717
    :cond_5
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->anL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 719
    new-instance v0, Lorg/spongycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lorg/spongycastle/asn1/DERIA5String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 721
    :cond_6
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->anS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 723
    new-instance v0, Lorg/spongycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/misc/VerisignCzagExtension;-><init>(Lorg/spongycastle/asn1/DERIA5String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 727
    :cond_7
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    const-string v0, " value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/util/ASN1Dump;->ᑉ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_3
    goto :goto_4

    .line 732
    :catch_0
    move-exception v13

    .line 734
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    const-string v0, " value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    :goto_4
    goto :goto_5

    .line 741
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    :goto_5
    goto/16 :goto_2

    .line 746
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .locals 4

    .line 755
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/X509SignatureUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 759
    const-string v0, "SC"

    :try_start_0
    invoke-static {v2, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 764
    goto :goto_0

    .line 761
    :catch_0
    move-exception v3

    .line 763
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 766
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ˊ(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 767
    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3

    .line 775
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/X509SignatureUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 778
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/jce/provider/X509CertificateObject;->ˊ(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 779
    return-void
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 640
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 645
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
