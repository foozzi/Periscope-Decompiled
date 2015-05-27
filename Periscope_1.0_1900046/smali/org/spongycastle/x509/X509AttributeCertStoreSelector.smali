.class public Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private bkE:Lorg/spongycastle/x509/AttributeCertificateHolder;

.field private bkF:Lorg/spongycastle/x509/AttributeCertificateIssuer;

.field private bkG:Ljava/math/BigInteger;

.field private bkH:Ljava/util/Date;

.field private bkI:Lorg/spongycastle/x509/X509AttributeCertificate;

.field private bkJ:Ljava/util/Collection;

.field private bkK:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkJ:Ljava/util/Collection;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkK:Ljava/util/Collection;

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 200
    new-instance v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 201
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkI:Lorg/spongycastle/x509/X509AttributeCertificate;

    iput-object v0, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkI:Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 202
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tu()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkH:Ljava/util/Date;

    .line 203
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkE:Lorg/spongycastle/x509/AttributeCertificateHolder;

    iput-object v0, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkE:Lorg/spongycastle/x509/AttributeCertificateHolder;

    .line 204
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkF:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    iput-object v0, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkF:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    .line 205
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkG:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkG:Ljava/math/BigInteger;

    .line 206
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tx()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkK:Ljava/util/Collection;

    .line 207
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->tw()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, v1, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkJ:Ljava/util/Collection;

    .line 208
    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkG:Ljava/math/BigInteger;

    return-object v0
.end method

.method public tt()Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkI:Lorg/spongycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public tu()Ljava/util/Date;
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkH:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkH:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public tv()Lorg/spongycastle/x509/AttributeCertificateHolder;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkE:Lorg/spongycastle/x509/AttributeCertificateHolder;

    return-object v0
.end method

.method public tw()Ljava/util/Collection;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkJ:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public tx()Ljava/util/Collection;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkK:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public ɨ(Ljava/lang/Object;)Z
    .locals 11

    .line 66
    instance-of v0, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    move-object v2, v0

    .line 73
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkI:Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkI:Lorg/spongycastle/x509/X509AttributeCertificate;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkG:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkG:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkE:Lorg/spongycastle/x509/AttributeCertificateHolder;

    if-eqz v0, :cond_3

    .line 89
    invoke-interface {v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkE:Lorg/spongycastle/x509/AttributeCertificateHolder;

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkF:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    if-eqz v0, :cond_4

    .line 96
    invoke-interface {v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkF:Lorg/spongycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkH:Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkH:Ljava/util/Date;

    invoke-interface {v2, v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    goto :goto_0

    .line 108
    :catch_0
    move-exception v3

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :catch_1
    move-exception v3

    .line 114
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkJ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkK:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 120
    :cond_6
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 122
    if-eqz v3, :cond_e

    .line 127
    :try_start_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-static {v3}, Lorg/spongycastle/asn1/DEROctetString;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DEROctetString;->eM()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TargetInformation;->า(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 140
    goto :goto_1

    .line 133
    :catch_2
    move-exception v5

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    :catch_3
    move-exception v5

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :goto_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/TargetInformation;->if()[Lorg/spongycastle/asn1/x509/Targets;

    move-result-object v5

    .line 142
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkJ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 144
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    :goto_2
    array-length v0, v5

    if-ge v7, v0, :cond_9

    .line 148
    aget-object v8, v5, v7

    .line 149
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/Targets;->ig()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v9

    .line 150
    const/4 v10, 0x0

    :goto_3
    array-length v0, v9

    if-ge v10, v0, :cond_8

    .line 152
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkJ:Ljava/util/Collection;

    aget-object v1, v9, v10

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Target;->ie()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    const/4 v6, 0x1

    .line 156
    goto :goto_4

    .line 150
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 146
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 160
    :cond_9
    if-nez v6, :cond_a

    .line 162
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkK:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 167
    const/4 v6, 0x0

    .line 169
    const/4 v7, 0x0

    :goto_5
    array-length v0, v5

    if-ge v7, v0, :cond_d

    .line 171
    aget-object v8, v5, v7

    .line 172
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/Targets;->ig()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v9

    .line 173
    const/4 v10, 0x0

    :goto_6
    array-length v0, v9

    if-ge v10, v0, :cond_c

    .line 175
    iget-object v0, p0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->bkK:Ljava/util/Collection;

    aget-object v1, v9, v10

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Target;->ic()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 178
    const/4 v6, 0x1

    .line 179
    goto :goto_7

    .line 173
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 169
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 183
    :cond_d
    if-nez v6, :cond_e

    .line 185
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_e
    const/4 v0, 0x1

    return v0
.end method
