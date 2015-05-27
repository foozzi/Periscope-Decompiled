.class Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
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

    .line 84
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 79
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 85
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    .line 89
    const-string v0, "2.5.29.19"

    :try_start_0
    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v4

    .line 91
    if-eqz v4, :cond_0

    .line 93
    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ᵤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    .line 98
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

    .line 103
    :goto_0
    const-string v0, "2.5.29.15"

    :try_start_1
    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v4

    .line 104
    if-eqz v4, :cond_4

    .line 106
    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v5

    .line 108
    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 109
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERBitString;->ff()I

    move-result v1

    sub-int v6, v0, v1

    .line 111
    const/16 v0, 0x9

    if-ge v6, v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYp:[Z

    .line 113
    const/4 v7, 0x0

    :goto_2
    if-eq v7, v6, :cond_3

    .line 115
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYp:[Z

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

    .line 113
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 117
    :cond_3
    goto :goto_4

    .line 120
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYp:[Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_4
    goto :goto_5

    .line 123
    :catch_1
    move-exception v4

    .line 125
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

    .line 127
    :goto_5
    return-void
.end method

.method private nL()I
    .locals 4

    .line 623
    const/4 v1, 0x0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getEncoded()[B

    move-result-object v2

    .line 625
    const/4 v3, 0x1

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 627
    aget-byte v0, v2, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 625
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    :cond_0
    return v1

    .line 631
    :catch_0
    move-exception v1

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method private ˊ(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;->hX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 797
    invoke-static {p2, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->ˊ(Ljava/security/Signature;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 799
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 801
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getTBSCertificate()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    .line 803
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSignature()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "certificate does not verify with supplied key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_1
    return-void
.end method

.method private ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Z
    .locals 2

    .line 811
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    const/4 v0, 0x0

    return v0

    .line 816
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 818
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 820
    const/4 v0, 0x0

    return v0

    .line 823
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 826
    :cond_2
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 828
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 830
    const/4 v0, 0x0

    return v0

    .line 833
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 836
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

    .line 842
    if-nez p0, :cond_0

    .line 844
    const/4 v0, 0x0

    return-object v0

    .line 848
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 849
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v4

    .line 850
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 853
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 854
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 860
    :pswitch_0
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getEncoded()[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    goto/16 :goto_3

    .line 863
    :pswitch_1
    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->awn:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x500/X500Name;->ˊ(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    goto :goto_3

    .line 868
    :pswitch_2
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    goto :goto_3

    .line 871
    :pswitch_3
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    goto :goto_3

    .line 874
    :pswitch_4
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DEROctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 878
    :try_start_1
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 883
    goto :goto_1

    .line 880
    :catch_0
    move-exception v9

    .line 882
    goto/16 :goto_0

    .line 884
    :goto_1
    :try_start_2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    goto :goto_3

    .line 887
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

    .line 890
    :goto_3
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 891
    goto/16 :goto_0

    .line 892
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 894
    const/4 v0, 0x0

    return-object v0

    .line 896
    :cond_2
    :try_start_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    return-object v0

    .line 898
    :catch_1
    move-exception v3

    .line 900
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

    .line 445
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_0

    .line 449
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v2

    .line 450
    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1

    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    .line 133
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4

    .line 139
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 141
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

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

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 146
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

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

    .line 148
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 583
    if-ne p1, p0, :cond_0

    .line 585
    const/4 v0, 0x1

    return v0

    .line 588
    :cond_0
    instance-of v0, p1, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    .line 590
    const/4 v0, 0x0

    return v0

    .line 593
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v1, v0

    .line 597
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getEncoded()[B

    move-result-object v2

    .line 598
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 600
    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 602
    :catch_0
    move-exception v2

    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public getBasicConstraints()I
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->gZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ha()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    const v0, 0x7fffffff

    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYo:Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ha()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 395
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 399
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7

    .line 416
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 418
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 419
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 421
    if-eqz v3, :cond_2

    .line 423
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v4

    .line 425
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v5, v0

    .line 428
    invoke-virtual {v3, v5}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 430
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_0
    goto :goto_0

    .line 436
    :cond_1
    return-object v2

    .line 440
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 572
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 574
    :catch_0
    move-exception v2

    .line 576
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 7

    .line 352
    const-string v0, "2.5.29.37"

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v2

    .line 354
    if-eqz v2, :cond_1

    .line 358
    :try_start_0
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 359
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 362
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v6, v0, :cond_0

    .line 364
    invoke-virtual {v4, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 369
    :catch_0
    move-exception v3

    .line 371
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "error processing extended key usage extension"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6

    .line 461
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 463
    if-eqz v3, :cond_0

    .line 465
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v4

    .line 467
    if-eqz v4, :cond_0

    .line 471
    :try_start_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 473
    :catch_0
    move-exception v5

    .line 475
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

    .line 480
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 1

    .line 411
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ᔊ([B)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 3

    .line 164
    :try_start_0
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

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

    .line 166
    :catch_0
    move-exception v2

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 7

    .line 306
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->ia()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    .line 308
    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 311
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->ff()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v5, v0, [Z

    .line 313
    const/4 v6, 0x0

    :goto_0
    array-length v0, v5

    if-eq v6, v0, :cond_1

    .line 315
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

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 318
    :cond_1
    return-object v5

    .line 321
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .line 176
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    new-instance v3, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 181
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 183
    :catch_0
    move-exception v2

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYp:[Z

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7

    .line 485
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 487
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 488
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 490
    if-eqz v3, :cond_2

    .line 492
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v4

    .line 494
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v5, v0

    .line 497
    invoke-virtual {v3, v5}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 499
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    goto :goto_0

    .line 505
    :cond_1
    return-object v2

    .line 509
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hh()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hg()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    .line 559
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ʼ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 561
    :catch_0
    move-exception v1

    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->gU()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 7

    .line 245
    const-string v0, "SC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    .line 247
    if-eqz v3, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    if-eqz v4, :cond_0

    .line 253
    return-object v4

    .line 257
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    .line 262
    const/4 v5, 0x0

    :goto_0
    array-length v0, v4

    if-eq v5, v0, :cond_2

    .line 264
    aget-object v0, v4, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Signature."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    if-eqz v6, :cond_1

    .line 267
    return-object v6

    .line 262
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

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

    .line 287
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

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

    .line 293
    :catch_0
    move-exception v2

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hl()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 1

    .line 405
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ᴷ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ᔊ([B)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 2

    .line 191
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

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

    .line 326
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->ib()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_2

    .line 330
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 331
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->ff()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v5, v0, [Z

    .line 333
    const/4 v6, 0x0

    :goto_0
    array-length v0, v5

    if-eq v6, v0, :cond_1

    .line 335
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

    .line 333
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 338
    :cond_1
    return-object v5

    .line 341
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .line 198
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    new-instance v3, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hi()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 203
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 205
    :catch_0
    move-exception v2

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTBSCertificate()[B
    .locals 3

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 228
    :catch_0
    move-exception v2

    .line 230
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->he()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 7

    .line 514
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 516
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 518
    if-eqz v2, :cond_3

    .line 520
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v3

    .line 522
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v4, v0

    .line 525
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 527
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

    .line 539
    goto/16 :goto_0

    .line 542
    :cond_1
    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 544
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    const/4 v0, 0x1

    return v0

    .line 548
    :cond_2
    goto/16 :goto_0

    .line 552
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    .line 610
    :try_start_0
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYq:Z

    if-nez v0, :cond_0

    .line 612
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->nL()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYh:I

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYq:Z

    .line 616
    :cond_0
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYh:I
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

    .line 652
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 657
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 658
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 660
    const-string v0, "  [0]         Version: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    const-string v0, "         SerialNumber: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    const-string v0, "             IssuerDN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    const-string v0, "           Start Date: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    const-string v0, "           Final Date: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    const-string v0, "            SubjectDN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    const-string v0, "           Public Key: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    const-string v0, "  Signature Algorithm: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSignature()[B

    move-result-object v6

    .line 671
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

    .line 672
    const/16 v7, 0x14

    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    .line 674
    array-length v0, v6

    add-int/lit8 v0, v0, -0x14

    if-ge v7, v0, :cond_0

    .line 676
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

    .line 680
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

    .line 672
    :goto_1
    add-int/lit8 v7, v7, 0x14

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v7

    .line 686
    if-eqz v7, :cond_9

    .line 688
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v8

    .line 690
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    const-string v0, "       Extensions: \n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 697
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v9, v0

    .line 698
    invoke-virtual {v7, v9}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v10

    .line 700
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 702
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v11

    .line 703
    new-instance v12, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v12, v11}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 704
    const-string v0, "                       critical("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ᵤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 711
    :cond_3
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 713
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/KeyUsage;->ʶ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 715
    :cond_4
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->anJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 717
    new-instance v0, Lorg/spongycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/misc/NetscapeCertType;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 719
    :cond_5
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->anL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 721
    new-instance v0, Lorg/spongycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lorg/spongycastle/asn1/DERIA5String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 723
    :cond_6
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->anS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 725
    new-instance v0, Lorg/spongycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/misc/VerisignCzagExtension;-><init>(Lorg/spongycastle/asn1/DERIA5String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 729
    :cond_7
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
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

    .line 739
    :goto_3
    goto :goto_4

    .line 734
    :catch_0
    move-exception v13

    .line 736
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    const-string v0, " value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    :goto_4
    goto :goto_5

    .line 743
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    :goto_5
    goto/16 :goto_2

    .line 748
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .locals 4

    .line 757
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 761
    const-string v0, "SC"

    :try_start_0
    invoke-static {v2, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 766
    goto :goto_0

    .line 763
    :catch_0
    move-exception v3

    .line 765
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 768
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ˊ(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 769
    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3

    .line 777
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aYn:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 780
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->ˊ(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 781
    return-void
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 642
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
