.class public Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source ""


# static fields
.field static final aYd:Ljava/util/List;


# instance fields
.field private aYe:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-string v0, "PkiPath"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "PEM"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "PKCS7"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYd:Ljava/util/List;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9

    .line 170
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v0, "PkiPath"

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 177
    instance-of v0, v4, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v5

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    .line 183
    const-string v0, "X.509"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 184
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    move-object v7, v0

    .line 187
    invoke-interface {v7}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    .line 188
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 190
    goto :goto_0

    .line 191
    :cond_1
    goto :goto_2

    .line 192
    :cond_2
    const-string v0, "PKCS7"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PEM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    .line 196
    const-string v0, "X.509"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 198
    :goto_1
    invoke-virtual {v3, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 200
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_4
    goto :goto_2

    .line 205
    :cond_5
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :goto_2
    goto :goto_3

    .line 208
    :catch_0
    move-exception v3

    .line 210
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException throw while decoding CertPath:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :catch_1
    move-exception v3

    .line 214
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->ˑ(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    .line 218
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 156
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->ˑ(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    .line 158
    return-void
.end method

.method private ʼ(Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 4

    .line 365
    :try_start_0
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 367
    :catch_0
    move-exception v3

    .line 369
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˏ(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 352
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 354
    :catch_0
    move-exception v3

    .line 356
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while encoding certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˑ(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 69
    return-object p1

    .line 72
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 73
    const/4 v3, 0x1

    .line 75
    const/4 v4, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_2

    .line 77
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 79
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    goto :goto_1

    .line 85
    :cond_1
    const/4 v3, 0x0

    .line 86
    goto :goto_2

    .line 75
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 92
    return-object p1

    .line 96
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    const/4 v6, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 101
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v7, v0

    .line 102
    const/4 v8, 0x0

    .line 104
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    .line 106
    const/4 v10, 0x0

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v10, v0, :cond_5

    .line 108
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v11, v0

    .line 109
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const/4 v8, 0x1

    .line 112
    goto :goto_5

    .line 106
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 116
    :cond_5
    :goto_5
    if-nez v8, :cond_6

    .line 118
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 124
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    .line 126
    return-object v5

    .line 129
    :cond_8
    const/4 v6, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eq v6, v0, :cond_b

    .line 131
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 133
    const/4 v7, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 135
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0

    .line 136
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    goto :goto_8

    .line 133
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 129
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 146
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 148
    return-object v5

    .line 151
    :cond_c
    return-object v4
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 2

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 243
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 247
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 249
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 10

    .line 268
    const-string v0, "PkiPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v7, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 272
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 273
    :goto_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->ˏ(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 278
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->ʼ(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    const-string v0, "PKCS7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    new-instance v7, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aeB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 284
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 285
    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v9, v0, :cond_2

    .line 287
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->ˏ(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 285
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 290
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/pkcs/SignedData;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    move-object v3, v7

    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v4, v8}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    new-instance v6, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v6}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/asn1/pkcs/SignedData;-><init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V

    move-object v9, v0

    .line 298
    new-instance v0, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aeC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->ʼ(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0

    .line 301
    :cond_3
    const-string v0, "PEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 304
    new-instance v8, Lorg/spongycastle/util/io/pem/PemWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v0}, Lorg/spongycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    .line 308
    const/4 v9, 0x0

    :goto_2
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v9, v0, :cond_4

    .line 310
    new-instance v0, Lorg/spongycastle/util/io/pem/PemObject;

    const-string v1, "CERTIFICATE"

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYe:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v8, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->ˊ(Lorg/spongycastle/util/io/pem/PemObjectGenerator;)V

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 313
    :cond_4
    invoke-virtual {v8}, Lorg/spongycastle/util/io/pem/PemWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_3

    .line 315
    :catch_0
    move-exception v9

    .line 317
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "can\'t encode certificate for PEM encoded path"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :goto_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 324
    :cond_5
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1

    .line 230
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->aYd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
