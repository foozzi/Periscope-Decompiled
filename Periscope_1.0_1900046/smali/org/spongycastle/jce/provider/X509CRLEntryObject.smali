.class public Lorg/spongycastle/jce/provider/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source ""


# instance fields
.field private aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

.field private aYg:Lorg/spongycastle/asn1/x500/X500Name;

.field private aYh:I

.field private aYi:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;ZLorg/spongycastle/asn1/x500/X500Name;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 71
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->ˊ(ZLorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYg:Lorg/spongycastle/asn1/x500/X500Name;

    .line 72
    return-void
.end method

.method private ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, p1}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˊ(ZLorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 5

    .line 87
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v2

    .line 93
    if-nez v2, :cond_1

    .line 95
    return-object p2

    .line 100
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Extension;->hz()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 101
    const/4 v4, 0x0

    :goto_0
    array-length v0, v3

    if-ge v4, v0, :cond_3

    .line 103
    aget-object v0, v3, v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 105
    aget-object v0, v3, v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 101
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 110
    :catch_0
    move-exception v3

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method private ﺑ(Z)Ljava/util/Set;
    .locals 6

    .line 134
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_2

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 139
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v3

    .line 141
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v4, v0

    .line 144
    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v5

    .line 146
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 148
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    return-object v2

    .line 155
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 216
    if-ne p1, p0, :cond_0

    .line 218
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jce/provider/X509CRLEntryObject;

    if-eqz v0, :cond_1

    .line 223
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;

    move-object v2, v0

    .line 225
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object v1, v2, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 228
    :cond_1
    invoke-super {p0, p0}, Ljava/security/cert/X509CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYg:Lorg/spongycastle/asn1/x500/X500Name;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYg:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :catch_0
    move-exception v2

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->ﺑ(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 236
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 238
    :catch_0
    move-exception v2

    .line 240
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 5

    .line 182
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 190
    :catch_0
    move-exception v4

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->ﺑ(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->hZ()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->hY()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYi:Z

    if-nez v0, :cond_0

    .line 207
    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYh:I

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYi:Z

    .line 211
    :cond_0
    iget v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYh:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 261
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string v0, "      userCertificate: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v0, "       revocationDate: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v0, "       certificateIssuer: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;->aYf:Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v4

    .line 270
    if-eqz v4, :cond_3

    .line 272
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v5

    .line 273
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    const-string v0, "   crlEntryExtensions:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v6, v0

    .line 280
    invoke-virtual {v4, v6}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v7

    .line 281
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v8

    .line 284
    new-instance v9, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v9, v8}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 285
    const-string v0, "                       critical("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extension;->ayP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->ᵛ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLReason;->Ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 292
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extension;->ayU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "Certificate issuer: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const-string v0, " value = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/util/ASN1Dump;->ᑉ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_1
    goto :goto_2

    .line 302
    :catch_0
    move-exception v10

    .line 304
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    const-string v0, " value = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :goto_2
    goto :goto_3

    .line 310
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :goto_3
    goto/16 :goto_0

    .line 316
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
