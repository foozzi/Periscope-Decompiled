.class public Lorg/spongycastle/asn1/x509/RoleSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAw:Lorg/spongycastle/asn1/x509/GeneralNames;

.field private aAx:Lorg/spongycastle/asn1/x509/GeneralName;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 207
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 208
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAw:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAw:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 212
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAx:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 214
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public hS()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAx:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    move-object v1, v0

    .line 162
    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hT()[Ljava/lang/String;
    .locals 5

    .line 172
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAw:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAw:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 178
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 179
    const/4 v3, 0x0

    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_2

    .line 181
    aget-object v0, v1, v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 182
    instance-of v0, v4, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v0, :cond_1

    .line 184
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 179
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_2
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 219
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/RoleSyntax;->hS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Auth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAw:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RoleSyntax;->aAw:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const-string v0, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/RoleSyntax;->hT()[Ljava/lang/String;

    move-result-object v3

    .line 228
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const/4 v4, 0x1

    :goto_0
    array-length v0, v3

    if-ge v4, v0, :cond_2

    .line 231
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
